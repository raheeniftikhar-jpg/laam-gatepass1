alter table gatepass_reports
add column if not exists verified boolean default false,
add column if not exists verified_at text,
add column if not exists verified_by text;

drop policy if exists "allow update gatepass reports" on gatepass_reports;
create policy "allow update gatepass reports"
on gatepass_reports for update
using (true)
with check (true);

drop policy if exists "allow delete gatepass reports" on gatepass_reports;
create policy "allow delete gatepass reports"
on gatepass_reports for delete
using (true);

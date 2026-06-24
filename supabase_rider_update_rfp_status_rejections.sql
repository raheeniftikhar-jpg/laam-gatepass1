alter table gatepass_reports
add column if not exists rfp_id text,
add column if not exists status text default 'pending',
add column if not exists rejected_at text,
add column if not exists rejected_by text,
add column if not exists rejection_reason text,
add column if not exists original_gatepass_no text,
add column if not exists edited_version boolean default false,
add column if not exists vendor_poc_name text,
add column if not exists vendor_poc_number text,
add column if not exists verified boolean default false,
add column if not exists verified_at text,
add column if not exists verified_by text;

drop policy if exists "allow update gatepass reports" on gatepass_reports;
create policy "allow update gatepass reports" on gatepass_reports for update using (true) with check (true);

drop policy if exists "allow delete gatepass reports" on gatepass_reports;
create policy "allow delete gatepass reports" on gatepass_reports for delete using (true);

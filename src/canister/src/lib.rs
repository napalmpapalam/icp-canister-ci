#[ic_cdk::query]
fn greet(name: String) -> String {
    format!("Hello, {}!", name)
}

#[test]
fn generate_candid() {
    candid::export_service!();

    std::fs::write("../canister.did", __export_service()).expect("Unable to write did file");
}

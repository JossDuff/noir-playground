# noir-playground

Learning Aztec's Noir ZK programming langauge

# Nargo

`nargo check`

- compiles and generates `Prover.toml` where inputs are specified

`nargo execute`

- compiles & executes
- generates the witness that will be fed into proving backend `target/witness_name.gz`
- artifacts from compilation are in `target/hello_world.json`

# Barretenberg backend

Different backends have different tools for compiling & proof gen.  This is specific to Barretenberg.

`bb prove -b <artifact.json> -w <witness.json> -o <proof output location>`

To verify proof, need to compute verification key from compiled circuit and use it to verify:

`bb write_vk -b <witness.json> -o /target/vk`
`bb verify -k /target/vk -p /target/proof`

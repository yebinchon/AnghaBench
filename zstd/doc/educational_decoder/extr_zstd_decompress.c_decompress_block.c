
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int sequence_command_t ;
typedef int ostream_t ;
typedef int istream_t ;
typedef int frame_context_t ;


 size_t decode_literals (int * const,int * const,int **) ;
 size_t decode_sequences (int * const,int * const,int **) ;
 int execute_sequences (int * const,int * const,int *,size_t const,int *,size_t const) ;
 int free (int *) ;

__attribute__((used)) static void decompress_block(frame_context_t *const ctx, ostream_t *const out,
                             istream_t *const in) {







    u8 *literals = ((void*)0);
    const size_t literals_size = decode_literals(ctx, in, &literals);


    sequence_command_t *sequences = ((void*)0);
    const size_t num_sequences =
        decode_sequences(ctx, in, &sequences);


    execute_sequences(ctx, out, literals, literals_size, sequences,
                      num_sequences);
    free(literals);
    free(sequences);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ len; } ;
typedef TYPE_2__ ostream_t ;
typedef int istream_t ;
struct TYPE_9__ {scalar_t__ frame_content_size; } ;
struct TYPE_11__ {TYPE_1__ header; } ;
typedef TYPE_3__ frame_context_t ;
typedef int dictionary_t ;


 int OUT_SIZE () ;
 int decompress_data (TYPE_3__*,TYPE_2__* const,int * const) ;
 int free_frame_context (TYPE_3__*) ;
 int init_frame_context (TYPE_3__*,int * const,int const* const) ;

__attribute__((used)) static void decode_data_frame(ostream_t *const out, istream_t *const in,
                              const dictionary_t *const dict) {
    frame_context_t ctx;


    init_frame_context(&ctx, in, dict);

    if (ctx.header.frame_content_size != 0 &&
        ctx.header.frame_content_size > out->len) {
        OUT_SIZE();
    }

    decompress_data(&ctx, out, in);

    free_frame_context(&ctx);
}

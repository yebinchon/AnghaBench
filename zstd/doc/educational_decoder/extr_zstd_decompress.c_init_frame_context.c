
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int istream_t ;
struct TYPE_5__ {int* previous_offsets; int header; } ;
typedef TYPE_1__ frame_context_t ;
typedef int dictionary_t ;


 int frame_context_apply_dict (TYPE_1__* const,int const* const) ;
 int memset (TYPE_1__* const,int ,int) ;
 int parse_frame_header (int *,int * const) ;

__attribute__((used)) static void init_frame_context(frame_context_t *const context,
                               istream_t *const in,
                               const dictionary_t *const dict) {

    memset(context, 0, sizeof(frame_context_t));


    parse_frame_header(&context->header, in);


    context->previous_offsets[0] = 1;
    context->previous_offsets[1] = 4;
    context->previous_offsets[2] = 8;


    frame_context_apply_dict(context, dict);
}

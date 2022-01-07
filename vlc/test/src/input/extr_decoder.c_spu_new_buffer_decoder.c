
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int subpicture_updater_t ;
typedef int subpicture_t ;
typedef int decoder_t ;


 int * subpicture_New (int const*) ;

__attribute__((used)) static subpicture_t *spu_new_buffer_decoder(decoder_t *dec,
                                            const subpicture_updater_t * p_subpic)
{
    (void) dec;
    return subpicture_New (p_subpic);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int subpicture_t ;
typedef int decoder_t ;


 int subpicture_Delete (int *) ;

__attribute__((used)) static void queue_sub(decoder_t *dec, subpicture_t *p_subpic)
{
    (void) dec;
    subpicture_Delete(p_subpic);
}

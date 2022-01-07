
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int of_dtable; int ml_dtable; int ll_dtable; int literals_dtable; } ;
typedef TYPE_1__ frame_context_t ;


 int FSE_free_dtable (int *) ;
 int HUF_free_dtable (int *) ;
 int memset (TYPE_1__* const,int ,int) ;

__attribute__((used)) static void free_frame_context(frame_context_t *const context) {
    HUF_free_dtable(&context->literals_dtable);

    FSE_free_dtable(&context->ll_dtable);
    FSE_free_dtable(&context->ml_dtable);
    FSE_free_dtable(&context->of_dtable);

    memset(context, 0, sizeof(frame_context_t));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {struct TYPE_6__* Next; TYPE_1__* Prev; } ;
struct TYPE_5__ {int * Next; } ;
typedef TYPE_2__ SHIMGVW_FILENODE ;


 int free (TYPE_2__*) ;

__attribute__((used)) static VOID
pFreeFileList(SHIMGVW_FILENODE *root)
{
    SHIMGVW_FILENODE *conductor;

    root->Prev->Next = ((void*)0);
    root->Prev = ((void*)0);

    while (root)
    {
        conductor = root;
        root = conductor->Next;
        free(conductor);
    }
}

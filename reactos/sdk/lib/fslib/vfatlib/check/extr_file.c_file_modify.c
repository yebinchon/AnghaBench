
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; char* name; struct TYPE_6__* next; } ;
typedef TYPE_1__ FDSC ;


 unsigned char DELETED_FLAG ;
 int die (char*) ;


 TYPE_1__** file_find (TYPE_1__**,char*) ;
 char* file_name (unsigned char*) ;
 int free (TYPE_1__*) ;
 int printf (char*,char*) ;

void file_modify(FDSC ** curr, char *fixed)
{
    FDSC **this, *next;

    if (!(this = file_find(curr, fixed)))
 die("Internal error: file_find failed");
    switch ((*this)->type) {
    case 129:
 printf("Dropping %s\n", file_name((unsigned char *)fixed));
 *(unsigned char *)fixed = DELETED_FLAG;
 break;
    case 128:
 *fixed = *(*this)->name;
 printf("Undeleting %s\n", file_name((unsigned char *)fixed));
 break;
    default:
 die("Internal error: file_modify");
    }
    next = (*this)->next;
    free(*this);
    *this = next;
}

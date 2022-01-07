
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; scalar_t__ name; struct TYPE_4__* first; struct TYPE_4__* next; } ;
typedef TYPE_1__ FDSC ;


 scalar_t__ fdt_drop ;
 scalar_t__ fdt_none ;
 char* file_name (unsigned char*) ;
 int free (TYPE_1__*) ;
 int printf (char*,char*,char*) ;

__attribute__((used)) static void report_unused(FDSC * this)
{
    FDSC *next;

    while (this) {
 next = this->next;
 if (this->first)
     report_unused(this->first);
 else if (this->type != fdt_none)
     printf("Warning: did not %s file %s\n", this->type == fdt_drop ?
     "drop" : "undelete", file_name((unsigned char *)this->name));
 free(this);
 this = next;
    }
}

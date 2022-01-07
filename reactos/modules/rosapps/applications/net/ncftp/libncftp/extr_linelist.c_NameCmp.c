
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int relname; } ;
typedef TYPE_1__* FileInfoPtr ;


 int strcmp (int ,int ) ;
 int strcoll (int ,int ) ;

__attribute__((used)) static int
NameCmp(const void *a, const void *b)
{
 FileInfoPtr *fipa, *fipb;

 fipa = (FileInfoPtr *) a;
 fipb = (FileInfoPtr *) b;



 return (strcmp((**fipa).relname, (**fipb).relname));

}

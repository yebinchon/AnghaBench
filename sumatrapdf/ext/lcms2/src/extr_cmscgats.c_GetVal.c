
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int cmsUInt32Number ;
struct TYPE_4__ {int sy; int inum; char* DoubleFormatter; int dnum; int str; int id; } ;
typedef TYPE_1__ cmsIT8 ;
typedef int cmsContext ;
typedef int cmsBool ;







 int SynError (int ,TYPE_1__*,char*,char const*) ;
 int TRUE ;
 int snprintf (char*,int,char*,int) ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static
cmsBool GetVal(cmsContext ContextID, cmsIT8* it8, char* Buffer, cmsUInt32Number max, const char* ErrorTitle)
{
    switch (it8->sy) {

    case 131:
                  Buffer[0]=0;
                  break;
    case 130: strncpy(Buffer, it8->id, max);
                  Buffer[max-1]=0;
                  break;
    case 129: snprintf(Buffer, max, "%d", it8 -> inum); break;
    case 132: snprintf(Buffer, max, it8->DoubleFormatter, it8 -> dnum); break;
    case 128: strncpy(Buffer, it8->str, max);
                  Buffer[max-1] = 0;
                  break;


    default:
         return SynError(ContextID, it8, "%s", ErrorTitle);
    }

    Buffer[max] = 0;
    return TRUE;
}

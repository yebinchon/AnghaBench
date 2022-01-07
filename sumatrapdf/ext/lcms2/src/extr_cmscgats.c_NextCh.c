
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t IncludeSP; char ch; char* Source; TYPE_1__** FileStack; } ;
typedef TYPE_2__ cmsIT8 ;
struct TYPE_4__ {scalar_t__ Stream; } ;


 int fclose (scalar_t__) ;
 scalar_t__ feof (scalar_t__) ;
 char fgetc (scalar_t__) ;

__attribute__((used)) static
void NextCh(cmsIT8* it8)
{
    if (it8 -> FileStack[it8 ->IncludeSP]->Stream) {

        it8 ->ch = fgetc(it8 ->FileStack[it8 ->IncludeSP]->Stream);

        if (feof(it8 -> FileStack[it8 ->IncludeSP]->Stream)) {

            if (it8 ->IncludeSP > 0) {

                fclose(it8 ->FileStack[it8->IncludeSP--]->Stream);
                it8 -> ch = ' ';

            } else
                it8 ->ch = 0;
        }
    }
    else {
        it8->ch = *it8->Source;
        if (it8->ch) it8->Source++;
    }
}

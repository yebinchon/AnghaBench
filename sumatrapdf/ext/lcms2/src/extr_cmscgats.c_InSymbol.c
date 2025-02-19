
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int cmsInt32Number ;
struct TYPE_9__ {scalar_t__ sy; char ch; char* id; int inum; int dnum; char* DoubleFormatter; char* str; int IncludeSP; TYPE_2__** FileStack; int lineno; } ;
typedef TYPE_1__ cmsIT8 ;
typedef double cmsFloat64Number ;
typedef int cmsContext ;
struct TYPE_10__ {char FileName; int * Stream; } ;
typedef scalar_t__ SYMBOL ;
typedef TYPE_2__ FILECTX ;


 scalar_t__ AllocChunk (int ,TYPE_1__*,int) ;
 scalar_t__ BinSrchKey (char*) ;
 scalar_t__ BuildAbsolutePath (char*,char,char,scalar_t__) ;
 int Check (int ,TYPE_1__*,scalar_t__,char*) ;
 scalar_t__ FALSE ;
 int MAXID ;
 int MAXINCLUDE ;
 int MAXSTR ;
 int NextCh (TYPE_1__*) ;
 int ReadReal (TYPE_1__*,int) ;
 scalar_t__ SCOMMENT ;
 void* SDNUM ;
 scalar_t__ SEOF ;
 void* SEOLN ;
 void* SIDENT ;
 scalar_t__ SINCLUDE ;
 scalar_t__ SINUM ;
 scalar_t__ SSTRING ;
 scalar_t__ SUNDEFINED ;
 int SynError (int ,TYPE_1__*,char*,...) ;
 scalar_t__ cmsMAX_PATH ;
 int * fopen (char,char*) ;
 scalar_t__ isdigit (char) ;
 scalar_t__ isfirstidchar (char) ;
 scalar_t__ isidchar (char) ;
 scalar_t__ isseparator (char) ;
 scalar_t__ isxdigit (char) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strlen (char*) ;
 char toupper (char) ;

__attribute__((used)) static
void InSymbol(cmsContext ContextID, cmsIT8* it8)
{
    register char *idptr;
    register int k;
    SYMBOL key;
    int sng;

    do {

        while (isseparator(it8->ch))
            NextCh(it8);

        if (isfirstidchar(it8->ch)) {

            k = 0;
            idptr = it8->id;

            do {

                if (++k < MAXID) *idptr++ = (char) it8->ch;

                NextCh(it8);

            } while (isidchar(it8->ch));

            *idptr = '\0';


            key = BinSrchKey(it8->id);
            if (key == SUNDEFINED) it8->sy = SIDENT;
            else it8->sy = key;

        }
        else
            if (isdigit(it8->ch) || it8->ch == '.' || it8->ch == '-' || it8->ch == '+')
            {
                int sign = 1;

                if (it8->ch == '-') {
                    sign = -1;
                    NextCh(it8);
                }

                it8->inum = 0;
                it8->sy = SINUM;

                if (it8->ch == '0') {

                    NextCh(it8);
                    if (toupper(it8->ch) == 'X') {

                        int j;

                        NextCh(it8);
                        while (isxdigit(it8->ch))
                        {
                            it8->ch = toupper(it8->ch);
                            if (it8->ch >= 'A' && it8->ch <= 'F') j = it8->ch -'A'+10;
                            else j = it8->ch - '0';

                            if ((cmsFloat64Number) it8->inum * 16.0 + (cmsFloat64Number) j > (cmsFloat64Number)+2147483647.0)
                            {
                                SynError(ContextID, it8, "Invalid hexadecimal number");
                                return;
                            }

                            it8->inum = it8->inum * 16 + j;
                            NextCh(it8);
                        }
                        return;
                    }

                    if (toupper(it8->ch) == 'B') {

                        int j;

                        NextCh(it8);
                        while (it8->ch == '0' || it8->ch == '1')
                        {
                            j = it8->ch - '0';

                            if ((cmsFloat64Number) it8->inum * 2.0 + j > (cmsFloat64Number)+2147483647.0)
                            {
                                SynError(ContextID, it8, "Invalid binary number");
                                return;
                            }

                            it8->inum = it8->inum * 2 + j;
                            NextCh(it8);
                        }
                        return;
                    }
                }


                while (isdigit(it8->ch)) {

                    cmsInt32Number digit = (it8->ch - '0');

                    if ((cmsFloat64Number) it8->inum * 10.0 + (cmsFloat64Number) digit > (cmsFloat64Number) +2147483647.0) {
                        ReadReal(it8, it8->inum);
                        it8->sy = SDNUM;
                        it8->dnum *= sign;
                        return;
                    }

                    it8->inum = it8->inum * 10 + digit;
                    NextCh(it8);
                }

                if (it8->ch == '.') {

                    ReadReal(it8, it8->inum);
                    it8->sy = SDNUM;
                    it8->dnum *= sign;
                    return;
                }

                it8 -> inum *= sign;



                if (isidchar(it8 ->ch)) {

                    if (it8 ->sy == SINUM) {

                        snprintf(it8->id, 127, "%d", it8->inum);
                    }
                    else {

                        snprintf(it8->id, 127, it8 ->DoubleFormatter, it8->dnum);
                    }

                    k = (int) strlen(it8 ->id);
                    idptr = it8 ->id + k;
                    do {

                        if (++k < MAXID) *idptr++ = (char) it8->ch;

                        NextCh(it8);

                    } while (isidchar(it8->ch));

                    *idptr = '\0';
                    it8->sy = SIDENT;
                }
                return;

            }
            else
                switch ((int) it8->ch) {


        case '\x1a':
            NextCh(it8);
            break;


        case 0:
        case -1:
            it8->sy = SEOF;
            break;



        case '\r':
            NextCh(it8);
            if (it8 ->ch == '\n')
                NextCh(it8);
            it8->sy = SEOLN;
            it8->lineno++;
            break;

        case '\n':
            NextCh(it8);
            it8->sy = SEOLN;
            it8->lineno++;
            break;


        case '#':
            NextCh(it8);
            while (it8->ch && it8->ch != '\n' && it8->ch != '\r')
                NextCh(it8);

            it8->sy = SCOMMENT;
            break;


        case '\'':
        case '\"':
            idptr = it8->str;
            sng = it8->ch;
            k = 0;
            NextCh(it8);

            while (k < (MAXSTR-1) && it8->ch != sng) {

                if (it8->ch == '\n'|| it8->ch == '\r') k = MAXSTR+1;
                else {
                    *idptr++ = (char) it8->ch;
                    NextCh(it8);
                    k++;
                }
            }

            it8->sy = SSTRING;
            *idptr = '\0';
            NextCh(it8);
            break;


        default:
            SynError(ContextID, it8, "Unrecognized character: 0x%x", it8 ->ch);
            return;
            }

    } while (it8->sy == SCOMMENT);



    if (it8 -> sy == SINCLUDE) {

                FILECTX* FileNest;

                if(it8 -> IncludeSP >= (MAXINCLUDE-1)) {

                    SynError(ContextID, it8, "Too many recursion levels");
                    return;
                }

                InSymbol(ContextID, it8);
                if (!Check(ContextID, it8, SSTRING, "Filename expected")) return;

                FileNest = it8 -> FileStack[it8 -> IncludeSP + 1];
                if(FileNest == ((void*)0)) {

                    FileNest = it8 ->FileStack[it8 -> IncludeSP + 1] = (FILECTX*)AllocChunk(ContextID, it8, sizeof(FILECTX));


                }

                if (BuildAbsolutePath(it8->str,
                                      it8->FileStack[it8->IncludeSP]->FileName,
                                      FileNest->FileName, cmsMAX_PATH-1) == FALSE) {
                    SynError(ContextID, it8, "File path too long");
                    return;
                }

                FileNest->Stream = fopen(FileNest->FileName, "rt");
                if (FileNest->Stream == ((void*)0)) {

                        SynError(ContextID, it8, "File %s not found", FileNest->FileName);
                        return;
                }
                it8->IncludeSP++;

                it8 ->ch = ' ';
                InSymbol(ContextID, it8);
    }

}

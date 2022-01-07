
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ nr1; int valid; scalar_t__ nr2; int file2; int func2; int file1; int func1; } ;
struct TYPE_8__ {int majordiff; int diff; } ;
struct TYPE_7__ {size_t FileOffset; size_t FunctionOffset; scalar_t__ SourceLine; } ;
struct TYPE_6__ {int StringsOffset; } ;
typedef TYPE_1__* PSYMBOLFILE_HEADER ;
typedef TYPE_2__* PROSSYM_ENTRY ;


 int LINESIZE ;
 int SVN_PREFIX ;
 TYPE_2__* find_offset (void*,size_t) ;
 TYPE_4__ lastLine ;
 scalar_t__ opt_Twice ;
 scalar_t__ opt_twice ;
 int printf (char*,char*,...) ;
 int snprintf (char*,int,char*,char*,...) ;
 int sources ;
 int sources_entry_create (int *,int ,int ) ;
 int strcat (char*,char*) ;
 int strcpy (int ,char*) ;
 TYPE_3__ summ ;

__attribute__((used)) static int
print_offset(void *data, size_t offset, char *toString)
{
    PSYMBOLFILE_HEADER RosSymHeader = (PSYMBOLFILE_HEADER)data;
    PROSSYM_ENTRY e = ((void*)0);
    PROSSYM_ENTRY e2 = ((void*)0);
    int bFileOffsetChanged = 0;
    char fmt[LINESIZE];
    char *Strings = (char *)data + RosSymHeader->StringsOffset;

    fmt[0] = '\0';
    e = find_offset(data, offset);
    if (opt_twice)
    {
        e2 = find_offset(data, offset - 1);

        if (e == e2)
            e2 = ((void*)0);
        else
            summ.diff++;

        if (opt_Twice && e2)
        {
            e = e2;
            e2 = ((void*)0);

        }
    }
    if (e || e2)
    {
        strcpy(lastLine.file1, &Strings[e->FileOffset]);
        strcpy(lastLine.func1, &Strings[e->FunctionOffset]);
        lastLine.nr1 = e->SourceLine;
        sources_entry_create(&sources, lastLine.file1, SVN_PREFIX);
        lastLine.valid = 1;
        if (e2)
        {
            strcpy(lastLine.file2, &Strings[e2->FileOffset]);
            strcpy(lastLine.func2, &Strings[e2->FunctionOffset]);
            lastLine.nr2 = e2->SourceLine;
            sources_entry_create(&sources, lastLine.file2, SVN_PREFIX);
            bFileOffsetChanged = e->FileOffset != e2->FileOffset;
            if (e->FileOffset != e2->FileOffset || e->FunctionOffset != e2->FunctionOffset)
                summ.majordiff++;






            strcat(fmt, "%s");
            if (bFileOffsetChanged)
                strcat(fmt, "[%s]");
            else
                strcat(fmt, "%.0s");

            strcat(fmt, ":%u");
            if (e->SourceLine != e2->SourceLine || bFileOffsetChanged)
                strcat(fmt, "[%u]");
            else
                strcat(fmt, "%.0u");

            strcat(fmt, " (%s");
            if (e->FunctionOffset != e2->FunctionOffset || bFileOffsetChanged)
                strcat(fmt, "[%s])");
            else
                strcat(fmt, "%.0s)");

            if (toString)
            {
                snprintf(toString, LINESIZE, fmt,
                    &Strings[e->FileOffset],
                    &Strings[e2->FileOffset],
                    (unsigned int)e->SourceLine,
                    (unsigned int)e2->SourceLine,
                    &Strings[e->FunctionOffset],
                    &Strings[e2->FunctionOffset]);
            }
            else
            {
                strcat(fmt, "\n");
                printf(fmt,
                    &Strings[e->FileOffset],
                    &Strings[e2->FileOffset],
                    (unsigned int)e->SourceLine,
                    (unsigned int)e2->SourceLine,
                    &Strings[e->FunctionOffset],
                    &Strings[e2->FunctionOffset]);
            }
        }
        else
        {
            if (toString)
            {
                snprintf(toString, LINESIZE, "%s:%u (%s)",
                    &Strings[e->FileOffset],
                    (unsigned int)e->SourceLine,
                    &Strings[e->FunctionOffset]);
            }
            else
            {
                printf("%s:%u (%s)\n",
                    &Strings[e->FileOffset],
                    (unsigned int)e->SourceLine,
                    &Strings[e->FunctionOffset]);
            }
        }
        return 0;
    }
    return 1;
}

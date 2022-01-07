
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef size_t WORD ;
typedef int FILE ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ calloc (int,int) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ isspace (char) ;
 int printf (char*,...) ;
 scalar_t__ strtol (char*,char**,int) ;
 size_t* to_lower_org ;
 size_t* to_upper_org ;

__attribute__((used)) static BOOL CreateCaseDiff(char *table_name)
{
    char buf[256];
    char *p;
    WORD code, case_mapping;
    FILE *file;
    int line;

    to_upper_org = (WORD *)calloc(65536, sizeof(WORD));
    if(!to_upper_org) {
        printf("Not enough memory for to upper table\n");
        return FALSE;
    }

    to_lower_org = (WORD *)calloc(65536, sizeof(WORD));
    if(!to_lower_org) {
        printf("Not enough memory for to lower table\n");
        return FALSE;
    }

    file = fopen(table_name, "r");
    if(file == ((void*)0)) {
        printf("Could not open file \"%s\"\n", table_name);
        return FALSE;
    }

    line = 0;

    while(fgets(buf, sizeof(buf), file)) {
        line++;
        p = buf;
        while(*p && isspace(*p)) p++;

        if(!*p)
            continue;


        code = (WORD)strtol(p, &p, 16);




        while(*p && *p != ';') p++;
        if(!*p)
            continue;
        p++;


        while(*p && *p != ';') p++;
        if(!*p)
            continue;
        p++;


        while(*p && *p != ';') p++;
        if(!*p)
            continue;
        p++;


        while(*p && *p != ';') p++;
        if(!*p)
            continue;
        p++;


        while(*p && *p != ';') p++;
        if(!*p)
            continue;
        p++;


        while(*p && *p != ';') p++;
        if(!*p)
            continue;
        p++;


        while(*p && *p != ';') p++;
        if(!*p)
            continue;
        p++;


        while(*p && *p != ';') p++;
        if(!*p)
            continue;
        p++;


        while(*p && *p != ';') p++;
        if(!*p)
            continue;
        p++;


        while(*p && *p != ';') p++;
        if(!*p)
            continue;
        p++;


        while(*p && *p != ';') p++;
        if(!*p)
            continue;
        p++;


        while(*p && *p != ';') p++;
        if(!*p)
            continue;
        p++;


        while(*p && isspace(*p)) p++;
        if(!*p) continue;
        if(*p != ';') {
            case_mapping = (WORD)strtol(p, &p, 16);
            to_upper_org[code] = case_mapping - code;
            while(*p && *p != ';') p++;
        }
        else
            p++;


        while(*p && isspace(*p)) p++;
        if(!*p) continue;
        if(*p != ';') {
            case_mapping = (WORD)strtol(p, &p, 16);
            to_lower_org[code] = case_mapping - code;
            while(*p && *p != ';') p++;
        }
        else
            p++;


        while(*p && *p != ';') p++;
        if(!*p)
            continue;
        p++;
    }

    fclose(file);

    return TRUE;
}

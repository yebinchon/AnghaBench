
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnm_header {int format; int width; int height; int depth; int maxval; int bw; int gray; int graya; int rgb; int rgba; int ok; } ;
typedef int FILE ;


 int atoi (char*) ;
 int * fgets (char*,int,int *) ;
 int fprintf (int ,char*,...) ;
 char* skip_idf (char*,char*) ;
 char* skip_int (char*,int*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void read_pnm_header(FILE *reader, struct pnm_header *ph)
{
    int format, end, ttype;
    char idf[256], type[256];
    char line[256];

    if (fgets(line, 250, reader) == ((void*)0)) {
        fprintf(stderr, "\nWARNING: fgets return a NULL value");
        return;
    }

    if (line[0] != 'P') {
        fprintf(stderr, "read_pnm_header:PNM:magic P missing\n");
        return;
    }
    format = atoi(line + 1);
    if (format < 1 || format > 7) {
        fprintf(stderr, "read_pnm_header:magic format %d invalid\n", format);
        return;
    }
    ph->format = format;
    ttype = end = 0;

    while (fgets(line, 250, reader)) {
        char *s;
        int allow_null = 0;

        if (*line == '#') {
            continue;
        }

        s = line;

        if (format == 7) {
            s = skip_idf(s, idf);

            if (s == ((void*)0) || *s == 0) {
                return;
            }

            if (strcmp(idf, "ENDHDR") == 0) {
                end = 1;
                break;
            }
            if (strcmp(idf, "WIDTH") == 0) {
                s = skip_int(s, &ph->width);
                if (s == ((void*)0) || *s == 0) {
                    return;
                }

                continue;
            }
            if (strcmp(idf, "HEIGHT") == 0) {
                s = skip_int(s, &ph->height);
                if (s == ((void*)0) || *s == 0) {
                    return;
                }

                continue;
            }
            if (strcmp(idf, "DEPTH") == 0) {
                s = skip_int(s, &ph->depth);
                if (s == ((void*)0) || *s == 0) {
                    return;
                }

                continue;
            }
            if (strcmp(idf, "MAXVAL") == 0) {
                s = skip_int(s, &ph->maxval);
                if (s == ((void*)0) || *s == 0) {
                    return;
                }

                continue;
            }
            if (strcmp(idf, "TUPLTYPE") == 0) {
                s = skip_idf(s, type);
                if (s == ((void*)0) || *s == 0) {
                    return;
                }

                if (strcmp(type, "BLACKANDWHITE") == 0) {
                    ph->bw = 1;
                    ttype = 1;
                    continue;
                }
                if (strcmp(type, "GRAYSCALE") == 0) {
                    ph->gray = 1;
                    ttype = 1;
                    continue;
                }
                if (strcmp(type, "GRAYSCALE_ALPHA") == 0) {
                    ph->graya = 1;
                    ttype = 1;
                    continue;
                }
                if (strcmp(type, "RGB") == 0) {
                    ph->rgb = 1;
                    ttype = 1;
                    continue;
                }
                if (strcmp(type, "RGB_ALPHA") == 0) {
                    ph->rgba = 1;
                    ttype = 1;
                    continue;
                }
                fprintf(stderr, "read_pnm_header:unknown P7 TUPLTYPE %s\n", type);
                return;
            }
            fprintf(stderr, "read_pnm_header:unknown P7 idf %s\n", idf);
            return;
        }


        if (ph->width == 0) {
            s = skip_int(s, &ph->width);
            if ((s == ((void*)0)) || (*s == 0) || (ph->width < 1)) {
                return;
            }
            allow_null = 1;
        }
        if (ph->height == 0) {
            s = skip_int(s, &ph->height);
            if ((s == ((void*)0)) && allow_null) {
                continue;
            }
            if ((s == ((void*)0)) || (*s == 0) || (ph->height < 1)) {
                return;
            }
            if (format == 1 || format == 4) {
                break;
            }
            allow_null = 1;
        }

        s = skip_int(s, &ph->maxval);
        if ((s == ((void*)0)) && allow_null) {
            continue;
        }
        if ((s == ((void*)0)) || (*s == 0)) {
            return;
        }
        break;
    }
    if (format == 2 || format == 3 || format > 4) {
        if (ph->maxval < 1 || ph->maxval > 65535) {
            return;
        }
    }
    if (ph->width < 1 || ph->height < 1) {
        return;
    }

    if (format == 7) {
        if (!end) {
            fprintf(stderr, "read_pnm_header:P7 without ENDHDR\n");
            return;
        }
        if (ph->depth < 1 || ph->depth > 4) {
            return;
        }

        if (ttype) {
            ph->ok = 1;
        }
    } else {
        ph->ok = 1;
        if (format == 1 || format == 4) {
            ph->maxval = 255;
        }
    }
}

#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pnm_header {int format; int width; int height; int depth; int maxval; int bw; int gray; int graya; int rgb; int rgba; int ok; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC3 (char*,char*) ; 
 char* FUNC4 (char*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static void FUNC6(FILE *reader, struct pnm_header *ph)
{
    char *s;
    int format, have_wh, end, ttype;
    char idf[256], type[256];
    char line[256];

    if (FUNC1(line, 250, reader) == NULL) {
        FUNC2(stderr, "\nWARNING: fgets return a NULL value");
        return;
    }

    if (line[0] != 'P') {
        FUNC2(stderr, "read_pnm_header:PNM:magic P missing\n");
        return;
    }
    format = FUNC0(line + 1);
    if (format < 1 || format > 7) {
        FUNC2(stderr, "read_pnm_header:magic format %d invalid\n", format);
        return;
    }
    ph->format = format;
    ttype = end = have_wh = 0;

    while (FUNC1(line, 250, reader)) {
        if (*line == '#') {
            continue;
        }

        s = line;

        if (format == 7) {
            s = FUNC3(s, idf);

            if (s == NULL || *s == 0) {
                return;
            }

            if (FUNC5(idf, "ENDHDR") == 0) {
                end = 1;
                break;
            }
            if (FUNC5(idf, "WIDTH") == 0) {
                s = FUNC4(s, &ph->width);
                if (s == NULL || *s == 0) {
                    return;
                }

                continue;
            }
            if (FUNC5(idf, "HEIGHT") == 0) {
                s = FUNC4(s, &ph->height);
                if (s == NULL || *s == 0) {
                    return;
                }

                continue;
            }
            if (FUNC5(idf, "DEPTH") == 0) {
                s = FUNC4(s, &ph->depth);
                if (s == NULL || *s == 0) {
                    return;
                }

                continue;
            }
            if (FUNC5(idf, "MAXVAL") == 0) {
                s = FUNC4(s, &ph->maxval);
                if (s == NULL || *s == 0) {
                    return;
                }

                continue;
            }
            if (FUNC5(idf, "TUPLTYPE") == 0) {
                s = FUNC3(s, type);
                if (s == NULL || *s == 0) {
                    return;
                }

                if (FUNC5(type, "BLACKANDWHITE") == 0) {
                    ph->bw = 1;
                    ttype = 1;
                    continue;
                }
                if (FUNC5(type, "GRAYSCALE") == 0) {
                    ph->gray = 1;
                    ttype = 1;
                    continue;
                }
                if (FUNC5(type, "GRAYSCALE_ALPHA") == 0) {
                    ph->graya = 1;
                    ttype = 1;
                    continue;
                }
                if (FUNC5(type, "RGB") == 0) {
                    ph->rgb = 1;
                    ttype = 1;
                    continue;
                }
                if (FUNC5(type, "RGB_ALPHA") == 0) {
                    ph->rgba = 1;
                    ttype = 1;
                    continue;
                }
                FUNC2(stderr, "read_pnm_header:unknown P7 TUPLTYPE %s\n", type);
                return;
            }
            FUNC2(stderr, "read_pnm_header:unknown P7 idf %s\n", idf);
            return;
        } /* if(format == 7) */

        if (!have_wh) {
            s = FUNC4(s, &ph->width);

            s = FUNC4(s, &ph->height);

            have_wh = 1;

            if (format == 1 || format == 4) {
                break;
            }

            continue;
        }
        if (format == 2 || format == 3 || format == 5 || format == 6) {
            /* P2, P3, P5, P6: */
            s = FUNC4(s, &ph->maxval);

            if (ph->maxval > 65535) {
                return;
            }
        }
        break;
    }/* while(fgets( ) */
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
            FUNC2(stderr, "read_pnm_header:P7 without ENDHDR\n");
            return;
        }
        if (ph->depth < 1 || ph->depth > 4) {
            return;
        }

        if (ph->width && ph->height && ph->depth & ph->maxval && ttype) {
            ph->ok = 1;
        }
    } else {
        if (format != 1 && format != 4) {
            if (ph->width && ph->height && ph->maxval) {
                ph->ok = 1;
            }
        } else {
            if (ph->width && ph->height) {
                ph->ok = 1;
            }
            ph->maxval = 255;
        }
    }
}
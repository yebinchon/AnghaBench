#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int minversion; int num_cl; int /*<<< orphan*/ * cl; int /*<<< orphan*/  brand; } ;
typedef  TYPE_1__ opj_mj2_t ;
typedef  int /*<<< orphan*/  opj_event_mgr_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int FUNC5(FILE *file, FILE *xmlout, opj_mj2_t * movie,
                             unsigned int sampleframe, opj_event_mgr_t *event_mgr)
{
    int i;
    char buf[5];
    buf[4] = '\0';

    FUNC0(xmlout,
            "  <JP2 BoxType=\"jP[space][space]\" Signature=\"0x0d0a870a\" />\n");
    // Called after structure initialized by mj2_read_ftyp
    FUNC0(xmlout,   "  <FileType BoxType=\"ftyp\">\n");
    FUNC1(movie->brand, buf);
    FUNC0(xmlout,   "    <Brand>%s</Brand>\n",
            buf);    /* 4 character; BR              */
    FUNC0(xmlout,   "    <MinorVersion>%u</MinorVersion>\n",
            movie->minversion);    /* 4 char; MinV            */
    FUNC0(xmlout,   "    <CompatibilityList Count=\"%d\">\n", movie->num_cl);
    for (i = movie->num_cl - 1; i > -1;
            i--) { /* read routine stored in reverse order, so let's undo damage */
        FUNC1(movie->cl[i], buf);
        FUNC0(xmlout, "      <CompatibleBrand>%s</CompatibleBrand>\n",
                buf);    /*4 characters, each CLi */
    }
    FUNC0(xmlout,   "    </CompatibilityList>\n");
    FUNC0(xmlout,   "  </FileType>\n");
    FUNC3(file, xmlout, movie, sampleframe, event_mgr);
    // To come?              <mdat>  // This is the container for media data that can also be accessed through track structures,
    // so is redundant, and simply not of interest as metadata
    //                       <moof>  // Allows incremental build up of movie.  Probably not in Simple Profile
    FUNC2(xmlout,
                            movie); /* NO OP so far */ /* May be a place where user squirrels metadata */
    FUNC4(xmlout,
                   movie); /* NO OP so far */ /* May be a place where user squirrels metadata */
    return 0;
}
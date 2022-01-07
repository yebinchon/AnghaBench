
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int numcomps; TYPE_2__* comps; scalar_t__ z1; scalar_t__ y1; scalar_t__ x1; scalar_t__ z0; scalar_t__ y0; scalar_t__ x0; } ;
typedef TYPE_1__ opj_volume_t ;
struct TYPE_11__ {int prec; int* data; int bpp; int sgnd; } ;
typedef TYPE_2__ opj_volume_comp_t ;
struct TYPE_12__ {int prec; int bpp; int bigendian; int dx; int dy; int dz; int w; int h; int l; int dcoffset; scalar_t__ sgnd; } ;
typedef TYPE_3__ opj_volume_cmptparm_t ;
struct TYPE_13__ {int subsampling_dx; int subsampling_dy; int subsampling_dz; scalar_t__ volume_offset_z0; scalar_t__ volume_offset_y0; scalar_t__ volume_offset_x0; int dcoffset; } ;
typedef TYPE_4__ opj_cparameters_t ;
typedef int OPJ_COLOR_SPACE ;
typedef int FILE ;


 int CLRSPC_GRAY ;
 int SEEK_SET ;
 int fclose (int *) ;
 int feof (int *) ;
 int fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int fseek (int *,int ,int ) ;
 int int_floorlog2 (int) ;
 int memset (TYPE_3__*,int ,int) ;
 TYPE_1__* opj_volume_create (int,TYPE_3__*,int) ;
 int readuchar (int *) ;
 int readuint (int *,int) ;
 int readushort (int *,int) ;
 int sscanf (char*,char*,...) ;
 int stderr ;
 int stdout ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strrchr (char*,char) ;

opj_volume_t* imgtovolume(char *fileimg, opj_cparameters_t *parameters)
{
    int subsampling_dx = parameters->subsampling_dx;
    int subsampling_dy = parameters->subsampling_dy;
    int subsampling_dz = parameters->subsampling_dz;

    int i, compno, w, h, l, numcomps = 1;
    int prec, max = 0, min = 0;
    float dx, dy, dz;
    char filename[100], tmpdirpath[100], dirpath[100], *tmp;
    char line[100], datatype[100];
    int bigendian;

    FILE *f = ((void*)0);
    FILE *fimg = ((void*)0);
    OPJ_COLOR_SPACE color_space;
    opj_volume_cmptparm_t cmptparm;
    opj_volume_t * volume = ((void*)0);
    opj_volume_comp_t *comp = ((void*)0);

    bigendian = 0;
    color_space = CLRSPC_GRAY;

    fimg = fopen(fileimg, "r");
    if (!fimg) {
        fprintf(stderr, "[ERROR] Failed to open %s for reading !!\n", fileimg);
        return 0;
    }


    strcpy(tmpdirpath, fileimg);
    if ((tmp = strrchr(tmpdirpath, '/')) != ((void*)0)) {
        tmp++;
        *tmp = '\0';
        strcpy(dirpath, tmpdirpath);
    } else {
        strcpy(dirpath, "./");
    }

    fseek(fimg, 0, SEEK_SET);
    while (!feof(fimg)) {
        fgets(line, 100, fimg);

        if (strncmp(line, "Image", 5) == 0) {
            sscanf(line, "%*s%*[ \t]%s", datatype);
        } else if (strncmp(line, "File", 4) == 0) {
            sscanf(line, "%*s %*s%*[ \t]%s", filename);
            strcat(dirpath, filename);
            strcpy(filename, dirpath);
        } else if (strncmp(line, "Min", 3) == 0) {
            sscanf(line, "%*s %*s%*[ \t]%d%*[ \t]%d", &min, &max);
            prec = int_floorlog2(max - min + 1);
        } else if (strncmp(line, "Bpp", 3) == 0) {
            sscanf(line, "%*s%*[ \t]%d", &prec);
        } else if (strncmp(line, "Color", 5) == 0) {
            sscanf(line, "%*s %*s%*[ \t]%d", &color_space);
        } else if (strncmp(line, "Dim", 3) == 0) {
            sscanf(line, "%*s%*[ \t]%d%*[ \t]%d%*[ \t]%d", &w, &h, &l);
        } else if (strncmp(line, "Res", 3) == 0) {
            sscanf(line, "%*s%*[ \t]%f%*[ \t]%f%*[ \t]%f", &dx, &dy, &dz);
        }

    }




    fclose(fimg);


    if (!prec || !w || !h || !l) {
        fprintf(stderr,
                "[ERROR] Unable to read IMG file correctly. Found some null values.");
        return ((void*)0);
    }


    memset(&cmptparm, 0, sizeof(opj_volume_cmptparm_t));

    cmptparm.prec = prec;
    cmptparm.bpp = prec;
    cmptparm.sgnd = 0;
    cmptparm.bigendian = bigendian;
    cmptparm.dcoffset = parameters->dcoffset;
    cmptparm.dx = subsampling_dx;
    cmptparm.dy = subsampling_dy;
    cmptparm.dz = subsampling_dz;
    cmptparm.w = w;
    cmptparm.h = h;
    cmptparm.l = l;


    volume = opj_volume_create(numcomps, &cmptparm, color_space);
    if (!volume) {
        fprintf(stdout, "[ERROR] Unable to create volume");
        return ((void*)0);
    }


    volume->x0 = parameters->volume_offset_x0;
    volume->y0 = parameters->volume_offset_y0;
    volume->z0 = parameters->volume_offset_z0;
    volume->x1 = parameters->volume_offset_x0 + (w - 1) * subsampling_dx + 1;
    volume->y1 = parameters->volume_offset_y0 + (h - 1) * subsampling_dy + 1;
    volume->z1 = parameters->volume_offset_z0 + (l - 1) * subsampling_dz + 1;

    max = 0;

    f = fopen(filename, "rb");
    if (!f) {
        fprintf(stderr, "[ERROR] Failed to open %s for reading !!\n", filename);
        fclose(f);
        return 0;
    }


    for (compno = 0; compno < volume->numcomps; compno++) {
        int whl = w * h * l;

        comp = &volume->comps[compno];
        for (i = 0; i < whl; i++) {
            int v;
            if (comp->prec <= 8) {
                if (!comp->sgnd) {
                    v = readuchar(f);
                } else {
                    v = (char) readuchar(f);
                }
            } else if (comp->prec <= 16) {
                if (!comp->sgnd) {
                    v = readushort(f, bigendian);
                } else {
                    v = (short) readushort(f, bigendian);
                }
            } else {
                if (!comp->sgnd) {
                    v = readuint(f, bigendian);
                } else {
                    v = (int) readuint(f, bigendian);
                }
            }
            if (v > max) {
                max = v;
            }
            comp->data[i] = v;
        }
        comp->bpp = int_floorlog2(max) + 1;
    }
    fclose(f);
    return volume;
}

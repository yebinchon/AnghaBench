
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int POC; int numpocs; TYPE_2__* pocs; } ;
typedef TYPE_1__ opj_tcp_t ;
struct TYPE_6__ {int compno0; int layno1; int resno1; int compno1; int prg; int resno0; } ;
typedef TYPE_2__ opj_poc_t ;
typedef int FILE ;


 int fprintf (int *,char*,char*,...) ;
 TYPE_1__* j2k_default_tcp ;
 scalar_t__ notes ;

void xml_out_frame_poc(FILE* xmlout,
                       opj_tcp_t *tcp)
{

    int i;
    opj_poc_t *poc;
    char spaces[13] = "            ";
    char* s = spaces;
    if (tcp == j2k_default_tcp) {
        s++;
        s++;
    }

    if (tcp->POC != 1) {
        return;
    }

    fprintf(xmlout, "%s<ProgressionOrderChange Marker=\"POC\">\n",
            s);




    for (i = 0; i < tcp->numpocs; i++) {
        poc = &tcp->pocs[i];
        fprintf(xmlout, "%s  <Progression Num=\"%d\">\n", s, i + 1);
        fprintf(xmlout, "%S    <RSpoc>%d</RSpoc>\n", s,
                poc->resno0);
        if (notes) {
            fprintf(xmlout,
                    "%s    <!-- Resolution level index (inclusive) for progression start. Range: 0 to 33 -->\n",
                    s);
        }
        fprintf(xmlout, "%s    <CSpoc>%d</CSpoc>\n", s,
                poc->compno0);
        if (notes) {
            fprintf(xmlout,
                    "%s    <!-- Component index (inclusive) for progression start. -->\n", s);
        }
        fprintf(xmlout, "%s    <LYEpoc>%d</LYEpoc>\n", s,
                poc->layno1);
        if (notes) {
            fprintf(xmlout, "%s    <!-- Layer index (exclusive) for progression end. -->\n",
                    s);
        }
        fprintf(xmlout, "%s    <REpoc>%d</REpoc>\n", s,
                poc->resno1);
        if (notes) {
            fprintf(xmlout,
                    "%s    <!-- Resolution level index (exclusive) for progression end. Range: RSpoc to 33 -->\n",
                    s);
        }
        fprintf(xmlout, "%s    <CEpoc>%d</CEpoc>\n", s,
                poc->compno1);
        if (notes) {
            fprintf(xmlout,
                    "%s    <!-- Component index (exclusive) for progression end.  Minimum: CSpoc -->\n",
                    s);
        }
        fprintf(xmlout, "%s    <Ppoc>%d</Ppoc>\n", s, poc->prg);
        if (notes) {
            fprintf(xmlout, "%s    <!-- Defined Progression Order Values are: -->\n", s);
            fprintf(xmlout,
                    "%s    <!-- 0 = LRCP; 1 = RLCP; 2 = RPCL; 3 = PCRL; 4 = CPRL -->\n", s);
            fprintf(xmlout,
                    "%s    <!-- where L = \"layer\", R = \"resolution level\", C = \"component\", P = \"position\". -->\n",
                    s);
        }
        fprintf(xmlout, "%s  </Progression>\n", s);
    }
    fprintf(xmlout, "%s</ProgressionOrderChange\n", s);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_2__ {int (* uni2char ) (int const,unsigned char*,int) ;} ;


 int EINVAL ;
 int ENAMETOOLONG ;
 scalar_t__ IS_SJIS_IBM (unsigned char,unsigned char) ;
 scalar_t__ IS_SJIS_JISX0201KANA (unsigned char) ;
 scalar_t__ IS_SJIS_JISX0208 (unsigned char,unsigned char) ;
 scalar_t__ IS_SJIS_UDC_HI (unsigned char,unsigned char) ;
 scalar_t__ IS_SJIS_UDC_LOW (unsigned char,unsigned char) ;
 int MAP_SJIS2EUC (unsigned char,unsigned char,int,unsigned char,unsigned char,int) ;
 unsigned char SS2 ;
 unsigned char SS3 ;
 TYPE_1__* p_nls ;
 int sjisibm2euc (unsigned char*,unsigned char,unsigned char) ;
 int sjisnec2sjisibm (unsigned char*,unsigned char,unsigned char) ;
 int stub1 (int const,unsigned char*,int) ;

__attribute__((used)) static int uni2char(const wchar_t uni,
                    unsigned char *out, int boundlen)
{
    int n;

    if (!p_nls)
        return -EINVAL;
    if ((n = p_nls->uni2char(uni, out, boundlen)) < 0)
        return n;


    if (n == 1) {
        if (IS_SJIS_JISX0201KANA(out[0])) {

            if (boundlen < 2)
                return -ENAMETOOLONG;

            out[1] = out[0];
            out[0] = SS2;
            return 2;
        }
    } else if (n == 2) {

        sjisnec2sjisibm(out, out[0], out[1]);

        if (IS_SJIS_UDC_LOW(out[0], out[1])) {

            MAP_SJIS2EUC(out[0], out[1], 0xF0, out[0], out[1], 0xF5);
        } else if (IS_SJIS_UDC_HI(out[0], out[1])) {

            unsigned char ch, cl;

            if (boundlen < 3)
                return -ENAMETOOLONG;

            n = 3;
            ch = out[0];
            cl = out[1];
            out[0] = SS3;
            MAP_SJIS2EUC(ch, cl, 0xF5, out[1], out[2], 0xF5);
        } else if (IS_SJIS_IBM(out[0], out[1])) {

            unsigned char euc[3], i;

            n = sjisibm2euc(euc, out[0], out[1]);
            if (boundlen < n)
                return -ENAMETOOLONG;
            for (i = 0; i < n; i++)
                out[i] = euc[i];
        } else if (IS_SJIS_JISX0208(out[0], out[1])) {

            out[0] = (out[0]^0xA0)*2 + 0x5F;
            if (out[1] > 0x9E)
                out[0]++;

            if (out[1] < 0x7F)
                out[1] = out[1] + 0x61;
            else if (out[1] < 0x9F)
                out[1] = out[1] + 0x60;
            else
                out[1] = out[1] + 0x02;
        } else {

            return -EINVAL;
        }
    }
    else
        return -EINVAL;

    return n;
}

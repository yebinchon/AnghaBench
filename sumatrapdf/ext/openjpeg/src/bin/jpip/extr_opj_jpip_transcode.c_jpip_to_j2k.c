
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jpip_dec_param_t ;


 int OPJ_FALSE ;
 int decode_jpip (int *) ;
 int destroy_jpipdecoder (int **) ;
 int fread_jpip (char*,int *) ;
 int fwrite_jp2k (char*,int *) ;
 int * init_jpipdecoder (int ) ;

__attribute__((used)) static int jpip_to_j2k(char *argv[])
{
    jpip_dec_param_t *dec;

    dec = init_jpipdecoder(OPJ_FALSE);

    if (!(fread_jpip(argv[1], dec))) {
        return 1;
    }

    decode_jpip(dec);

    if (!(fwrite_jp2k(argv[2], dec))) {
        return 1;
    }



    destroy_jpipdecoder(&dec);

    return 0;
}

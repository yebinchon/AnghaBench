
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bufb ;
typedef int bufa ;


 int CONFIG_AUTHPASS_MAX_LEN ;
 int memcpy (char*,char*,unsigned int) ;
 int memset (char*,int ,int) ;
 unsigned int strlen (char*) ;

int time_independent_strcmp(char *a, char *b) {
    char bufa[CONFIG_AUTHPASS_MAX_LEN], bufb[CONFIG_AUTHPASS_MAX_LEN];




    unsigned int alen = strlen(a);
    unsigned int blen = strlen(b);
    unsigned int j;
    int diff = 0;




    if (alen > sizeof(bufa) || blen > sizeof(bufb)) return 1;

    memset(bufa,0,sizeof(bufa));
    memset(bufb,0,sizeof(bufb));


    memcpy(bufa,a,alen);
    memcpy(bufb,b,blen);



    for (j = 0; j < sizeof(bufa); j++) {
        diff |= (bufa[j] ^ bufb[j]);
    }

    diff |= alen ^ blen;
    return diff;
}

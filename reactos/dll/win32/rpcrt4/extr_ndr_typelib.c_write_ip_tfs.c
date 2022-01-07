
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GUID ;


 unsigned char FC_CONSTANT_IID ;
 unsigned char FC_IP ;
 int memcpy (unsigned char*,int const*,int) ;

__attribute__((used)) static size_t write_ip_tfs(unsigned char *str, size_t *len, const GUID *iid)
{
    size_t off = *len;

    if (str)
    {
        str[*len] = FC_IP;
        str[*len+1] = FC_CONSTANT_IID;
        memcpy(str + *len + 2, iid, sizeof(*iid));
    }
    *len += 2 + sizeof(*iid);

    return off;
}

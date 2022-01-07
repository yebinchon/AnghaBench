
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oletls {int causality_id; } ;
typedef int GUID ;


 struct oletls* COM_CurrentInfo () ;
 int CoCreateGuid (int *) ;
 int GUID_NULL ;
 scalar_t__ IsEqualGUID (int *,int *) ;

__attribute__((used)) static inline GUID COM_CurrentCausalityId(void)
{
    struct oletls *info = COM_CurrentInfo();
    if (!info)
        return GUID_NULL;
    if (IsEqualGUID(&info->causality_id, &GUID_NULL))
        CoCreateGuid(&info->causality_id);
    return info->causality_id;
}

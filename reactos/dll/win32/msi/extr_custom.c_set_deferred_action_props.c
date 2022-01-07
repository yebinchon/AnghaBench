
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_3__ {int db; } ;
typedef TYPE_1__ MSIPACKAGE ;


 int msi_set_property (int ,int ,char const*,int) ;
 char* strchrW (char const*,char) ;
 char* strstrW (char const*,char const*) ;
 int szCustomActionData ;
 int szProductCode ;
 int szUserSID ;

__attribute__((used)) static void set_deferred_action_props( MSIPACKAGE *package, const WCHAR *deferred_data )
{
    static const WCHAR sep[] = {'<','=','>',0};
    const WCHAR *end, *beg = deferred_data + 1;

    end = strstrW(beg, sep);
    msi_set_property( package->db, szCustomActionData, beg, end - beg );
    beg = end + 3;

    end = strstrW(beg, sep);
    msi_set_property( package->db, szUserSID, beg, end - beg );
    beg = end + 3;

    end = strchrW(beg, ']');
    msi_set_property( package->db, szProductCode, beg, end - beg );
}

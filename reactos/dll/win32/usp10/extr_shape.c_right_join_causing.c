
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CHAR ;
typedef int BOOL ;


 scalar_t__ jtC ;
 scalar_t__ jtD ;
 scalar_t__ jtL ;

__attribute__((used)) static inline BOOL right_join_causing(CHAR joining_type)
{
    return (joining_type == jtL || joining_type == jtD || joining_type == jtC);
}

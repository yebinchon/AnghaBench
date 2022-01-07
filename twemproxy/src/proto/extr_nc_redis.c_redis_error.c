
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int type; } ;
__attribute__((used)) static bool
redis_error(struct msg *r)
{
    switch (r->type) {
    case 141:
    case 138:
    case 130:
    case 140:
    case 133:
    case 136:
    case 139:
    case 134:
    case 131:
    case 129:
    case 128:
    case 137:
    case 135:
    case 132:
        return 1;

    default:
        break;
    }

    return 0;
}

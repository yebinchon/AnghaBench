
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int vbuf ;
struct TYPE_11__ {int attr_subst_type; scalar_t__ attr_match_remove_trailing_whitespace; scalar_t__ data; } ;
typedef TYPE_1__ sd_device ;
typedef int nbuf ;
typedef TYPE_1__ UdevRuleToken ;
typedef TYPE_1__ UdevEvent ;





 int UTIL_NAME_SIZE ;
 int _fallthrough_ ;
 int assert (TYPE_1__*) ;
 int assert_not_reached (char*) ;
 int delete_trailing_chars (char*,int *) ;
 int sd_device_get_sysattr_value (TYPE_1__*,char const*,char const**) ;
 int strscpy (char*,int,char const*) ;
 int token_match_string (TYPE_1__*,char const*) ;
 int udev_event_apply_format (TYPE_1__*,char const*,char*,int,int) ;
 int util_resolve_subsys_kernel (char const*,char*,int,int) ;

__attribute__((used)) static bool token_match_attr(UdevRuleToken *token, sd_device *dev, UdevEvent *event) {
        char nbuf[UTIL_NAME_SIZE], vbuf[UTIL_NAME_SIZE];
        const char *name, *value;

        assert(token);
        assert(dev);
        assert(event);

        name = (const char*) token->data;

        switch (token->attr_subst_type) {
        case 130:
                (void) udev_event_apply_format(event, name, nbuf, sizeof(nbuf), 0);
                name = nbuf;
                _fallthrough_;
        case 129:
                if (sd_device_get_sysattr_value(dev, name, &value) < 0)
                        return 0;
                break;
        case 128:
                if (util_resolve_subsys_kernel(name, vbuf, sizeof(vbuf), 1) < 0)
                        return 0;
                value = vbuf;
                break;
        default:
                assert_not_reached("Invalid attribute substitution type");
        }


        if (token->attr_match_remove_trailing_whitespace) {
                if (value != vbuf) {
                        strscpy(vbuf, sizeof(vbuf), value);
                        value = vbuf;
                }

                delete_trailing_chars(vbuf, ((void*)0));
        }

        return token_match_string(token, value);
}

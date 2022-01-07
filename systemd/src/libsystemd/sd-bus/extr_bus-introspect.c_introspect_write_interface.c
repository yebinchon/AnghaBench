
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {char* member; int signature; } ;
struct TYPE_6__ {char* member; int names; int result; int signature; } ;
struct TYPE_5__ {char* member; char* signature; } ;
struct TYPE_8__ {TYPE_3__ signal; TYPE_2__ method; TYPE_1__ property; } ;
typedef struct introspect {int type; int flags; int f; TYPE_4__ x; } const introspect ;
typedef struct introspect sd_bus_vtable ;


 int SD_BUS_VTABLE_DEPRECATED ;
 int SD_BUS_VTABLE_HIDDEN ;
 int _SD_BUS_VTABLE_END ;





 int assert (struct introspect const*) ;
 int bus_vtable_has_names (struct introspect const*) ;
 struct introspect* bus_vtable_next (struct introspect const*,struct introspect const*) ;
 int fprintf (int ,char*,char*,...) ;
 int fputs (char*,int ) ;
 int introspect_write_arguments (struct introspect const*,char*,char const**,char*) ;
 int introspect_write_flags (struct introspect const*,int,int) ;
 char* strempty (int ) ;

int introspect_write_interface(struct introspect *i, const sd_bus_vtable *v) {
        const sd_bus_vtable *vtable = v;
        const char *names = "";

        assert(i);
        assert(v);

        for (; v->type != _SD_BUS_VTABLE_END; v = bus_vtable_next(vtable, v)) {





                if (v->type != 129 && (v->flags & SD_BUS_VTABLE_HIDDEN))
                        continue;

                switch (v->type) {

                case 129:
                        if (v->flags & SD_BUS_VTABLE_DEPRECATED)
                                fputs("  <annotation name=\"org.freedesktop.DBus.Deprecated\" value=\"true\"/>\n", i->f);
                        break;

                case 132:
                        fprintf(i->f, "  <method name=\"%s\">\n", v->x.method.member);
                        if (bus_vtable_has_names(vtable))
                                names = strempty(v->x.method.names);
                        introspect_write_arguments(i, strempty(v->x.method.signature), &names, "in");
                        introspect_write_arguments(i, strempty(v->x.method.result), &names, "out");
                        introspect_write_flags(i, v->type, v->flags);
                        fputs("  </method>\n", i->f);
                        break;

                case 131:
                case 128:
                        fprintf(i->f, "  <property name=\"%s\" type=\"%s\" access=\"%s\">\n",
                                v->x.property.member,
                                v->x.property.signature,
                                v->type == 128 ? "readwrite" : "read");
                        introspect_write_flags(i, v->type, v->flags);
                        fputs("  </property>\n", i->f);
                        break;

                case 130:
                        fprintf(i->f, "  <signal name=\"%s\">\n", v->x.signal.member);
                        if (bus_vtable_has_names(vtable))
                                names = strempty(v->x.method.names);
                        introspect_write_arguments(i, strempty(v->x.signal.signature), &names, ((void*)0));
                        introspect_write_flags(i, v->type, v->flags);
                        fputs("  </signal>\n", i->f);
                        break;
                }

        }

        return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct introspect {int f; int trusted; } ;


 scalar_t__ IN_SET (int,int,int ) ;
 int SD_BUS_VTABLE_DEPRECATED ;
 int SD_BUS_VTABLE_METHOD_NO_REPLY ;
 int SD_BUS_VTABLE_PROPERTY_CONST ;
 int SD_BUS_VTABLE_PROPERTY_EMITS_CHANGE ;
 int SD_BUS_VTABLE_PROPERTY_EMITS_INVALIDATION ;
 int SD_BUS_VTABLE_PROPERTY_EXPLICIT ;
 int SD_BUS_VTABLE_UNPRIVILEGED ;
 int _SD_BUS_VTABLE_METHOD ;
 int _SD_BUS_VTABLE_PROPERTY ;
 int _SD_BUS_VTABLE_WRITABLE_PROPERTY ;
 int fputs (char*,int ) ;

__attribute__((used)) static void introspect_write_flags(struct introspect *i, int type, uint64_t flags) {
        if (flags & SD_BUS_VTABLE_DEPRECATED)
                fputs("   <annotation name=\"org.freedesktop.DBus.Deprecated\" value=\"true\"/>\n", i->f);

        if (type == _SD_BUS_VTABLE_METHOD && (flags & SD_BUS_VTABLE_METHOD_NO_REPLY))
                fputs("   <annotation name=\"org.freedesktop.DBus.Method.NoReply\" value=\"true\"/>\n", i->f);

        if (IN_SET(type, _SD_BUS_VTABLE_PROPERTY, _SD_BUS_VTABLE_WRITABLE_PROPERTY)) {
                if (flags & SD_BUS_VTABLE_PROPERTY_EXPLICIT)
                        fputs("   <annotation name=\"org.freedesktop.systemd1.Explicit\" value=\"true\"/>\n", i->f);

                if (flags & SD_BUS_VTABLE_PROPERTY_CONST)
                        fputs("   <annotation name=\"org.freedesktop.DBus.Property.EmitsChangedSignal\" value=\"const\"/>\n", i->f);
                else if (flags & SD_BUS_VTABLE_PROPERTY_EMITS_INVALIDATION)
                        fputs("   <annotation name=\"org.freedesktop.DBus.Property.EmitsChangedSignal\" value=\"invalidates\"/>\n", i->f);
                else if (!(flags & SD_BUS_VTABLE_PROPERTY_EMITS_CHANGE))
                        fputs("   <annotation name=\"org.freedesktop.DBus.Property.EmitsChangedSignal\" value=\"false\"/>\n", i->f);
        }

        if (!i->trusted &&
            IN_SET(type, _SD_BUS_VTABLE_METHOD, _SD_BUS_VTABLE_WRITABLE_PROPERTY) &&
            !(flags & SD_BUS_VTABLE_UNPRIVILEGED))
                fputs("   <annotation name=\"org.freedesktop.systemd1.Privileged\" value=\"true\"/>\n", i->f);
}

; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udevadm-trigger.c_help.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udevadm-trigger.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1488 x i8] c"%s trigger [OPTIONS] DEVPATH\0A\0ARequest events from the kernel.\0A\0A  -h --help                         Show this help\0A  -V --version                      Show package version\0A  -v --verbose                      Print the list of devices while running\0A  -n --dry-run                      Do not actually trigger the events\0A  -t --type=                        Type of events to trigger\0A          devices                     sysfs devices (default)\0A          subsystems                  sysfs subsystems and drivers\0A  -c --action=ACTION|help           Event action value, default is \22change\22\0A  -s --subsystem-match=SUBSYSTEM    Trigger devices from a matching subsystem\0A  -S --subsystem-nomatch=SUBSYSTEM  Exclude devices from a matching subsystem\0A  -a --attr-match=FILE[=VALUE]      Trigger devices with a matching attribute\0A  -A --attr-nomatch=FILE[=VALUE]    Exclude devices with a matching attribute\0A  -p --property-match=KEY=VALUE     Trigger devices with a matching property\0A  -g --tag-match=KEY=VALUE          Trigger devices with a matching property\0A  -y --sysname-match=NAME           Trigger devices with this /sys path\0A     --name-match=NAME              Trigger devices with this /dev name\0A  -b --parent-match=NAME            Trigger devices with that parent device\0A  -w --settle                       Wait for the triggered events to complete\0A     --wait-daemon[=SECONDS]        Wait for udevd daemon to be initialized\0A                                    before triggering uevents\0A\00", align 1
@program_invocation_short_name = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @help() #0 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8
  %2 = call i32 @printf(i8* getelementptr inbounds ([1488 x i8], [1488 x i8]* @.str, i64 0, i64 0), i8* %1)
  ret i32 0
}

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

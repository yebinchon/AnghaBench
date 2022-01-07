; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udevadm-control.c_help.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udevadm-control.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [687 x i8] c"%s control OPTION\0A\0AControl the udev daemon.\0A\0A  -h --help                Show this help\0A  -V --version             Show package version\0A  -e --exit                Instruct the daemon to cleanup and exit\0A  -l --log-priority=LEVEL  Set the udev log level for the daemon\0A  -s --stop-exec-queue     Do not execute events, queue only\0A  -S --start-exec-queue    Execute events, flush queue\0A  -R --reload              Reload rules and databases\0A  -p --property=KEY=VALUE  Set a global property for all events\0A  -m --children-max=N      Maximum number of children\0A     --ping                Wait for udev to respond to a ping message\0A  -t --timeout=SECONDS     Maximum time to block for a reply\0A\00", align 1
@program_invocation_short_name = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @help() #0 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8
  %2 = call i32 @printf(i8* getelementptr inbounds ([687 x i8], [687 x i8]* @.str, i64 0, i64 0), i8* %1)
  ret i32 0
}

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

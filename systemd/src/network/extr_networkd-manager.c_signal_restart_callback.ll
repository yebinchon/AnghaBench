; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-manager.c_signal_restart_callback.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-manager.c_signal_restart_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signalfd_siginfo = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Restart operation initiated.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.signalfd_siginfo*, i8*)* @signal_restart_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @signal_restart_callback(i32* %0, %struct.signalfd_siginfo* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.signalfd_siginfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.signalfd_siginfo* %1, %struct.signalfd_siginfo** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %11 = call i32 @assert(%struct.TYPE_3__* %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = call i32 @log_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @sd_event_source_get_event(i32* %15)
  %17 = call i32 @sd_event_exit(i32 %16, i32 0)
  ret i32 %17
}

declare dso_local i32 @assert(%struct.TYPE_3__*) #1

declare dso_local i32 @log_debug(i8*) #1

declare dso_local i32 @sd_event_exit(i32, i32) #1

declare dso_local i32 @sd_event_source_get_event(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

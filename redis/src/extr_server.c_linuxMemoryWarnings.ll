; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_linuxMemoryWarnings.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_linuxMemoryWarnings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [253 x i8] c"WARNING overcommit_memory is set to 0! Background save may fail under low memory condition. To fix this issue add 'vm.overcommit_memory = 1' to /etc/sysctl.conf and then reboot or run the command 'sysctl vm.overcommit_memory=1' for this to take effect.\00", align 1
@.str.1 = private unnamed_addr constant [368 x i8] c"WARNING you have Transparent Huge Pages (THP) support enabled in your kernel. This will create latency and memory usage issues with Redis. To fix this issue run the command 'echo never > /sys/kernel/mm/transparent_hugepage/enabled' as root, and add it to your /etc/rc.local in order to retain the setting after a reboot. Redis must be restarted after THP is disabled.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linuxMemoryWarnings() #0 {
  %1 = call i64 (...) @linuxOvercommitMemoryValue()
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @LL_WARNING, align 4
  %5 = call i32 @serverLog(i32 %4, i8* getelementptr inbounds ([253 x i8], [253 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %3, %0
  %7 = call i64 (...) @THPIsEnabled()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* @LL_WARNING, align 4
  %11 = call i32 @serverLog(i32 %10, i8* getelementptr inbounds ([368 x i8], [368 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %6
  ret void
}

declare dso_local i64 @linuxOvercommitMemoryValue(...) #1

declare dso_local i32 @serverLog(i32, i8*) #1

declare dso_local i64 @THPIsEnabled(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

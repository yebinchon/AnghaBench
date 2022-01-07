; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelTimer.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@sentinel = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@CONFIG_DEFAULT_HZ = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sentinelTimer() #0 {
  %1 = call i32 (...) @sentinelCheckTiltCondition()
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sentinel, i32 0, i32 0), align 4
  %3 = call i32 @sentinelHandleDictOfRedisInstances(i32 %2)
  %4 = call i32 (...) @sentinelRunPendingScripts()
  %5 = call i32 (...) @sentinelCollectTerminatedScripts()
  %6 = call i32 (...) @sentinelKillTimedoutScripts()
  %7 = load i32, i32* @CONFIG_DEFAULT_HZ, align 4
  %8 = call i32 (...) @rand()
  %9 = load i32, i32* @CONFIG_DEFAULT_HZ, align 4
  %10 = srem i32 %8, %9
  %11 = add nsw i32 %7, %10
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @sentinelCheckTiltCondition(...) #1

declare dso_local i32 @sentinelHandleDictOfRedisInstances(i32) #1

declare dso_local i32 @sentinelRunPendingScripts(...) #1

declare dso_local i32 @sentinelCollectTerminatedScripts(...) #1

declare dso_local i32 @sentinelKillTimedoutScripts(...) #1

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

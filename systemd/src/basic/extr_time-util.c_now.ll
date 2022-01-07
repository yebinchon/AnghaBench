; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_time-util.c_now.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_time-util.c_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @now(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timespec, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @map_clock_id(i32 %4)
  %6 = call i64 @clock_gettime(i32 %5, %struct.timespec* %3)
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert_se(i32 %8)
  %10 = call i32 @timespec_load(%struct.timespec* %3)
  ret i32 %10
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @map_clock_id(i32) #1

declare dso_local i32 @timespec_load(%struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

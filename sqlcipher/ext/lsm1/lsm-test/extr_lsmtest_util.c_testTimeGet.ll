; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_util.c_testTimeGet.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_util.c_testTimeGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.timeval = type { i64, i64 }

@zero_time = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @testTimeGet() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* %1, i32 0)
  %3 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = trunc i64 %4 to i32
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @zero_time, i32 0, i32 1), align 8
  %7 = trunc i64 %6 to i32
  %8 = sub nsw i32 %5, %7
  %9 = mul nsw i32 %8, 1000
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @zero_time, i32 0, i32 0), align 8
  %14 = trunc i64 %13 to i32
  %15 = sub nsw i32 %12, %14
  %16 = sdiv i32 %15, 1000
  %17 = add nsw i32 %9, %16
  ret i32 %17
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

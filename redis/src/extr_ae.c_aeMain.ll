; ModuleID = '/home/carl/AnghaBench/redis/src/extr_ae.c_aeMain.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_ae.c_aeMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*)*, i64 }

@AE_ALL_EVENTS = common dso_local global i32 0, align 4
@AE_CALL_AFTER_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aeMain(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %22, %1
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %28

11:                                               ; preds = %5
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %13, align 8
  %15 = icmp ne i32 (%struct.TYPE_5__*)* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = call i32 %19(%struct.TYPE_5__* %20)
  br label %22

22:                                               ; preds = %16, %11
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = load i32, i32* @AE_ALL_EVENTS, align 4
  %25 = load i32, i32* @AE_CALL_AFTER_SLEEP, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @aeProcessEvents(%struct.TYPE_5__* %23, i32 %26)
  br label %5

28:                                               ; preds = %5
  ret void
}

declare dso_local i32 @aeProcessEvents(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

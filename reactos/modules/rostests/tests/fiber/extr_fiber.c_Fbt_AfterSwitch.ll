; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/fiber/extr_fiber.c_Fbt_AfterSwitch.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/fiber/extr_fiber.c_Fbt_AfterSwitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FiberData = type { i64, i64, i32, i64, i32, i32, i64, %struct.FiberData* }

@pfdLastStarveScan = common dso_local global %struct.FiberData* null, align 8
@nQuantum = common dso_local global i32 0, align 4
@a_leQueues = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Fbt_AfterSwitch(%struct.FiberData* %0) #0 {
  %2 = alloca %struct.FiberData*, align 8
  %3 = alloca %struct.FiberData*, align 8
  store %struct.FiberData* %0, %struct.FiberData** %2, align 8
  %4 = load %struct.FiberData*, %struct.FiberData** %2, align 8
  %5 = getelementptr inbounds %struct.FiberData, %struct.FiberData* %4, i32 0, i32 7
  %6 = load %struct.FiberData*, %struct.FiberData** %5, align 8
  store %struct.FiberData* %6, %struct.FiberData** %3, align 8
  %7 = load %struct.FiberData*, %struct.FiberData** %3, align 8
  %8 = icmp ne %struct.FiberData* %7, null
  br i1 %8, label %9, label %52

9:                                                ; preds = %1
  %10 = load %struct.FiberData*, %struct.FiberData** %2, align 8
  %11 = getelementptr inbounds %struct.FiberData, %struct.FiberData* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load %struct.FiberData*, %struct.FiberData** @pfdLastStarveScan, align 8
  %16 = load %struct.FiberData*, %struct.FiberData** %3, align 8
  %17 = icmp eq %struct.FiberData* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store %struct.FiberData* null, %struct.FiberData** @pfdLastStarveScan, align 8
  br label %19

19:                                               ; preds = %18, %14
  %20 = load %struct.FiberData*, %struct.FiberData** %3, align 8
  %21 = getelementptr inbounds %struct.FiberData, %struct.FiberData* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @DeleteFiber(i32 %22)
  %24 = load %struct.FiberData*, %struct.FiberData** %3, align 8
  %25 = call i32 @free(%struct.FiberData* %24)
  br label %51

26:                                               ; preds = %9
  %27 = load i32, i32* @nQuantum, align 4
  %28 = load %struct.FiberData*, %struct.FiberData** %3, align 8
  %29 = getelementptr inbounds %struct.FiberData, %struct.FiberData* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.FiberData*, %struct.FiberData** %3, align 8
  %31 = getelementptr inbounds %struct.FiberData, %struct.FiberData* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load %struct.FiberData*, %struct.FiberData** %3, align 8
  %36 = getelementptr inbounds %struct.FiberData, %struct.FiberData* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.FiberData*, %struct.FiberData** %3, align 8
  %38 = getelementptr inbounds %struct.FiberData, %struct.FiberData* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.FiberData*, %struct.FiberData** %3, align 8
  %41 = getelementptr inbounds %struct.FiberData, %struct.FiberData* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %34, %26
  %43 = load i32*, i32** @a_leQueues, align 8
  %44 = load %struct.FiberData*, %struct.FiberData** %3, align 8
  %45 = getelementptr inbounds %struct.FiberData, %struct.FiberData* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load %struct.FiberData*, %struct.FiberData** %3, align 8
  %49 = getelementptr inbounds %struct.FiberData, %struct.FiberData* %48, i32 0, i32 2
  %50 = call i32 @InsertTailList(i32* %47, i32* %49)
  br label %51

51:                                               ; preds = %42, %19
  br label %52

52:                                               ; preds = %51, %1
  ret void
}

declare dso_local i32 @DeleteFiber(i32) #1

declare dso_local i32 @free(%struct.FiberData*) #1

declare dso_local i32 @InsertTailList(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

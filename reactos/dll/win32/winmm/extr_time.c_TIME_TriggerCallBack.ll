; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_time.c_TIME_TriggerCallBack.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_time.c_TIME_TriggerCallBack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (i32, i32, i32, i32, i32)*, i32, i32, i64 }

@.str = private unnamed_addr constant [85 x i8] c"%04lx:CallBack => lpFunc=%p wTimerID=%04X dwUser=%08lX dwTriggerTime %ld(delta %ld)\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"Unknown callback type 0x%04x for mmtime callback (%p), ignored.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @TIME_TriggerCallBack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TIME_TriggerCallBack(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = call i32 (...) @GetCurrentThreadId()
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %6 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = call i64 (...) @GetTickCount()
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %3, i32 (i32, i32, i32, i32, i32)* %6, i32 %9, i32 %12, i64 %15, i64 %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 48
  switch i32 %25, label %49 [
    i32 128, label %26
    i32 129, label %37
    i32 130, label %43
  ]

26:                                               ; preds = %1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %28, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %29(i32 %32, i32 0, i32 %35, i32 0, i32 0)
  br label %57

37:                                               ; preds = %1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %39, align 8
  %41 = ptrtoint i32 (i32, i32, i32, i32, i32)* %40 to i32
  %42 = call i32 @SetEvent(i32 %41)
  br label %57

43:                                               ; preds = %1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %45, align 8
  %47 = ptrtoint i32 (i32, i32, i32, i32, i32)* %46 to i32
  %48 = call i32 @PulseEvent(i32 %47)
  br label %57

49:                                               ; preds = %1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %54, align 8
  %56 = call i32 @FIXME(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 (i32, i32, i32, i32, i32)* %55)
  br label %57

57:                                               ; preds = %49, %43, %37, %26
  ret void
}

declare dso_local i32 @TRACE(i8*, i32, i32 (i32, i32, i32, i32, i32)*, i32, i32, i64, i64) #1

declare dso_local i32 @GetCurrentThreadId(...) #1

declare dso_local i64 @GetTickCount(...) #1

declare dso_local i32 @SetEvent(i32) #1

declare dso_local i32 @PulseEvent(i32) #1

declare dso_local i32 @FIXME(i8*, i32, i32 (i32, i32, i32, i32, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

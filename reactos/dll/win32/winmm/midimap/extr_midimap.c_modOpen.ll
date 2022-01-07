; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winmm/midimap/extr_midimap.c_modOpen.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winmm/midimap/extr_midimap.c_modOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@.str = private unnamed_addr constant [15 x i8] c"(%p %p %08lx)\0A\00", align 1
@MMSYSERR_NOMEM = common dso_local global i32 0, align 4
@MMSYSERR_NOERROR = common dso_local global i32 0, align 4
@MIDIERR_INVALIDSETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i32)* @modOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modOpen(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call i32 (...) @GetProcessHeap()
  %10 = call %struct.TYPE_5__* @HeapAlloc(i32 %9, i32 0, i32 8)
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %8, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64* %11, i32 %12, i32 %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @MMSYSERR_NOMEM, align 4
  store i32 %18, i32* %4, align 4
  br label %36

19:                                               ; preds = %3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = call i64 @MIDIMAP_LoadSettings(%struct.TYPE_5__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = ptrtoint %struct.TYPE_5__* %24 to i64
  %26 = load i64*, i64** %5, align 8
  store i64 %25, i64* %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %29, align 8
  %30 = load i32, i32* @MMSYSERR_NOERROR, align 4
  store i32 %30, i32* %4, align 4
  br label %36

31:                                               ; preds = %19
  %32 = call i32 (...) @GetProcessHeap()
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = call i32 @HeapFree(i32 %32, i32 0, %struct.TYPE_5__* %33)
  %35 = load i32, i32* @MIDIERR_INVALIDSETUP, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %31, %23, %17
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.TYPE_5__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @TRACE(i8*, i64*, i32, i32) #1

declare dso_local i64 @MIDIMAP_LoadSettings(%struct.TYPE_5__*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/sound/mmebuddy/extr_reentrancy.c_InitEntrypointMutexes.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/sound/mmebuddy/extr_reentrancy.c_InitEntrypointMutexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MMSYSERR_NOERROR = common dso_local global i32 0, align 4
@SOUND_DEVICE_TYPES = common dso_local global i64 0, align 8
@EntrypointMutexes = common dso_local global i32** null, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InitEntrypointMutexes() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @MMSYSERR_NOERROR, align 4
  store i32 %3, i32* %2, align 4
  store i64 0, i64* %1, align 8
  br label %4

4:                                                ; preds = %12, %0
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @SOUND_DEVICE_TYPES, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = load i32**, i32*** @EntrypointMutexes, align 8
  %10 = load i64, i64* %1, align 8
  %11 = getelementptr inbounds i32*, i32** %9, i64 %10
  store i32* null, i32** %11, align 8
  br label %12

12:                                               ; preds = %8
  %13 = load i64, i64* %1, align 8
  %14 = add i64 %13, 1
  store i64 %14, i64* %1, align 8
  br label %4

15:                                               ; preds = %4
  store i64 0, i64* %1, align 8
  br label %16

16:                                               ; preds = %36, %15
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @SOUND_DEVICE_TYPES, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load i32, i32* @FALSE, align 4
  %22 = call i32* @CreateMutex(i32* null, i32 %21, i32* null)
  %23 = load i32**, i32*** @EntrypointMutexes, align 8
  %24 = load i64, i64* %1, align 8
  %25 = getelementptr inbounds i32*, i32** %23, i64 %24
  store i32* %22, i32** %25, align 8
  %26 = load i32**, i32*** @EntrypointMutexes, align 8
  %27 = load i64, i64* %1, align 8
  %28 = getelementptr inbounds i32*, i32** %26, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %20
  %32 = call i32 (...) @GetLastError()
  %33 = call i32 @Win32ErrorToMmResult(i32 %32)
  store i32 %33, i32* %2, align 4
  %34 = call i32 (...) @CleanupEntrypointMutexes()
  br label %39

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %1, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %1, align 8
  br label %16

39:                                               ; preds = %31, %16
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32* @CreateMutex(i32*, i32, i32*) #1

declare dso_local i32 @Win32ErrorToMmResult(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @CleanupEntrypointMutexes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

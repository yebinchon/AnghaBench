; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winmm/extr_mixer.c_mixer_testsA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winmm/extr_mixer.c_mixer_testsA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"--- Testing ASCII functions ---\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"found %d Mixer devices\0A\00", align 1
@MMSYSERR_BADDEVICEID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"mixerGetDevCapsA: MMSYSERR_BADDEVICEID expected, got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mixer_testsA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mixer_testsA() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %6 = call i64 (...) @mixerGetNumDevs()
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %7)
  %9 = load i64, i64* %3, align 8
  %10 = add nsw i64 %9, 1
  %11 = call i64 @mixerGetDevCapsA(i64 %10, i32* %1, i32 4)
  store i64 %11, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @MMSYSERR_BADDEVICEID, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @mmsys_error(i64 %16)
  %18 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  store i64 0, i64* %4, align 8
  br label %19

19:                                               ; preds = %26, %0
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %3, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @mixer_test_deviceA(i64 %24)
  br label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %4, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %4, align 8
  br label %19

29:                                               ; preds = %19
  ret void
}

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i64 @mixerGetNumDevs(...) #1

declare dso_local i64 @mixerGetDevCapsA(i64, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @mmsys_error(i64) #1

declare dso_local i32 @mixer_test_deviceA(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

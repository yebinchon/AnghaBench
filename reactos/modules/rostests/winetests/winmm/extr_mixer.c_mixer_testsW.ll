; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winmm/extr_mixer.c_mixer_testsW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winmm/extr_mixer.c_mixer_testsW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"--- Testing WCHAR functions ---\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"found %d Mixer devices\0A\00", align 1
@MMSYSERR_BADDEVICEID = common dso_local global i64 0, align 8
@MMSYSERR_NOTSUPPORTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [82 x i8] c"mixerGetDevCapsW: MMSYSERR_BADDEVICEID or MMSYSERR_NOTSUPPORTED expected, got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mixer_testsW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mixer_testsW() #0 {
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
  %11 = call i64 @mixerGetDevCapsW(i64 %10, i32* %1, i32 4)
  store i64 %11, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @MMSYSERR_BADDEVICEID, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %0
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @MMSYSERR_NOTSUPPORTED, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %15, %0
  %20 = phi i1 [ true, %0 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %2, align 8
  %23 = call i32 @mmsys_error(i64 %22)
  %24 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @MMSYSERR_NOTSUPPORTED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %40

29:                                               ; preds = %19
  store i64 0, i64* %4, align 8
  br label %30

30:                                               ; preds = %37, %29
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* %3, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @mixer_test_deviceW(i64 %35)
  br label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %4, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %4, align 8
  br label %30

40:                                               ; preds = %28, %30
  ret void
}

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i64 @mixerGetNumDevs(...) #1

declare dso_local i64 @mixerGetDevCapsW(i64, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @mmsys_error(i64) #1

declare dso_local i32 @mixer_test_deviceW(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

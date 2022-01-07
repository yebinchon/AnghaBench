; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_kernel.c_CobbleDeviceName.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_kernel.c_CobbleDeviceName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DEVICE_NAME_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i32] [i32 37, i32 108, i32 115, i32 0], align 4
@WAVE_OUT_DEVICE_NAME = common dso_local global i32 0, align 4
@WAVE_IN_DEVICE_NAME = common dso_local global i32 0, align 4
@MIDI_OUT_DEVICE_NAME = common dso_local global i32 0, align 4
@MIDI_IN_DEVICE_NAME = common dso_local global i32 0, align 4
@AUX_DEVICE_NAME = common dso_local global i32 0, align 4
@MMSYSERR_BADDEVICEID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i32] [i32 92, i32 92, i32 46, i32 37, i32 108, i32 115, i32 37, i32 100, i32 0], align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"\\Device\00", align 1
@MMSYSERR_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CobbleDeviceName(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @MAX_DEVICE_NAME_LENGTH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %46 [
    i32 128, label %16
    i32 129, label %22
    i32 130, label %28
    i32 131, label %34
    i32 132, label %40
  ]

16:                                               ; preds = %3
  %17 = ptrtoint i32* %14 to i32
  %18 = load i32, i32* @WAVE_OUT_DEVICE_NAME, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i32*
  %21 = call i32 (i32, i8*, i32*, ...) @wsprintf(i32 %17, i8* bitcast ([4 x i32]* @.str to i8*), i32* %20)
  br label %48

22:                                               ; preds = %3
  %23 = ptrtoint i32* %14 to i32
  %24 = load i32, i32* @WAVE_IN_DEVICE_NAME, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i32*
  %27 = call i32 (i32, i8*, i32*, ...) @wsprintf(i32 %23, i8* bitcast ([4 x i32]* @.str to i8*), i32* %26)
  br label %48

28:                                               ; preds = %3
  %29 = ptrtoint i32* %14 to i32
  %30 = load i32, i32* @MIDI_OUT_DEVICE_NAME, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i32*
  %33 = call i32 (i32, i8*, i32*, ...) @wsprintf(i32 %29, i8* bitcast ([4 x i32]* @.str to i8*), i32* %32)
  br label %48

34:                                               ; preds = %3
  %35 = ptrtoint i32* %14 to i32
  %36 = load i32, i32* @MIDI_IN_DEVICE_NAME, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i32*
  %39 = call i32 (i32, i8*, i32*, ...) @wsprintf(i32 %35, i8* bitcast ([4 x i32]* @.str to i8*), i32* %38)
  br label %48

40:                                               ; preds = %3
  %41 = ptrtoint i32* %14 to i32
  %42 = load i32, i32* @AUX_DEVICE_NAME, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i32*
  %45 = call i32 (i32, i8*, i32*, ...) @wsprintf(i32 %41, i8* bitcast ([4 x i32]* @.str to i8*), i32* %44)
  br label %48

46:                                               ; preds = %3
  %47 = load i32, i32* @MMSYSERR_BADDEVICEID, align 4
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %56

48:                                               ; preds = %40, %34, %28, %22, %16
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %14, i64 %51
  %53 = load i32, i32* %6, align 4
  %54 = call i32 (i32, i8*, i32*, ...) @wsprintf(i32 %49, i8* bitcast ([9 x i32]* @.str.1 to i8*), i32* %52, i32 %53)
  %55 = load i32, i32* @MMSYSERR_NOERROR, align 4
  store i32 %55, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %56

56:                                               ; preds = %48, %46
  %57 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wsprintf(i32, i8*, i32*, ...) #2

declare dso_local i32 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

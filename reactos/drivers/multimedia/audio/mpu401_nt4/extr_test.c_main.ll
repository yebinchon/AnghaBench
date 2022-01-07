; ModuleID = '/home/carl/AnghaBench/reactos/drivers/multimedia/audio/mpu401_nt4/extr_test.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/multimedia/audio/mpu401_nt4/extr_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.Notes = private unnamed_addr constant [7 x i32] [i32 50, i32 52, i32 54, i32 55, i32 57, i32 59, i32 61], align 16
@.str = private unnamed_addr constant [32 x i8] c"Test program for MPU401 driver\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\\\\.\\MPU401_Out_0\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_FLAG_NO_BUFFERING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Device is busy or could not be found.\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Device is open, let's play some music...\0A\00", align 1
@IOCTL_MIDI_PLAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [3 x i32], align 4
  %4 = alloca [7 x i32], align 16
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %8 = bitcast [7 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([7 x i32]* @__const.main.Notes to i8*), i64 28, i1 false)
  %9 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @GENERIC_READ, align 4
  %11 = load i32, i32* @GENERIC_WRITE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @FILE_SHARE_READ, align 4
  %14 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @OPEN_EXISTING, align 4
  %17 = load i32, i32* @FILE_FLAG_NO_BUFFERING, align 4
  %18 = call i64 @CreateFile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 %15, i32* null, i32 %16, i32 %17, i32* null)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %0
  %23 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %53

24:                                               ; preds = %0
  %25 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  store i32 144, i32* %26, align 4
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  store i32 127, i32* %27, align 4
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %50, %24
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %30, 28
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1
  store i32 %36, i32* %37, align 4
  %38 = load i64, i64* %5, align 8
  %39 = load i32, i32* @IOCTL_MIDI_PLAY, align 4
  %40 = bitcast [3 x i32]* %3 to i32**
  %41 = call i32 @DeviceIoControl(i64 %38, i32 %39, i32** %40, i32 12, i32* null, i32 0, i32* %2, i32* null)
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %46, %32
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 100000
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %42

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %28

53:                                               ; preds = %22, %28
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*) #2

declare dso_local i64 @CreateFile(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @DeviceIoControl(i64, i32, i32**, i32, i32*, i32, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

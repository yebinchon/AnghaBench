; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_CheckDriver.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_CheckDriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@driver_state = common dso_local global i64 0, align 8
@SERVICE_RUNNING = common dso_local global i64 0, align 8
@VFD_OK = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@MSG_WRONG_DRIVER = common dso_local global i32 0, align 4
@VFD_NG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckDriver() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %3, align 8
  %11 = call i64 @VfdGetDriverConfig(i8* %10, i32* %4)
  %12 = load i64, i64* @ERROR_SUCCESS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %0
  %15 = call i64 @VfdCheckDriverFile(i8* %10, i32* null)
  %16 = load i64, i64* @ERROR_SUCCESS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load i64, i64* @driver_state, align 8
  %20 = load i64, i64* @SERVICE_RUNNING, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @VFD_OK, align 4
  store i32 %23, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %38

24:                                               ; preds = %18
  %25 = call i64 @VfdOpenDevice(i32 0)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @CloseHandle(i64 %30)
  %32 = load i32, i32* @VFD_OK, align 4
  store i32 %32, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %38

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %14, %0
  %35 = load i32, i32* @MSG_WRONG_DRIVER, align 4
  %36 = call i32 @PrintMessage(i32 %35)
  %37 = load i32, i32* @VFD_NG, align 4
  store i32 %37, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %38

38:                                               ; preds = %34, %29, %22
  %39 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %39)
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @VfdGetDriverConfig(i8*, i32*) #2

declare dso_local i64 @VfdCheckDriverFile(i8*, i32*) #2

declare dso_local i64 @VfdOpenDevice(i32) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32 @PrintMessage(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vcdcli/extr_vcdcli.c_IsLetterOwned.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vcdcli/extr_vcdcli.c_IsLetterOwned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64* }

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to open VCD: %x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@IOCTL_VCDROM_ENUMERATE_DRIVES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to enumerate drives: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"%c is not a drive owned by VCD\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsLetterOwned(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %9 = call i64 (...) @OpenMaster()
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @_T(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = call i64 (...) @GetLastError()
  %17 = call i32 @_ftprintf(i32 %14, i32 %15, i64 %16)
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %2, align 4
  br label %67

19:                                               ; preds = %1
  %20 = load i64, i64* %4, align 8
  %21 = load i32, i32* @IOCTL_VCDROM_ENUMERATE_DRIVES, align 4
  %22 = call i32 @DeviceIoControl(i64 %20, i32 %21, i32* null, i32 0, %struct.TYPE_3__* %6, i32 16, i64* %8, i32* null)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 @_T(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i64 (...) @GetLastError()
  %29 = call i32 @_ftprintf(i32 %26, i32 %27, i64 %28)
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @CloseHandle(i64 %30)
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %2, align 4
  br label %67

33:                                               ; preds = %19
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @CloseHandle(i64 %34)
  store i64 0, i64* %7, align 8
  br label %36

36:                                               ; preds = %51, %33
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %3, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %54

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %7, align 8
  br label %36

54:                                               ; preds = %49, %36
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %55, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 @_T(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i64, i64* %3, align 8
  %63 = call i32 @_ftprintf(i32 %60, i32 %61, i64 %62)
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %2, align 4
  br label %67

65:                                               ; preds = %54
  %66 = load i32, i32* @TRUE, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %59, %25, %13
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @OpenMaster(...) #1

declare dso_local i32 @_ftprintf(i32, i32, i64) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @DeviceIoControl(i64, i32, i32*, i32, %struct.TYPE_3__*, i32, i64*, i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

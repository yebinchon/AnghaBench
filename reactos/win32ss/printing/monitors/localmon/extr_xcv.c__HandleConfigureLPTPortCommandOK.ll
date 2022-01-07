; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/printing/monitors/localmon/extr_xcv.c__HandleConfigureLPTPortCommandOK.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/printing/monitors/localmon/extr_xcv.c__HandleConfigureLPTPortCommandOK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@SERVER_ACCESS_ADMINISTER = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"RevertToPrinterSelf failed with error %lu!\0A\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i32] [i32 83, i32 79, i32 70, i32 84, i32 87, i32 65, i32 82, i32 69, i32 92, i32 77, i32 105, i32 99, i32 114, i32 111, i32 115, i32 111, i32 102, i32 116, i32 92, i32 87, i32 105, i32 110, i32 100, i32 111, i32 119, i32 115, i32 32, i32 78, i32 84, i32 92, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 86, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 92, i32 87, i32 105, i32 110, i32 100, i32 111, i32 119, i32 115, i32 0], align 4
@KEY_SET_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"RegOpenKeyExW failed with status %lu!\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i32] [i32 84, i32 114, i32 97, i32 110, i32 115, i32 109, i32 105, i32 115, i32 115, i32 105, i32 111, i32 110, i32 82, i32 101, i32 116, i32 114, i32 121, i32 84, i32 105, i32 109, i32 101, i32 111, i32 117, i32 116, i32 0], align 4
@REG_SZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"RegSetValueExW failed with status %lu!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i64, i64*)* @_HandleConfigureLPTPortCommandOK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_HandleConfigureLPTPortCommandOK(%struct.TYPE_3__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i64*, i64** %6, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16, %13, %3
  %20 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %20, i64* %8, align 8
  br label %68

21:                                               ; preds = %16
  %22 = load i64*, i64** %6, align 8
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SERVER_ACCESS_ADMINISTER, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  store i64 %30, i64* %8, align 8
  br label %68

31:                                               ; preds = %21
  %32 = call i32* (...) @RevertToPrinterSelf()
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = call i64 (...) @GetLastError()
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %37)
  br label %68

39:                                               ; preds = %31
  %40 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %41 = load i32, i32* @KEY_SET_VALUE, align 4
  %42 = call i64 @RegOpenKeyExW(i32 %40, i8* bitcast ([53 x i32]* @.str.1 to i8*), i32 0, i32 %41, i32** %9)
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @ERROR_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  br label %68

49:                                               ; preds = %39
  %50 = load i64, i64* %5, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @wcslen(i32 %51)
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  store i64 %55, i64* %7, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* @REG_SZ, align 4
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i64 @RegSetValueExW(i32* %56, i8* bitcast ([25 x i32]* @.str.3 to i8*), i32 0, i32 %57, i64 %58, i64 %59)
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @ERROR_SUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %49
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 %65)
  br label %68

67:                                               ; preds = %49
  br label %68

68:                                               ; preds = %67, %64, %46, %35, %29, %19
  %69 = load i32*, i32** %9, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @RegCloseKey(i32* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32*, i32** %10, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @ImpersonatePrinterClient(i32* %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i64, i64* %8, align 8
  ret i64 %81
}

declare dso_local i32* @RevertToPrinterSelf(...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32**) #1

declare dso_local i32 @wcslen(i32) #1

declare dso_local i64 @RegSetValueExW(i32*, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @RegCloseKey(i32*) #1

declare dso_local i32 @ImpersonatePrinterClient(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

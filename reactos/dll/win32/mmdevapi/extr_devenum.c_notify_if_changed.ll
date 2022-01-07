; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mmdevapi/extr_devenum.c_notify_if_changed.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mmdevapi/extr_devenum.c_notify_if_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"GetId failed: %08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*, i64*, i32*)* @notify_if_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @notify_if_changed(i32 %0, i32 %1, i32 %2, i64* %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [64 x i64], align 16
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 512, i32* %16, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i64*, i64** %11, align 8
  %20 = getelementptr inbounds [64 x i64], [64 x i64]* %14, i64 0, i64 0
  %21 = bitcast i64* %20 to i32*
  %22 = call i64 @RegQueryValueExW(i32 %18, i64* %19, i32 0, i32* null, i32* %21, i32* %16)
  %23 = load i64, i64* @ERROR_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %6
  %26 = load i64*, i64** %12, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %25
  %31 = load i32*, i32** %13, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i32*, i32** %13, align 8
  %35 = call i32 @IMMDevice_GetId(i32* %34, i64** %15)
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = call i64 @FAILED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* %17, align 4
  %41 = call i32 @ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %7, align 4
  br label %102

43:                                               ; preds = %33
  br label %45

44:                                               ; preds = %30
  store i64* null, i64** %15, align 8
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i64*, i64** %15, align 8
  %49 = call i32 @notify_clients(i32 %46, i32 %47, i64* %48)
  %50 = load i64*, i64** %12, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  store i64 0, i64* %51, align 8
  %52 = load i64*, i64** %15, align 8
  %53 = call i32 @CoTaskMemFree(i64* %52)
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %7, align 4
  br label %102

55:                                               ; preds = %25
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %7, align 4
  br label %102

57:                                               ; preds = %6
  %58 = load i64*, i64** %12, align 8
  %59 = getelementptr inbounds [64 x i64], [64 x i64]* %14, i64 0, i64 0
  %60 = call i32 @lstrcmpW(i64* %58, i64* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %7, align 4
  br label %102

64:                                               ; preds = %57
  %65 = getelementptr inbounds [64 x i64], [64 x i64]* %14, i64 0, i64 0
  %66 = load i64, i64* %65, align 16
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = getelementptr inbounds [64 x i64], [64 x i64]* %14, i64 0, i64 0
  %72 = call i32 @notify_clients(i32 %69, i32 %70, i64* %71)
  %73 = load i64*, i64** %12, align 8
  %74 = getelementptr inbounds [64 x i64], [64 x i64]* %14, i64 0, i64 0
  %75 = call i32 @memcpy(i64* %73, i64* %74, i32 512)
  %76 = load i32, i32* @TRUE, align 4
  store i32 %76, i32* %7, align 4
  br label %102

77:                                               ; preds = %64
  %78 = load i32*, i32** %13, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load i32*, i32** %13, align 8
  %82 = call i32 @IMMDevice_GetId(i32* %81, i64** %15)
  store i32 %82, i32* %17, align 4
  %83 = load i32, i32* %17, align 4
  %84 = call i64 @FAILED(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* %17, align 4
  %88 = call i32 @ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %7, align 4
  br label %102

90:                                               ; preds = %80
  br label %92

91:                                               ; preds = %77
  store i64* null, i64** %15, align 8
  br label %92

92:                                               ; preds = %91, %90
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i64*, i64** %15, align 8
  %96 = call i32 @notify_clients(i32 %93, i32 %94, i64* %95)
  %97 = load i64*, i64** %12, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  store i64 0, i64* %98, align 8
  %99 = load i64*, i64** %15, align 8
  %100 = call i32 @CoTaskMemFree(i64* %99)
  %101 = load i32, i32* @TRUE, align 4
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %92, %86, %68, %62, %55, %45, %39
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i64 @RegQueryValueExW(i32, i64*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @IMMDevice_GetId(i32*, i64**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @notify_clients(i32, i32, i64*) #1

declare dso_local i32 @CoTaskMemFree(i64*) #1

declare dso_local i32 @lstrcmpW(i64*, i64*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

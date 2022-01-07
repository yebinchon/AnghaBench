; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/userenv/extr_profile.c_DecrementRefCount.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/userenv/extr_profile.c_DecrementRefCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"DecrementRefCount(%S %p)\0A\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [57 x i32] [i32 83, i32 79, i32 70, i32 84, i32 87, i32 65, i32 82, i32 69, i32 92, i32 77, i32 105, i32 99, i32 114, i32 111, i32 115, i32 111, i32 102, i32 116, i32 92, i32 87, i32 105, i32 110, i32 100, i32 111, i32 119, i32 115, i32 32, i32 78, i32 84, i32 92, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 86, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 92, i32 80, i32 114, i32 111, i32 102, i32 105, i32 108, i32 101, i32 76, i32 105, i32 115, i32 116, i32 0], align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"Error: %lu\0A\00", align 1
@KEY_SET_VALUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i32] [i32 82, i32 101, i32 102, i32 67, i32 111, i32 117, i32 110, i32 116, i32 0], align 4
@REG_DWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64*)* @DecrementRefCount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DecrementRefCount(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = load i64*, i64** %4, align 8
  %14 = call i32 (i8*, i64, ...) @DPRINT1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %12, i64* %13)
  %15 = load i32*, i32** @HKEY_LOCAL_MACHINE, align 8
  %16 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %17 = call i64 @RegOpenKeyExW(i32* %15, i8* bitcast ([57 x i32]* @.str.1 to i8*), i32 0, i32 %16, i32** %5)
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @ERROR_SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i64, i64* %10, align 8
  %23 = call i32 (i8*, i64, ...) @DPRINT1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %22)
  br label %68

24:                                               ; preds = %2
  %25 = load i32*, i32** %5, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %28 = load i32, i32* @KEY_SET_VALUE, align 4
  %29 = or i32 %27, %28
  %30 = call i64 @RegOpenKeyExW(i32* %25, i8* %26, i32 0, i32 %29, i32** %6)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @ERROR_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i64, i64* %10, align 8
  %36 = call i32 (i8*, i64, ...) @DPRINT1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %35)
  br label %68

37:                                               ; preds = %24
  store i64 8, i64* %8, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = ptrtoint i64* %7 to i32
  %40 = call i64 @RegQueryValueExW(i32* %38, i8* bitcast ([9 x i32]* @.str.3 to i8*), i32* null, i64* %9, i32 %39, i64* %8)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @ERROR_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i64, i64* %10, align 8
  %46 = call i32 (i8*, i64, ...) @DPRINT1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %45)
  br label %68

47:                                               ; preds = %37
  %48 = load i64, i64* %7, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %7, align 8
  store i64 8, i64* %8, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* @REG_DWORD, align 4
  %52 = ptrtoint i64* %7 to i32
  %53 = load i64, i64* %8, align 8
  %54 = call i64 @RegSetValueExW(i32* %50, i8* bitcast ([9 x i32]* @.str.3 to i8*), i32 0, i32 %51, i32 %52, i64 %53)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* @ERROR_SUCCESS, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load i64, i64* %10, align 8
  %60 = call i32 (i8*, i64, ...) @DPRINT1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %59)
  br label %68

61:                                               ; preds = %47
  %62 = load i64*, i64** %4, align 8
  %63 = icmp ne i64* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i64, i64* %7, align 8
  %66 = load i64*, i64** %4, align 8
  store i64 %65, i64* %66, align 8
  br label %67

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67, %58, %44, %34, %21
  %69 = load i32*, i32** %6, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @RegCloseKey(i32* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32*, i32** %5, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @RegCloseKey(i32* %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i64, i64* %10, align 8
  ret i64 %81
}

declare dso_local i32 @DPRINT1(i8*, i64, ...) #1

declare dso_local i64 @RegOpenKeyExW(i32*, i8*, i32, i32, i32**) #1

declare dso_local i64 @RegQueryValueExW(i32*, i8*, i32*, i64*, i32, i64*) #1

declare dso_local i64 @RegSetValueExW(i32*, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

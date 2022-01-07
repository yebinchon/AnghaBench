; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_automation.c_find_registry_key.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_automation.c_find_registry_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32*, i32*, i32, i64*)* @find_registry_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_registry_key(i64 %0, i32* %1, i32* %2, i32 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i32* null, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %17, align 8
  %19 = load i64*, i64** %11, align 8
  store i64 0, i64* %19, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i64 @RegOpenKeyExA(i64 %20, i32* %21, i32 0, i32 %22, i64* %15)
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* @ERROR_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i64, i64* %12, align 8
  store i64 %28, i64* %6, align 8
  br label %102

29:                                               ; preds = %5
  %30 = load i64, i64* %15, align 8
  %31 = call i64 @RegQueryInfoKeyA(i64 %30, i32* null, i32* null, i32* null, i32* null, i32* %16, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @ERROR_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* %12, align 8
  store i64 %36, i64* %6, align 8
  br label %102

37:                                               ; preds = %29
  %38 = call i32 (...) @GetProcessHeap()
  %39 = load i32, i32* %16, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %16, align 4
  %41 = call i32* @HeapAlloc(i32 %38, i32 0, i32 %40)
  store i32* %41, i32** %13, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %44, i64* %6, align 8
  br label %102

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %81, %45
  %47 = load i64, i64* %17, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %46
  %50 = load i64, i64* %15, align 8
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %14, align 4
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %16, align 4
  %55 = call i64 @RegEnumKeyA(i64 %50, i32 %51, i32* %53, i32 %54)
  %56 = load i64, i64* @ERROR_SUCCESS, align 8
  %57 = icmp eq i64 %55, %56
  br label %58

58:                                               ; preds = %49, %46
  %59 = phi i1 [ false, %46 ], [ %57, %49 ]
  br i1 %59, label %60, label %82

60:                                               ; preds = %58
  %61 = load i32*, i32** %13, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @strcmp(i32* %61, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = load i64, i64* %15, align 8
  %67 = load i64*, i64** %11, align 8
  store i64 %66, i64* %67, align 8
  %68 = load i64, i64* @TRUE, align 8
  store i64 %68, i64* %17, align 8
  br label %81

69:                                               ; preds = %60
  %70 = load i64, i64* %15, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i64*, i64** %11, align 8
  %75 = call i64 @find_registry_key(i64 %70, i32* %71, i32* %72, i32 %73, i64* %74)
  %76 = load i64, i64* @ERROR_SUCCESS, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i64, i64* @TRUE, align 8
  store i64 %79, i64* %17, align 8
  br label %80

80:                                               ; preds = %78, %69
  br label %81

81:                                               ; preds = %80, %65
  br label %46

82:                                               ; preds = %58
  %83 = load i64*, i64** %11, align 8
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %15, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i64, i64* %15, align 8
  %89 = call i32 @RegCloseKey(i64 %88)
  br label %90

90:                                               ; preds = %87, %82
  %91 = call i32 (...) @GetProcessHeap()
  %92 = load i32*, i32** %13, align 8
  %93 = call i32 @HeapFree(i32 %91, i32 0, i32* %92)
  %94 = load i64, i64* %17, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i64, i64* @ERROR_SUCCESS, align 8
  br label %100

98:                                               ; preds = %90
  %99 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i64 [ %97, %96 ], [ %99, %98 ]
  store i64 %101, i64* %6, align 8
  br label %102

102:                                              ; preds = %100, %43, %35, %27
  %103 = load i64, i64* %6, align 8
  ret i64 %103
}

declare dso_local i64 @RegOpenKeyExA(i64, i32*, i32, i32, i64*) #1

declare dso_local i64 @RegQueryInfoKeyA(i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @RegEnumKeyA(i64, i32, i32*, i32) #1

declare dso_local i32 @strcmp(i32*, i32*) #1

declare dso_local i32 @RegCloseKey(i64) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

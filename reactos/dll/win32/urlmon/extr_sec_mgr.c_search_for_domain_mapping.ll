; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_sec_mgr.c_search_for_domain_mapping.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_sec_mgr.c_search_for_domain_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_FALSE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Failed to retrieve information about key\0A\00", align 1
@E_UNEXPECTED = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64, i64*)* @search_for_domain_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_for_domain_mapping(i32 %0, i32 %1, i32 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %19 = load i32, i32* @S_FALSE, align 4
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @RegQueryInfoKeyW(i32 %20, i32* null, i32* null, i32* null, i64* %13, i64* %14, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null)
  store i64 %21, i64* %16, align 8
  %22 = load i64, i64* %16, align 8
  %23 = load i64, i64* @ERROR_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = call i32 @WARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @E_UNEXPECTED, align 4
  store i32 %27, i32* %6, align 4
  br label %86

28:                                               ; preds = %5
  %29 = load i64, i64* %13, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @S_FALSE, align 4
  store i32 %32, i32* %6, align 4
  br label %86

33:                                               ; preds = %28
  %34 = load i64, i64* %14, align 8
  %35 = add nsw i64 %34, 1
  %36 = mul i64 %35, 4
  %37 = call i32* @heap_alloc(i64 %36)
  store i32* %37, i32** %12, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %41, i32* %6, align 4
  br label %86

42:                                               ; preds = %33
  store i64 0, i64* %15, align 8
  br label %43

43:                                               ; preds = %79, %42
  %44 = load i64, i64* %15, align 8
  %45 = load i64, i64* %13, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %82

47:                                               ; preds = %43
  %48 = load i64, i64* %14, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %18, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i64, i64* %15, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = call i64 @RegEnumKeyExW(i32 %50, i64 %51, i32* %52, i64* %18, i32* null, i32* null, i32* null, i32* null)
  store i64 %53, i64* %16, align 8
  %54 = load i64, i64* %16, align 8
  %55 = load i64, i64* @ERROR_SUCCESS, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %47
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @heap_free(i32* %58)
  %60 = load i32, i32* @E_UNEXPECTED, align 4
  store i32 %60, i32* %6, align 4
  br label %86

61:                                               ; preds = %47
  %62 = load i32, i32* %7, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = load i64, i64* %18, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i64, i64* %10, align 8
  %68 = load i64*, i64** %11, align 8
  %69 = call i32 @search_domain_for_zone(i32 %62, i32* %63, i64 %64, i32 %65, i32 %66, i64 %67, i64* %68)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = call i64 @FAILED(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %61
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* @S_OK, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73, %61
  br label %82

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %15, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %15, align 8
  br label %43

82:                                               ; preds = %77, %43
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @heap_free(i32* %83)
  %85 = load i32, i32* %17, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %82, %57, %40, %31, %25
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i64 @RegQueryInfoKeyW(i32, i32*, i32*, i32*, i64*, i64*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32* @heap_alloc(i64) #1

declare dso_local i64 @RegEnumKeyExW(i32, i64, i32*, i64*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32 @search_domain_for_zone(i32, i32*, i64, i32, i32, i64, i64*) #1

declare dso_local i64 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

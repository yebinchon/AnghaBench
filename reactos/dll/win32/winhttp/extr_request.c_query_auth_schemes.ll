; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_request.c_query_auth_schemes.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_request.c_query_auth_schemes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i64*, i64*)* @query_auth_schemes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @query_auth_schemes(i32* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %13, align 8
  br label %18

18:                                               ; preds = %57, %51, %4
  store i64 0, i64* %15, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @query_headers(i32* %19, i64 %20, i32* null, i32* null, i64* %15, i64* %10)
  %22 = call i64 (...) @get_last_error()
  %23 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %62

26:                                               ; preds = %18
  %27 = load i64, i64* %10, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %15, align 8
  %30 = call i32* @heap_alloc(i64 %29)
  store i32* %30, i32** %14, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = load i64, i64* @FALSE, align 8
  store i64 %33, i64* %5, align 8
  br label %72

34:                                               ; preds = %26
  %35 = load i32*, i32** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = call i32 @query_headers(i32* %35, i64 %36, i32* null, i32* %37, i64* %15, i64* %10)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load i32*, i32** %14, align 8
  %42 = call i32 @heap_free(i32* %41)
  %43 = load i64, i64* @FALSE, align 8
  store i64 %43, i64* %5, align 8
  br label %72

44:                                               ; preds = %34
  %45 = load i32*, i32** %14, align 8
  %46 = call i64 @auth_scheme_from_header(i32* %45)
  store i64 %46, i64* %16, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = call i32 @heap_free(i32* %47)
  %49 = load i64, i64* %16, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  br label %18

52:                                               ; preds = %44
  %53 = load i64, i64* %12, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* %16, align 8
  store i64 %56, i64* %12, align 8
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i64, i64* %16, align 8
  %59 = load i64, i64* %11, align 8
  %60 = or i64 %59, %58
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* @TRUE, align 8
  store i64 %61, i64* %13, align 8
  br label %18

62:                                               ; preds = %25
  %63 = load i64, i64* %13, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i64, i64* %11, align 8
  %67 = load i64*, i64** %8, align 8
  store i64 %66, i64* %67, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i64*, i64** %9, align 8
  store i64 %68, i64* %69, align 8
  br label %70

70:                                               ; preds = %65, %62
  %71 = load i64, i64* %13, align 8
  store i64 %71, i64* %5, align 8
  br label %72

72:                                               ; preds = %70, %40, %32
  %73 = load i64, i64* %5, align 8
  ret i64 %73
}

declare dso_local i32 @query_headers(i32*, i64, i32*, i32*, i64*, i64*) #1

declare dso_local i64 @get_last_error(...) #1

declare dso_local i32* @heap_alloc(i64) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i64 @auth_scheme_from_header(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

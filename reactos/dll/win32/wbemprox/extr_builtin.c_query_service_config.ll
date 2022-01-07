; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_query_service_config.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_query_service_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SERVICE_QUERY_CONFIG = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32*)* @query_service_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @query_service_config(i32 %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @SERVICE_QUERY_CONFIG, align 4
  %12 = call i32 @OpenServiceW(i32 %9, i32* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %41

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @QueryServiceConfigW(i32 %16, i32* null, i32 0, i32* %8)
  %18 = call i64 (...) @GetLastError()
  %19 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %37

22:                                               ; preds = %15
  %23 = load i32, i32* %8, align 4
  %24 = call i32* @heap_alloc(i32 %23)
  store i32* %24, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  br label %37

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @QueryServiceConfigW(i32 %28, i32* %29, i32 %30, i32* %8)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %37

34:                                               ; preds = %27
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @heap_free(i32* %35)
  store i32* null, i32** %6, align 8
  br label %37

37:                                               ; preds = %34, %33, %26, %21
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @CloseServiceHandle(i32 %38)
  %40 = load i32*, i32** %6, align 8
  store i32* %40, i32** %3, align 8
  br label %41

41:                                               ; preds = %37, %14
  %42 = load i32*, i32** %3, align 8
  ret i32* %42
}

declare dso_local i32 @OpenServiceW(i32, i32*, i32) #1

declare dso_local i64 @QueryServiceConfigW(i32, i32*, i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32 @CloseServiceHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

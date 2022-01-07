; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_http.c_query_http_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_http.c_query_http_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"HttpQueryInfoW(%d) failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i32)* @query_http_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @query_http_info(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @HttpQueryInfoW(i32 %12, i32 %13, i32* null, i32* %7, i32* null)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %2
  %18 = call i64 (...) @GetLastError()
  %19 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = call i32* @heap_alloc(i32 %22)
  store i32* %23, i32** %6, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @HttpQueryInfoW(i32 %27, i32 %28, i32* %29, i32* %7, i32* null)
  store i64 %30, i64* %8, align 8
  br label %31

31:                                               ; preds = %21, %17, %2
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = call i64 (...) @GetLastError()
  %37 = call i32 @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %35, i64 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @heap_free(i32* %38)
  store i32* null, i32** %3, align 8
  br label %42

40:                                               ; preds = %31
  %41 = load i32*, i32** %6, align 8
  store i32* %41, i32** %3, align 8
  br label %42

42:                                               ; preds = %40, %34
  %43 = load i32*, i32** %3, align 8
  ret i32* %43
}

declare dso_local i64 @HttpQueryInfoW(i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32 @TRACE(i8*, i32, i64) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

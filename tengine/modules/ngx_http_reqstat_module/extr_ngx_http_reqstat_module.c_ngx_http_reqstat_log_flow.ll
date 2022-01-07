; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_reqstat_module/extr_ngx_http_reqstat_module.c_ngx_http_reqstat_log_flow.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_reqstat_module/extr_ngx_http_reqstat_module.c_ngx_http_reqstat_log_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32** }

@NGX_OK = common dso_local global i32 0, align 4
@NGX_HTTP_REQSTAT_BYTES_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_reqstat_log_flow(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = call i32 @ngx_http_reqstat_check_enable(%struct.TYPE_10__* %10, i32** %6, %struct.TYPE_11__** %7)
  switch i32 %11, label %15 [
    i32 128, label %12
    i32 129, label %13
    i32 130, label %13
  ]

12:                                               ; preds = %1
  store i32 128, i32* %2, align 4
  br label %62

13:                                               ; preds = %1, %1
  %14 = load i32, i32* @NGX_OK, align 4
  store i32 %14, i32* %2, align 4
  br label %62

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub i64 %21, %24
  store i64 %25, i64* %5, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i32**, i32*** %35, align 8
  store i32** %36, i32*** %9, align 8
  store i64 0, i64* %4, align 8
  br label %37

37:                                               ; preds = %57, %16
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %38, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %37
  %45 = load i32**, i32*** %9, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds i32*, i32** %45, i64 %46
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %8, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %57

52:                                               ; preds = %44
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* @NGX_HTTP_REQSTAT_BYTES_OUT, align 4
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @ngx_http_reqstat_count(i32* %53, i32 %54, i64 %55)
  br label %57

57:                                               ; preds = %52, %51
  %58 = load i64, i64* %4, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %4, align 8
  br label %37

60:                                               ; preds = %37
  %61 = load i32, i32* @NGX_OK, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %13, %12
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @ngx_http_reqstat_check_enable(%struct.TYPE_10__*, i32**, %struct.TYPE_11__**) #1

declare dso_local i32 @ngx_http_reqstat_count(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

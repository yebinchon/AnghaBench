; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_range_filter_module.c_ngx_http_range_body_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_range_filter_module.c_ngx_http_range_body_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@ngx_http_range_body_filter_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_15__*)* @ngx_http_range_body_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_range_body_filter(i32* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %8 = icmp eq %struct.TYPE_15__* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %12 = call i32 @ngx_http_next_body_filter(i32* %10, %struct.TYPE_15__* %11)
  store i32 %12, i32* %3, align 4
  br label %58

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @ngx_http_range_body_filter_module, align 4
  %16 = call %struct.TYPE_14__* @ngx_http_get_module_ctx(i32* %14, i32 %15)
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %6, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %18 = icmp eq %struct.TYPE_14__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = call i32 @ngx_http_next_body_filter(i32* %20, %struct.TYPE_15__* %21)
  store i32 %22, i32* %3, align 4
  br label %58

23:                                               ; preds = %13
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = call i32 @ngx_http_range_singlepart_body(i32* %30, %struct.TYPE_14__* %31, %struct.TYPE_15__* %32)
  store i32 %33, i32* %3, align 4
  br label %58

34:                                               ; preds = %23
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @ngx_buf_special(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %43 = call i32 @ngx_http_next_body_filter(i32* %41, %struct.TYPE_15__* %42)
  store i32 %43, i32* %3, align 4
  br label %58

44:                                               ; preds = %34
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = call i64 @ngx_http_range_test_overlapped(i32* %45, %struct.TYPE_14__* %46, %struct.TYPE_15__* %47)
  %49 = load i64, i64* @NGX_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @NGX_ERROR, align 4
  store i32 %52, i32* %3, align 4
  br label %58

53:                                               ; preds = %44
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = call i32 @ngx_http_range_multipart_body(i32* %54, %struct.TYPE_14__* %55, %struct.TYPE_15__* %56)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %51, %40, %29, %19, %9
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @ngx_http_next_body_filter(i32*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @ngx_http_get_module_ctx(i32*, i32) #1

declare dso_local i32 @ngx_http_range_singlepart_body(i32*, %struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i64 @ngx_buf_special(i32) #1

declare dso_local i64 @ngx_http_range_test_overlapped(i32*, %struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @ngx_http_range_multipart_body(i32*, %struct.TYPE_14__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

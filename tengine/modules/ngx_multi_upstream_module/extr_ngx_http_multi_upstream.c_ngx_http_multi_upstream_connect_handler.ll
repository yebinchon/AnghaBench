; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_multi_upstream_module/extr_ngx_http_multi_upstream.c_ngx_http_multi_upstream_connect_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_multi_upstream_module/extr_ngx_http_multi_upstream.c_ngx_http_multi_upstream_connect_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32*, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }

@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"multi: connect timeout %p\00", align 1
@NGX_HTTP_UPSTREAM_FT_TIMEOUT = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"multi: connect failed %p\00", align 1
@NGX_HTTP_UPSTREAM_FT_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_multi_upstream_connect_handler(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__* %8, %struct.TYPE_16__** %3, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %4, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %5, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load i32, i32* @NGX_LOG_ERR, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %25 = call i32 @ngx_log_error(i32 %20, i32 %23, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %24)
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = load i32, i32* @NGX_HTTP_UPSTREAM_FT_TIMEOUT, align 4
  %28 = call i32 @ngx_http_multi_upstream_next(%struct.TYPE_16__* %26, i32 %27)
  br label %51

29:                                               ; preds = %1
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ngx_del_timer(i32 %32)
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %35 = call i64 @ngx_http_upstream_test_connect(%struct.TYPE_16__* %34)
  %36 = load i64, i64* @NGX_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %29
  %39 = load i32, i32* @NGX_LOG_ERR, align 4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %44 = call i32 @ngx_log_error(i32 %39, i32 %42, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_16__* %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = load i32, i32* @NGX_HTTP_UPSTREAM_FT_ERROR, align 4
  %47 = call i32 @ngx_http_multi_upstream_next(%struct.TYPE_16__* %45, i32 %46)
  br label %51

48:                                               ; preds = %29
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = call i32 @ngx_http_multi_upstream_connect_init(%struct.TYPE_16__* %49)
  br label %51

51:                                               ; preds = %48, %38, %19
  ret void
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_16__*) #1

declare dso_local i32 @ngx_http_multi_upstream_next(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ngx_del_timer(i32) #1

declare dso_local i64 @ngx_http_upstream_test_connect(%struct.TYPE_16__*) #1

declare dso_local i32 @ngx_http_multi_upstream_connect_init(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

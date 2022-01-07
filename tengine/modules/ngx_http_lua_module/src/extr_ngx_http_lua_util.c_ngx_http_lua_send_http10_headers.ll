; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_send_http10_headers.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_send_http10_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, i64, %struct.TYPE_10__*, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_15__* }

@NGX_OK = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"lua sending HTTP 1.0 response headers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)* @ngx_http_lua_send_http10_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_send_http10_headers(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @NGX_OK, align 4
  store i32 %19, i32* %3, align 4
  br label %81

20:                                               ; preds = %13
  %21 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ngx_log_debug0(i32 %21, i32 %26, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %75

33:                                               ; preds = %20
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = icmp eq %struct.TYPE_11__* %37, null
  br i1 %38, label %39, label %74

39:                                               ; preds = %33
  store i64 0, i64* %6, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %7, align 8
  br label %43

43:                                               ; preds = %53, %39
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %45 = icmp ne %struct.TYPE_15__* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @ngx_buf_size(i32 %49)
  %51 = load i64, i64* %6, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %46
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  store %struct.TYPE_15__* %56, %struct.TYPE_15__** %7, align 8
  br label %43

57:                                               ; preds = %43
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  store i64 %58, i64* %61, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = icmp ne %struct.TYPE_11__* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %57
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %67, %57
  br label %74

74:                                               ; preds = %73, %33
  br label %75

75:                                               ; preds = %74, %32
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %77 = call i32 @ngx_http_send_header(%struct.TYPE_13__* %76)
  store i32 %77, i32* %8, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %75, %18
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_buf_size(i32) #1

declare dso_local i32 @ngx_http_send_header(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_ping.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_18__, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_22__* }

@NGX_HTTP_V2_PING_SIZE = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"client sent PING frame with incorrect length %uz\00", align 1
@NGX_HTTP_V2_SIZE_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"http2 PING frame\00", align 1
@NGX_HTTP_V2_ACK_FLAG = common dso_local global i32 0, align 4
@NGX_HTTP_V2_PING_FRAME = common dso_local global i32 0, align 4
@NGX_HTTP_V2_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_21__*, i32*, i32*)* @ngx_http_v2_state_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ngx_http_v2_state_ping(%struct.TYPE_21__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @NGX_HTTP_V2_PING_SIZE, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %3
  %17 = load i32, i32* @NGX_LOG_INFO, align 4
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ngx_log_error(i32 %17, i32 %22, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %29 = load i32, i32* @NGX_HTTP_V2_SIZE_ERROR, align 4
  %30 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_21__* %28, i32 %29)
  store i32* %30, i32** %4, align 8
  br label %102

31:                                               ; preds = %3
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = ptrtoint i32* %32 to i64
  %35 = ptrtoint i32* %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 4
  %38 = load i32, i32* @NGX_HTTP_V2_PING_SIZE, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32* @ngx_http_v2_state_save(%struct.TYPE_21__* %42, i32* %43, i32* %44, i32* (%struct.TYPE_21__*, i32*, i32*)* @ngx_http_v2_state_ping)
  store i32* %45, i32** %4, align 8
  br label %102

46:                                               ; preds = %31
  %47 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ngx_log_debug0(i32 %47, i32 %52, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @NGX_HTTP_V2_ACK_FLAG, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %46
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i32* @ngx_http_v2_state_skip(%struct.TYPE_21__* %62, i32* %63, i32* %64)
  store i32* %65, i32** %4, align 8
  br label %102

66:                                               ; preds = %46
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %68 = load i32, i32* @NGX_HTTP_V2_PING_SIZE, align 4
  %69 = load i32, i32* @NGX_HTTP_V2_PING_FRAME, align 4
  %70 = load i32, i32* @NGX_HTTP_V2_ACK_FLAG, align 4
  %71 = call %struct.TYPE_20__* @ngx_http_v2_get_frame(%struct.TYPE_21__* %67, i32 %68, i32 %69, i32 %70, i32 0)
  store %struct.TYPE_20__* %71, %struct.TYPE_20__** %9, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %73 = icmp eq %struct.TYPE_20__* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %76 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  %77 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_21__* %75, i32 %76)
  store i32* %77, i32** %4, align 8
  br label %102

78:                                               ; preds = %66
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %82, align 8
  store %struct.TYPE_22__* %83, %struct.TYPE_22__** %8, align 8
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* @NGX_HTTP_V2_PING_SIZE, align 4
  %89 = call i32 @ngx_cpymem(i32 %86, i32* %87, i32 %88)
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %94 = call i32 @ngx_http_v2_queue_blocked_frame(%struct.TYPE_21__* %92, %struct.TYPE_20__* %93)
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* @NGX_HTTP_V2_PING_SIZE, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32*, i32** %7, align 8
  %101 = call i32* @ngx_http_v2_state_complete(%struct.TYPE_21__* %95, i32* %99, i32* %100)
  store i32* %101, i32** %4, align 8
  br label %102

102:                                              ; preds = %78, %74, %61, %41, %16
  %103 = load i32*, i32** %4, align 8
  ret i32* %103
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

declare dso_local i32* @ngx_http_v2_connection_error(%struct.TYPE_21__*, i32) #1

declare dso_local i32* @ngx_http_v2_state_save(%struct.TYPE_21__*, i32*, i32*, i32* (%struct.TYPE_21__*, i32*, i32*)*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32* @ngx_http_v2_state_skip(%struct.TYPE_21__*, i32*, i32*) #1

declare dso_local %struct.TYPE_20__* @ngx_http_v2_get_frame(%struct.TYPE_21__*, i32, i32, i32, i32) #1

declare dso_local i32 @ngx_cpymem(i32, i32*, i32) #1

declare dso_local i32 @ngx_http_v2_queue_blocked_frame(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32* @ngx_http_v2_state_complete(%struct.TYPE_21__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

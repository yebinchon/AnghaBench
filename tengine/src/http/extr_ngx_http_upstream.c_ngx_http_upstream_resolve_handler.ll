; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_resolve_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_resolve_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i64, %struct.TYPE_21__*, i64, i32, %struct.TYPE_28__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_29__*, i32, i32, %struct.TYPE_26__* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_23__*, %struct.TYPE_22__, %struct.TYPE_27__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_27__ = type { i64, i32*, %struct.TYPE_21__* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"http upstream resolve: \22%V?%V\22\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%V could not be resolved (%i: %s)\00", align 1
@NGX_HTTP_BAD_GATEWAY = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@ngx_current_msec = common dso_local global i32 0, align 4
@NGX_SOCKADDR_STRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*)* @ngx_http_upstream_resolve_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_upstream_resolve_handler(%struct.TYPE_25__* %0) #0 {
  %2 = alloca %struct.TYPE_25__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %2, align 8
  %8 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %3, align 8
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 5
  %13 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  store %struct.TYPE_28__* %13, %struct.TYPE_28__** %5, align 8
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  store %struct.TYPE_29__* %16, %struct.TYPE_29__** %4, align 8
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  store %struct.TYPE_26__* %19, %struct.TYPE_26__** %6, align 8
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  store %struct.TYPE_27__* %22, %struct.TYPE_27__** %7, align 8
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %27 = call i32 @ngx_http_set_log_request(i32 %25, %struct.TYPE_28__* %26)
  %28 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %34, i32 0, i32 1
  %36 = call i32 @ngx_log_debug2(i32 %28, i32 %31, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32* %33, i32* %35)
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %1
  %42 = load i32, i32* @NGX_LOG_ERR, align 4
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 4
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @ngx_resolver_strerror(i64 %55)
  %57 = call i32 @ngx_log_error(i32 %42, i32 %47, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32* %49, i64 %52, i32 %56)
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %60 = load i32, i32* @NGX_HTTP_BAD_GATEWAY, align 4
  %61 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_28__* %58, %struct.TYPE_26__* %59, i32 %60)
  br label %122

62:                                               ; preds = %1
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %69, align 8
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 2
  store %struct.TYPE_21__* %70, %struct.TYPE_21__** %72, align 8
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %75 = call i64 @ngx_http_upstream_create_round_robin_peer(%struct.TYPE_28__* %73, %struct.TYPE_27__* %74)
  %76 = load i64, i64* @NGX_OK, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %62
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %81 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %82 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_28__* %79, %struct.TYPE_26__* %80, i32 %81)
  br label %122

83:                                               ; preds = %62
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %85 = call i32 @ngx_resolve_name_done(%struct.TYPE_25__* %84)
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 1
  store i32* null, i32** %87, align 8
  %88 = load i32, i32* @ngx_current_msec, align 4
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 8
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %83
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp sgt i64 %102, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %98
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 0
  store i64 %114, i64* %117, align 8
  br label %118

118:                                              ; preds = %109, %98, %83
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %121 = call i32 @ngx_http_upstream_connect(%struct.TYPE_28__* %119, %struct.TYPE_26__* %120)
  br label %122

122:                                              ; preds = %118, %78, %41
  %123 = load i64, i64* %3, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %127 = call i32 @ngx_http_run_posted_requests(%struct.TYPE_29__* %126)
  br label %128

128:                                              ; preds = %125, %122
  ret void
}

declare dso_local i32 @ngx_http_set_log_request(i32, %struct.TYPE_28__*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*, i64, i32) #1

declare dso_local i32 @ngx_resolver_strerror(i64) #1

declare dso_local i32 @ngx_http_upstream_finalize_request(%struct.TYPE_28__*, %struct.TYPE_26__*, i32) #1

declare dso_local i64 @ngx_http_upstream_create_round_robin_peer(%struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local i32 @ngx_resolve_name_done(%struct.TYPE_25__*) #1

declare dso_local i32 @ngx_http_upstream_connect(%struct.TYPE_28__*, %struct.TYPE_26__*) #1

declare dso_local i32 @ngx_http_run_posted_requests(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

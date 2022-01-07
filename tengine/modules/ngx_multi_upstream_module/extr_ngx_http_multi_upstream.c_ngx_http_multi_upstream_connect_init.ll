; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_multi_upstream_module/extr_ngx_http_multi_upstream.c_ngx_http_multi_upstream_connect_init.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_multi_upstream_module/extr_ngx_http_multi_upstream.c_ngx_http_multi_upstream_connect_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, i32, %struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_28__*, i32 }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_24__, %struct.TYPE_23__, i32, i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_29__*, i32*, i32** }
%struct.TYPE_23__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_28__* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"multi: http upstream init connection: %p\00", align 1
@ngx_http_multi_upstream_handler = common dso_local global i8* null, align 8
@ngx_http_upstream_send_request_handler = common dso_local global i32 0, align 4
@ngx_http_upstream_process_header = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_multi_upstream_connect_init(%struct.TYPE_29__* %0) #0 {
  %2 = alloca %struct.TYPE_29__*, align 8
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_20__, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %2, align 8
  %12 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %13 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %17 = call i32 @ngx_log_debug1(i32 %12, i32 %15, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.TYPE_29__* %16)
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  store %struct.TYPE_28__* %20, %struct.TYPE_28__** %4, align 8
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  store %struct.TYPE_27__* %23, %struct.TYPE_27__** %6, align 8
  %24 = load i8*, i8** @ngx_http_multi_upstream_handler, align 8
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  store i8* %24, i8** %28, align 8
  %29 = load i8*, i8** @ngx_http_multi_upstream_handler, align 8
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  store i8* %29, i8** %33, align 8
  %34 = load i32, i32* @ngx_http_upstream_send_request_handler, align 4
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @ngx_http_upstream_process_header, align 4
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 1
  store %struct.TYPE_28__* %40, %struct.TYPE_28__** %43, align 8
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 2
  store i32* null, i32** %52, align 8
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 3
  store i32** %55, i32*** %58, align 8
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 1
  store %struct.TYPE_29__* %59, %struct.TYPE_29__** %62, align 8
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %67 = call %struct.TYPE_26__* @ngx_get_multi_connection(%struct.TYPE_29__* %66)
  store %struct.TYPE_26__* %67, %struct.TYPE_26__** %3, align 8
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 1
  store i32* %71, i32** %7, align 8
  %72 = load i64, i64* @NGX_OK, align 8
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @ngx_array_init(%struct.TYPE_20__* %9, i32 %75, i32 4, i32 8)
  %77 = icmp ne i64 %72, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %1
  br label %121

79:                                               ; preds = %1
  %80 = load i32*, i32** %7, align 8
  %81 = call i32* @ngx_queue_head(i32* %80)
  store i32* %81, i32** %8, align 8
  br label %82

82:                                               ; preds = %98, %79
  %83 = load i32*, i32** %8, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = call i32* @ngx_queue_sentinel(i32* %84)
  %86 = icmp ne i32* %83, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %82
  %88 = call %struct.TYPE_25__* @ngx_array_push(%struct.TYPE_20__* %9)
  store %struct.TYPE_25__* %88, %struct.TYPE_25__** %10, align 8
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %90 = icmp eq %struct.TYPE_25__* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %121

92:                                               ; preds = %87
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = bitcast i32* %94 to %struct.TYPE_25__*
  %96 = bitcast %struct.TYPE_25__* %93 to i8*
  %97 = bitcast %struct.TYPE_25__* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 8 %97, i64 8, i1 false)
  br label %98

98:                                               ; preds = %92
  %99 = load i32*, i32** %8, align 8
  %100 = call i32* @ngx_queue_next(i32* %99)
  store i32* %100, i32** %8, align 8
  br label %82

101:                                              ; preds = %82
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %102, align 8
  store %struct.TYPE_25__* %103, %struct.TYPE_25__** %10, align 8
  store i64 0, i64* %11, align 8
  br label %104

104:                                              ; preds = %118, %101
  %105 = load i64, i64* %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ult i64 %105, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %104
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %111 = load i64, i64* %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %113, align 8
  store %struct.TYPE_28__* %114, %struct.TYPE_28__** %5, align 8
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %117 = call i32 @ngx_http_multi_upstream_init_request(%struct.TYPE_29__* %115, %struct.TYPE_28__* %116)
  br label %118

118:                                              ; preds = %109
  %119 = load i64, i64* %11, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %11, align 8
  br label %104

121:                                              ; preds = %78, %91, %104
  ret void
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_26__* @ngx_get_multi_connection(%struct.TYPE_29__*) #1

declare dso_local i64 @ngx_array_init(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32* @ngx_queue_head(i32*) #1

declare dso_local i32* @ngx_queue_sentinel(i32*) #1

declare dso_local %struct.TYPE_25__* @ngx_array_push(%struct.TYPE_20__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @ngx_queue_next(i32*) #1

declare dso_local i32 @ngx_http_multi_upstream_init_request(%struct.TYPE_29__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

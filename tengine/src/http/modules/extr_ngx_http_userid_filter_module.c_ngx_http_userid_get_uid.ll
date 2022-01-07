; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_userid_filter_module.c_ngx_http_userid_get_uid.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_userid_filter_module.c_ngx_http_userid_get_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32*, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32* }
%struct.TYPE_28__ = type { %struct.TYPE_23__*, %struct.TYPE_22__, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_24__** }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_27__ = type { i32 }

@ngx_http_userid_filter_module = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"uid cookie: \22%V\22\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"client sent too short userid cookie \22%V\22\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"client sent invalid userid cookie \22%V\22\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"uid: %08XD%08XD%08XD%08XD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_26__* (%struct.TYPE_28__*, %struct.TYPE_27__*)* @ngx_http_userid_get_uid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_26__* @ngx_http_userid_get_uid(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_25__, align 8
  %8 = alloca %struct.TYPE_25__, align 8
  %9 = alloca %struct.TYPE_24__**, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  %11 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %12 = load i32, i32* @ngx_http_userid_filter_module, align 4
  %13 = call %struct.TYPE_26__* @ngx_http_get_module_ctx(%struct.TYPE_28__* %11, i32 %12)
  store %struct.TYPE_26__* %13, %struct.TYPE_26__** %10, align 8
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %15 = icmp ne %struct.TYPE_26__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  store %struct.TYPE_26__* %17, %struct.TYPE_26__** %3, align 8
  br label %143

18:                                               ; preds = %2
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %20 = icmp eq %struct.TYPE_26__* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.TYPE_26__* @ngx_pcalloc(i32 %24, i32 24)
  store %struct.TYPE_26__* %25, %struct.TYPE_26__** %10, align 8
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %27 = icmp eq %struct.TYPE_26__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %3, align 8
  br label %143

29:                                               ; preds = %21
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %32 = load i32, i32* @ngx_http_userid_filter_module, align 4
  %33 = call i32 @ngx_http_set_ctx(%struct.TYPE_28__* %30, %struct.TYPE_26__* %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %18
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 1
  %42 = call i64 @ngx_http_parse_multi_header_lines(%struct.TYPE_21__* %37, i32* %39, %struct.TYPE_25__* %41)
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @NGX_DECLINED, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  store %struct.TYPE_26__* %47, %struct.TYPE_26__** %3, align 8
  br label %143

48:                                               ; preds = %34
  %49 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 1
  %57 = call i32 @ngx_log_debug1(i32 %49, i32 %54, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.TYPE_25__* %56)
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %61, 22
  br i1 %62, label %63, label %82

63:                                               ; preds = %48
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %67, align 8
  store %struct.TYPE_24__** %68, %struct.TYPE_24__*** %9, align 8
  %69 = load i32, i32* @NGX_LOG_ERR, align 4
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %75, i64 %76
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 0
  %80 = call i32 @ngx_log_error(i32 %69, i32 %74, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32* %79)
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  store %struct.TYPE_26__* %81, %struct.TYPE_26__** %3, align 8
  br label %143

82:                                               ; preds = %48
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 1
  %85 = bitcast %struct.TYPE_25__* %7 to i8*
  %86 = bitcast %struct.TYPE_25__* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 16, i1 false)
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 0
  store i32 22, i32* %87, align 8
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 1
  store i32* %90, i32** %91, align 8
  %92 = call i64 @ngx_decode_base64(%struct.TYPE_25__* %8, %struct.TYPE_25__* %7)
  %93 = load i64, i64* @NGX_ERROR, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %82
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %99, align 8
  store %struct.TYPE_24__** %100, %struct.TYPE_24__*** %9, align 8
  %101 = load i32, i32* @NGX_LOG_ERR, align 4
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %108 = load i64, i64* %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %107, i64 %108
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 0
  %112 = call i32 @ngx_log_error(i32 %101, i32 %106, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32* %111)
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  store %struct.TYPE_26__* %113, %struct.TYPE_26__** %3, align 8
  br label %143

114:                                              ; preds = %82
  %115 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @ngx_log_debug4(i32 %115, i32 %120, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %125, i32 %130, i32 %135, i32 %140)
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  store %struct.TYPE_26__* %142, %struct.TYPE_26__** %3, align 8
  br label %143

143:                                              ; preds = %114, %95, %63, %46, %28, %16
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  ret %struct.TYPE_26__* %144
}

declare dso_local %struct.TYPE_26__* @ngx_http_get_module_ctx(%struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_26__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_28__*, %struct.TYPE_26__*, i32) #1

declare dso_local i64 @ngx_http_parse_multi_header_lines(%struct.TYPE_21__*, i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_25__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_decode_base64(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

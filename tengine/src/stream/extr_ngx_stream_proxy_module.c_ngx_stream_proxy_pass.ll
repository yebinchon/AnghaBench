; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_proxy_module.c_ngx_stream_proxy_pass.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_proxy_module.c_ngx_stream_proxy_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_18__ = type { i32*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_20__*, i32*, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@ngx_stream_core_module = common dso_local global i32 0, align 4
@ngx_stream_proxy_handler = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_21__*, i32*, i8*)* @ngx_stream_proxy_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_stream_proxy_pass(%struct.TYPE_21__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_17__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_20__, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %8, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %25 = icmp ne %struct.TYPE_20__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %94

27:                                               ; preds = %21
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %29 = load i32, i32* @ngx_stream_core_module, align 4
  %30 = call %struct.TYPE_19__* @ngx_stream_conf_get_module_srv_conf(%struct.TYPE_21__* %28, i32 %29)
  store %struct.TYPE_19__* %30, %struct.TYPE_19__** %13, align 8
  %31 = load i32, i32* @ngx_stream_proxy_handler, align 4
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32* %40, i32** %11, align 8
  %41 = call i32 @ngx_memzero(%struct.TYPE_17__* %14, i32 32)
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 4
  store %struct.TYPE_21__* %42, %struct.TYPE_21__** %43, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 3
  store i32* %44, i32** %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  store %struct.TYPE_20__* %12, %struct.TYPE_20__** %46, align 8
  %47 = call i64 @ngx_stream_compile_complex_value(%struct.TYPE_17__* %14)
  %48 = load i64, i64* @NGX_OK, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %27
  %51 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %51, i8** %4, align 8
  br label %94

52:                                               ; preds = %27
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %52
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.TYPE_20__* @ngx_palloc(i32 %59, i32 8)
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  store %struct.TYPE_20__* %60, %struct.TYPE_20__** %62, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %64, align 8
  %66 = icmp eq %struct.TYPE_20__* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %68, i8** %4, align 8
  br label %94

69:                                               ; preds = %56
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %71, align 8
  %73 = bitcast %struct.TYPE_20__* %72 to i8*
  %74 = bitcast %struct.TYPE_20__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 8, i1 false)
  %75 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %75, i8** %4, align 8
  br label %94

76:                                               ; preds = %52
  %77 = call i32 @ngx_memzero(%struct.TYPE_17__* %9, i32 32)
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %83 = call i32* @ngx_stream_upstream_add(%struct.TYPE_21__* %82, %struct.TYPE_17__* %9, i32 0)
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  store i32* %83, i32** %85, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %76
  %91 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %91, i8** %4, align 8
  br label %94

92:                                               ; preds = %76
  %93 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %93, i8** %4, align 8
  br label %94

94:                                               ; preds = %92, %90, %69, %67, %50, %26
  %95 = load i8*, i8** %4, align 8
  ret i8* %95
}

declare dso_local %struct.TYPE_19__* @ngx_stream_conf_get_module_srv_conf(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @ngx_stream_compile_complex_value(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_20__* @ngx_palloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @ngx_stream_upstream_add(%struct.TYPE_21__*, %struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

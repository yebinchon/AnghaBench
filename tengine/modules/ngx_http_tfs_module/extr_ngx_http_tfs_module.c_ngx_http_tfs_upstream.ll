; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_module.c_ngx_http_tfs_upstream.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_module.c_ngx_http_tfs_upstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, i32, %struct.TYPE_16__*, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { i8*, i32*, %struct.TYPE_14__, i64, i32* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_15__ = type { i32, i32 }

@NGX_HTTP_TFS_UPSTREAM_CREATE = common dso_local global i32 0, align 4
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_http_tfs_upstream_parse = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"no servers are inside tfs upstream\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"type rcs_server must set rcs_interface directives in tfs_upstream block\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"type rcs must set rcs_heartbeat directives in tfs_upstream block\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"type rcs must set rcs_zone directives in tfs_upstream block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_17__*, i32*, i8*)* @ngx_http_tfs_upstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_tfs_upstream(%struct.TYPE_17__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_15__, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = call i32 @ngx_memzero(%struct.TYPE_15__* %9, i32 8)
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %25 = load i32, i32* @NGX_HTTP_TFS_UPSTREAM_CREATE, align 4
  %26 = call %struct.TYPE_16__* @ngx_http_tfs_upstream_add(%struct.TYPE_17__* %24, %struct.TYPE_15__* %9, i32 %25)
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %12, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %28 = icmp eq %struct.TYPE_16__* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %30, i8** %4, align 8
  br label %106

31:                                               ; preds = %3
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = bitcast %struct.TYPE_17__* %11 to i8*
  %34 = bitcast %struct.TYPE_17__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 32, i1 false)
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  store %struct.TYPE_16__* %35, %struct.TYPE_16__** %37, align 8
  %38 = load i32, i32* @ngx_http_tfs_upstream_parse, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = call i8* @ngx_conf_parse(%struct.TYPE_17__* %44, i32* null)
  store i8* %45, i8** %8, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = bitcast %struct.TYPE_17__* %46 to i8*
  %48 = bitcast %struct.TYPE_17__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 32, i1 false)
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** @NGX_CONF_OK, align 8
  %51 = icmp ne i8* %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %31
  %53 = load i8*, i8** %8, align 8
  store i8* %53, i8** %4, align 8
  br label %106

54:                                               ; preds = %31
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32, i32* @NGX_LOG_EMERG, align 4
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %62 = call i32 @ngx_conf_log_error(i32 %60, %struct.TYPE_17__* %61, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %63 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %63, i8** %4, align 8
  br label %106

64:                                               ; preds = %54
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %104

69:                                               ; preds = %64
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = load i32, i32* @NGX_LOG_EMERG, align 4
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %80 = call i32 @ngx_conf_log_error(i32 %78, %struct.TYPE_17__* %79, i32 0, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %81, i8** %4, align 8
  br label %106

82:                                               ; preds = %69
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load i32, i32* @NGX_LOG_EMERG, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %91 = call i32 @ngx_conf_log_error(i32 %89, %struct.TYPE_17__* %90, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %92, i8** %4, align 8
  br label %106

93:                                               ; preds = %82
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i32, i32* @NGX_LOG_EMERG, align 4
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %101 = call i32 @ngx_conf_log_error(i32 %99, %struct.TYPE_17__* %100, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %102, i8** %4, align 8
  br label %106

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103, %64
  %105 = load i8*, i8** %8, align 8
  store i8* %105, i8** %4, align 8
  br label %106

106:                                              ; preds = %104, %98, %88, %77, %59, %52, %29
  %107 = load i8*, i8** %4, align 8
  ret i8* %107
}

declare dso_local i32 @ngx_memzero(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_16__* @ngx_http_tfs_upstream_add(%struct.TYPE_17__*, %struct.TYPE_15__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ngx_conf_parse(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_17__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/t/data/fake-shm-module/extr_ngx_http_lua_fake_shm_module.c_ngx_http_lua_fake_shm.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/t/data/fake-shm-module/extr_ngx_http_lua_fake_shm_module.c_ngx_http_lua_fake_shm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_17__ }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"invalid lua fake_shm name \22%V\22\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"invalid lua fake_shm size \22%V\22\00", align 1
@ngx_http_lua_fake_shm_module = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"lua_fake_shm \22%V\22 is already defined as \22%V\22\00", align 1
@ngx_http_lua_fake_shm_init_zone = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_21__*, i32*, i8*)* @ngx_http_lua_fake_shm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_lua_fake_shm(%struct.TYPE_21__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_18__**, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %8, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %47

21:                                               ; preds = %3
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32* @ngx_palloc(i32 %24, i32 4)
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %33, i8** %4, align 8
  br label %141

34:                                               ; preds = %21
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @ngx_array_init(i32* %37, i32 %40, i32 2, i32 8)
  %42 = load i64, i64* @NGX_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %45, i8** %4, align 8
  br label %141

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %3
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  store %struct.TYPE_17__* %52, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %13, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i64 1
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %47
  %59 = load i32, i32* @NGX_LOG_EMERG, align 4
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i64 1
  %63 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, %struct.TYPE_17__*, ...) @ngx_conf_log_error(i32 %59, %struct.TYPE_21__* %60, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %62)
  %64 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %64, i8** %4, align 8
  br label %141

65:                                               ; preds = %47
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i64 1
  %68 = bitcast %struct.TYPE_17__* %10 to i8*
  %69 = bitcast %struct.TYPE_17__* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 8, i1 false)
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i64 2
  %72 = call i32 @ngx_parse_size(%struct.TYPE_17__* %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp sle i32 %73, 8191
  br i1 %74, label %75, label %82

75:                                               ; preds = %65
  %76 = load i32, i32* @NGX_LOG_EMERG, align 4
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i64 2
  %80 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, %struct.TYPE_17__*, ...) @ngx_conf_log_error(i32 %76, %struct.TYPE_21__* %77, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_17__* %79)
  %81 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %81, i8** %4, align 8
  br label %141

82:                                               ; preds = %65
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call %struct.TYPE_20__* @ngx_pcalloc(i32 %85, i32 16)
  store %struct.TYPE_20__* %86, %struct.TYPE_20__** %13, align 8
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %88 = icmp eq %struct.TYPE_20__* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %90, i8** %4, align 8
  br label %141

91:                                               ; preds = %82
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 1
  %94 = bitcast %struct.TYPE_17__* %93 to i8*
  %95 = bitcast %struct.TYPE_17__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 8 %95, i64 8, i1 false)
  %96 = load i32, i32* %14, align 4
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = call %struct.TYPE_18__* @ngx_http_lua_shared_memory_add(%struct.TYPE_21__* %99, %struct.TYPE_17__* %10, i64 %101, i32* @ngx_http_lua_fake_shm_module)
  store %struct.TYPE_18__* %102, %struct.TYPE_18__** %11, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %104 = icmp eq %struct.TYPE_18__* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %91
  %106 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %106, i8** %4, align 8
  br label %141

107:                                              ; preds = %91
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %109, align 8
  %111 = icmp ne %struct.TYPE_20__* %110, null
  br i1 %111, label %112, label %122

112:                                              ; preds = %107
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %114, align 8
  store %struct.TYPE_20__* %115, %struct.TYPE_20__** %13, align 8
  %116 = load i32, i32* @NGX_LOG_EMERG, align 4
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 1
  %120 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, %struct.TYPE_17__*, ...) @ngx_conf_log_error(i32 %116, %struct.TYPE_21__* %117, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_17__* %10, %struct.TYPE_17__* %119)
  %121 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %121, i8** %4, align 8
  br label %141

122:                                              ; preds = %107
  %123 = load i32, i32* @ngx_http_lua_fake_shm_init_zone, align 4
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  store %struct.TYPE_20__* %126, %struct.TYPE_20__** %128, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = call %struct.TYPE_18__** @ngx_array_push(i32* %131)
  store %struct.TYPE_18__** %132, %struct.TYPE_18__*** %12, align 8
  %133 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %12, align 8
  %134 = icmp eq %struct.TYPE_18__** %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %122
  %136 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %136, i8** %4, align 8
  br label %141

137:                                              ; preds = %122
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %139 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %12, align 8
  store %struct.TYPE_18__* %138, %struct.TYPE_18__** %139, align 8
  %140 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %140, i8** %4, align 8
  br label %141

141:                                              ; preds = %137, %135, %112, %105, %89, %75, %58, %44, %32
  %142 = load i8*, i8** %4, align 8
  ret i8* %142
}

declare dso_local i32* @ngx_palloc(i32, i32) #1

declare dso_local i64 @ngx_array_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_21__*, i32, i8*, %struct.TYPE_17__*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_parse_size(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_20__* @ngx_pcalloc(i32, i32) #1

declare dso_local %struct.TYPE_18__* @ngx_http_lua_shared_memory_add(%struct.TYPE_21__*, %struct.TYPE_17__*, i64, i32*) #1

declare dso_local %struct.TYPE_18__** @ngx_array_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

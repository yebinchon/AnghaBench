; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_directive.c_ngx_http_lua_shared_dict.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_directive.c_ngx_http_lua_shared_dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_18__*, i32, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_19__, i32*, %struct.TYPE_22__* }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"invalid lua shared dict name \22%V\22\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"invalid lua shared dict size \22%V\22\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"lua_shared_dict \22%V\22 is already defined as \22%V\22\00", align 1
@ngx_http_lua_shdict_init_zone = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ngx_http_lua_shared_dict(%struct.TYPE_23__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_20__**, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %16, %struct.TYPE_22__** %8, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %47

21:                                               ; preds = %3
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32* @ngx_palloc(i32 %24, i32 4)
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %33, i8** %4, align 8
  br label %149

34:                                               ; preds = %21
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @ngx_array_init(i32* %37, i32 %40, i32 2, i32 8)
  %42 = load i64, i64* @NGX_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %45, i8** %4, align 8
  br label %149

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %3
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %51, align 8
  store %struct.TYPE_19__* %52, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %13, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i64 1
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %47
  %59 = load i32, i32* @NGX_LOG_EMERG, align 4
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i64 1
  %63 = call i32 (i32, %struct.TYPE_23__*, i32, i8*, %struct.TYPE_19__*, ...) @ngx_conf_log_error(i32 %59, %struct.TYPE_23__* %60, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.TYPE_19__* %62)
  %64 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %64, i8** %4, align 8
  br label %149

65:                                               ; preds = %47
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i64 1
  %68 = bitcast %struct.TYPE_19__* %10 to i8*
  %69 = bitcast %struct.TYPE_19__* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 8, i1 false)
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i64 2
  %72 = call i32 @ngx_parse_size(%struct.TYPE_19__* %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp sle i32 %73, 8191
  br i1 %74, label %75, label %82

75:                                               ; preds = %65
  %76 = load i32, i32* @NGX_LOG_EMERG, align 4
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i64 2
  %80 = call i32 (i32, %struct.TYPE_23__*, i32, i8*, %struct.TYPE_19__*, ...) @ngx_conf_log_error(i32 %76, %struct.TYPE_23__* %77, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_19__* %79)
  %81 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %81, i8** %4, align 8
  br label %149

82:                                               ; preds = %65
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call %struct.TYPE_21__* @ngx_pcalloc(i32 %85, i32 24)
  store %struct.TYPE_21__* %86, %struct.TYPE_21__** %13, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %88 = icmp eq %struct.TYPE_21__* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %90, i8** %4, align 8
  br label %149

91:                                               ; preds = %82
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = bitcast %struct.TYPE_19__* %93 to i8*
  %95 = bitcast %struct.TYPE_19__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 8 %95, i64 8, i1 false)
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 2
  store %struct.TYPE_22__* %96, %struct.TYPE_22__** %98, align 8
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 1
  store i32* %102, i32** %104, align 8
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = call %struct.TYPE_20__* @ngx_http_lua_shared_memory_add(%struct.TYPE_23__* %105, %struct.TYPE_19__* %10, i64 %107, i32* @ngx_http_lua_module)
  store %struct.TYPE_20__* %108, %struct.TYPE_20__** %11, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %110 = icmp eq %struct.TYPE_20__* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %91
  %112 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %112, i8** %4, align 8
  br label %149

113:                                              ; preds = %91
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %115, align 8
  %117 = icmp ne %struct.TYPE_21__* %116, null
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %120, align 8
  store %struct.TYPE_21__* %121, %struct.TYPE_21__** %13, align 8
  %122 = load i32, i32* @NGX_LOG_EMERG, align 4
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 0
  %126 = call i32 (i32, %struct.TYPE_23__*, i32, i8*, %struct.TYPE_19__*, ...) @ngx_conf_log_error(i32 %122, %struct.TYPE_23__* %123, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_19__* %10, %struct.TYPE_19__* %125)
  %127 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %127, i8** %4, align 8
  br label %149

128:                                              ; preds = %113
  %129 = load i32, i32* @ngx_http_lua_shdict_init_zone, align 4
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 0
  store %struct.TYPE_21__* %132, %struct.TYPE_21__** %134, align 8
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = call %struct.TYPE_20__** @ngx_array_push(i32* %137)
  store %struct.TYPE_20__** %138, %struct.TYPE_20__*** %12, align 8
  %139 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %12, align 8
  %140 = icmp eq %struct.TYPE_20__** %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %128
  %142 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %142, i8** %4, align 8
  br label %149

143:                                              ; preds = %128
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %145 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %12, align 8
  store %struct.TYPE_20__* %144, %struct.TYPE_20__** %145, align 8
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  store i32 1, i32* %147, align 8
  %148 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %148, i8** %4, align 8
  br label %149

149:                                              ; preds = %143, %141, %118, %111, %89, %75, %58, %44, %32
  %150 = load i8*, i8** %4, align 8
  ret i8* %150
}

declare dso_local i32* @ngx_palloc(i32, i32) #1

declare dso_local i64 @ngx_array_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_23__*, i32, i8*, %struct.TYPE_19__*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_parse_size(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_21__* @ngx_pcalloc(i32, i32) #1

declare dso_local %struct.TYPE_20__* @ngx_http_lua_shared_memory_add(%struct.TYPE_23__*, %struct.TYPE_19__*, i64, i32*) #1

declare dso_local %struct.TYPE_20__** @ngx_array_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

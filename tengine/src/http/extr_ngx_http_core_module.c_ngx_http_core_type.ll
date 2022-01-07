; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_core_module.c_ngx_http_core_type.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_core_module.c_ngx_http_core_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_14__*, %struct.TYPE_14__ }

@.str = private unnamed_addr constant [8 x i8] c"include\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"invalid number of arguments in \22include\22 directive\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [74 x i8] c"duplicate extension \22%V\22, content type: \22%V\22, previous content type: \22%V\22\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_17__*, i32*, i8*)* @ngx_http_core_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_core_type(%struct.TYPE_17__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %8, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %9, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @ngx_strcmp(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %3
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 2
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i32, i32* @NGX_LOG_EMERG, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ngx_conf_log_error(i32 %37, %struct.TYPE_17__* %38, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %40, i8** %4, align 8
  br label %166

41:                                               ; preds = %29
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i8* @ngx_conf_include(%struct.TYPE_17__* %42, i32* %43, i8* %44)
  store i8* %45, i8** %4, align 8
  br label %166

46:                                               ; preds = %3
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.TYPE_14__* @ngx_palloc(i32 %49, i32 16)
  store %struct.TYPE_14__* %50, %struct.TYPE_14__** %10, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %52 = icmp eq %struct.TYPE_14__* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %54, i8** %4, align 8
  br label %166

55:                                               ; preds = %46
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i64 0
  %59 = bitcast %struct.TYPE_14__* %56 to i8*
  %60 = bitcast %struct.TYPE_14__* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 16, i1 false)
  store i64 1, i64* %12, align 8
  br label %61

61:                                               ; preds = %161, %55
  %62 = load i64, i64* %12, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = icmp ult i64 %62, %68
  br i1 %69, label %70, label %164

70:                                               ; preds = %61
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %72 = load i64, i64* %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @ngx_hash_strlow(i8* %75, i8* %80, i32 %85)
  store i64 %86, i64* %14, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  store %struct.TYPE_16__* %91, %struct.TYPE_16__** %15, align 8
  store i64 0, i64* %13, align 8
  br label %92

92:                                               ; preds = %134, %70
  %93 = load i64, i64* %13, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ult i64 %93, %98
  br i1 %99, label %100, label %137

100:                                              ; preds = %92
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %102 = load i64, i64* %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %107 = load i64, i64* %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @ngx_strcmp(i8* %105, i8* %111)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %133

114:                                              ; preds = %100
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %116 = load i64, i64* %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  store %struct.TYPE_14__* %119, %struct.TYPE_14__** %11, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %122 = load i64, i64* %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  store %struct.TYPE_14__* %120, %struct.TYPE_14__** %124, align 8
  %125 = load i32, i32* @NGX_LOG_WARN, align 4
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %128 = load i64, i64* %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i64 %128
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %132 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ngx_conf_log_error(i32 %125, %struct.TYPE_17__* %126, i32 0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_14__* %129, %struct.TYPE_14__* %130, %struct.TYPE_14__* %131)
  br label %160

133:                                              ; preds = %100
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %13, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %13, align 8
  br label %92

137:                                              ; preds = %92
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  %141 = call %struct.TYPE_16__* @ngx_array_push(%struct.TYPE_12__* %140)
  store %struct.TYPE_16__* %141, %struct.TYPE_16__** %15, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %143 = icmp eq %struct.TYPE_16__* %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %137
  %145 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %145, i8** %4, align 8
  br label %166

146:                                              ; preds = %137
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %150 = load i64, i64* %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i64 %150
  %152 = bitcast %struct.TYPE_14__* %148 to i8*
  %153 = bitcast %struct.TYPE_14__* %151 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %152, i8* align 8 %153, i64 16, i1 false)
  %154 = load i64, i64* %14, align 8
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 1
  store %struct.TYPE_14__* %157, %struct.TYPE_14__** %159, align 8
  br label %160

160:                                              ; preds = %146, %114
  br label %161

161:                                              ; preds = %160
  %162 = load i64, i64* %12, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %12, align 8
  br label %61

164:                                              ; preds = %61
  %165 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %165, i8** %4, align 8
  br label %166

166:                                              ; preds = %164, %144, %53, %41, %36
  %167 = load i8*, i8** %4, align 8
  ret i8* %167
}

declare dso_local i64 @ngx_strcmp(i8*, i8*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_17__*, i32, i8*, ...) #1

declare dso_local i8* @ngx_conf_include(%struct.TYPE_17__*, i32*, i8*) #1

declare dso_local %struct.TYPE_14__* @ngx_palloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_hash_strlow(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_16__* @ngx_array_push(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_headers_filter_module.c_ngx_http_headers_add.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_headers_filter_module.c_ngx_http_headers_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32*, i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_24__, i32*, i64, %struct.TYPE_20__ }
%struct.TYPE_24__ = type { %struct.TYPE_24__*, %struct.TYPE_20__*, %struct.TYPE_25__* }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_http_add_header = common dso_local global i32* null, align 8
@ngx_http_set_headers = common dso_local global %struct.TYPE_21__* null, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"always\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid parameter \22%V\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_25__*, %struct.TYPE_26__*, i8*)* @ngx_http_headers_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_headers_add(%struct.TYPE_25__* %0, %struct.TYPE_26__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_24__, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %16, %struct.TYPE_22__** %8, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  store %struct.TYPE_20__* %21, %struct.TYPE_20__** %9, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %23 = bitcast %struct.TYPE_22__* %22 to i8*
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  %29 = bitcast i8* %28 to i32**
  store i32** %29, i32*** %11, align 8
  %30 = load i32**, i32*** %11, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %3
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32* @ngx_array_create(i32 %36, i32 1, i32 64)
  %38 = load i32**, i32*** %11, align 8
  store i32* %37, i32** %38, align 8
  %39 = load i32**, i32*** %11, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %43, i8** %4, align 8
  br label %169

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %3
  %46 = load i32**, i32*** %11, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = call %struct.TYPE_23__* @ngx_array_push(i32* %47)
  store %struct.TYPE_23__* %48, %struct.TYPE_23__** %12, align 8
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %50 = icmp eq %struct.TYPE_23__* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %52, i8** %4, align 8
  br label %169

53:                                               ; preds = %45
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i64 1
  %58 = bitcast %struct.TYPE_20__* %55 to i8*
  %59 = bitcast %struct.TYPE_20__* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 16, i1 false)
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 2
  store i32* null, i32** %61, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load i32**, i32*** %11, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = icmp eq i32** %66, %68
  br i1 %69, label %70, label %116

70:                                               ; preds = %53
  %71 = load i32*, i32** @ngx_http_add_header, align 8
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 2
  store i32* %71, i32** %73, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** @ngx_http_set_headers, align 8
  store %struct.TYPE_21__* %74, %struct.TYPE_21__** %13, align 8
  store i64 0, i64* %10, align 8
  br label %75

75:                                               ; preds = %112, %70
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %115

83:                                               ; preds = %75
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i64 1
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %89 = load i64, i64* %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @ngx_strcasecmp(i32 %87, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %83
  br label %112

97:                                               ; preds = %83
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %99 = load i64, i64* %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 3
  store i64 %102, i64* %104, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %106 = load i64, i64* %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 2
  store i32* %109, i32** %111, align 8
  br label %115

112:                                              ; preds = %96
  %113 = load i64, i64* %10, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %10, align 8
  br label %75

115:                                              ; preds = %97, %75
  br label %116

116:                                              ; preds = %115, %53
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i64 2
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 1
  %125 = call i32 @ngx_memzero(%struct.TYPE_24__* %124, i32 4)
  br label %142

126:                                              ; preds = %116
  %127 = call i32 @ngx_memzero(%struct.TYPE_24__* %14, i32 24)
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 2
  store %struct.TYPE_25__* %128, %struct.TYPE_25__** %129, align 8
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i64 2
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  store %struct.TYPE_20__* %131, %struct.TYPE_20__** %132, align 8
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  store %struct.TYPE_24__* %134, %struct.TYPE_24__** %135, align 8
  %136 = call i64 @ngx_http_compile_complex_value(%struct.TYPE_24__* %14)
  %137 = load i64, i64* @NGX_OK, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %126
  %140 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %140, i8** %4, align 8
  br label %169

141:                                              ; preds = %126
  br label %142

142:                                              ; preds = %141, %122
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, 3
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %150, i8** %4, align 8
  br label %169

151:                                              ; preds = %142
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i64 3
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @ngx_strcmp(i32 %155, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %151
  %159 = load i32, i32* @NGX_LOG_EMERG, align 4
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i64 3
  %163 = call i32 @ngx_conf_log_error(i32 %159, %struct.TYPE_25__* %160, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_20__* %162)
  %164 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %164, i8** %4, align 8
  br label %169

165:                                              ; preds = %151
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 0
  store i32 1, i32* %167, align 8
  %168 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %168, i8** %4, align 8
  br label %169

169:                                              ; preds = %165, %158, %149, %139, %51, %42
  %170 = load i8*, i8** %4, align 8
  ret i8* %170
}

declare dso_local i32* @ngx_array_create(i32, i32, i32) #1

declare dso_local %struct.TYPE_23__* @ngx_array_push(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_strcasecmp(i32, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @ngx_http_compile_complex_value(%struct.TYPE_24__*) #1

declare dso_local i64 @ngx_strcmp(i32, i8*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_25__*, i32, i8*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

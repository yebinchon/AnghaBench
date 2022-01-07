; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_proxy_module.c_ngx_stream_proxy_bind.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_proxy_module.c_ngx_stream_proxy_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_22__* }
%struct.TYPE_17__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_26__ = type { %struct.TYPE_19__*, %struct.TYPE_18__*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__*, %struct.TYPE_24__*, %struct.TYPE_26__* }

@NGX_CONF_UNSET_PTR = common dso_local global %struct.TYPE_20__* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid address \22%V\22\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"transparent\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"transparent proxying is not supported on this platform, ignored\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"invalid parameter \22%V\22\00", align 1
@ngx_core_module = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_26__*, i32*, i8*)* @ngx_stream_proxy_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_stream_proxy_bind(%struct.TYPE_26__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_22__, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_23__, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %15, %struct.TYPE_21__** %8, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** @NGX_CONF_UNSET_PTR, align 8
  %20 = icmp ne %struct.TYPE_20__* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %170

22:                                               ; preds = %3
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  store %struct.TYPE_24__* %27, %struct.TYPE_24__** %10, align 8
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %45

34:                                               ; preds = %22
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i64 1
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ngx_strcmp(i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %43, align 8
  %44 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %44, i8** %4, align 8
  br label %170

45:                                               ; preds = %34, %22
  %46 = call i32 @ngx_memzero(%struct.TYPE_23__* %13, i32 24)
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 2
  store %struct.TYPE_26__* %47, %struct.TYPE_26__** %48, align 8
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  store %struct.TYPE_24__* %50, %struct.TYPE_24__** %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  store %struct.TYPE_22__* %11, %struct.TYPE_22__** %52, align 8
  %53 = call i64 @ngx_stream_compile_complex_value(%struct.TYPE_23__* %13)
  %54 = icmp ne i64 %53, 128
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %56, i8** %4, align 8
  br label %170

57:                                               ; preds = %45
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.TYPE_20__* @ngx_pcalloc(i32 %60, i32 24)
  store %struct.TYPE_20__* %61, %struct.TYPE_20__** %12, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %63 = icmp eq %struct.TYPE_20__* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %65, i8** %4, align 8
  br label %170

66:                                               ; preds = %57
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  store %struct.TYPE_20__* %67, %struct.TYPE_20__** %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %66
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i8* @ngx_palloc(i32 %76, i32 8)
  %78 = bitcast i8* %77 to %struct.TYPE_22__*
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 2
  store %struct.TYPE_22__* %78, %struct.TYPE_22__** %80, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %82, align 8
  %84 = icmp eq %struct.TYPE_22__* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %73
  %86 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %86, i8** %4, align 8
  br label %170

87:                                               ; preds = %73
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %89, align 8
  %91 = bitcast %struct.TYPE_22__* %90 to i8*
  %92 = bitcast %struct.TYPE_22__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 8, i1 false)
  br label %142

93:                                               ; preds = %66
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i8* @ngx_palloc(i32 %96, i32 4)
  %98 = bitcast i8* %97 to %struct.TYPE_17__*
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 1
  store %struct.TYPE_17__* %98, %struct.TYPE_17__** %100, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %102, align 8
  %104 = icmp eq %struct.TYPE_17__* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %93
  %106 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %106, i8** %4, align 8
  br label %170

107:                                              ; preds = %93
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %112, align 8
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i64 1
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i64 1
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ngx_parse_addr_port(i32 %110, %struct.TYPE_17__* %113, i32 %117, i32 %121)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  switch i32 %123, label %139 [
    i32 128, label %124
    i32 129, label %133
  ]

124:                                              ; preds = %107
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i64 1
  %131 = bitcast %struct.TYPE_24__* %128 to i8*
  %132 = bitcast %struct.TYPE_24__* %130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %131, i8* align 4 %132, i64 8, i1 false)
  br label %141

133:                                              ; preds = %107
  %134 = load i32, i32* @NGX_LOG_EMERG, align 4
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i64 1
  %138 = call i32 (i32, %struct.TYPE_26__*, i32, i8*, ...) @ngx_conf_log_error(i32 %134, %struct.TYPE_26__* %135, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_24__* %137)
  br label %139

139:                                              ; preds = %107, %133
  %140 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %140, i8** %4, align 8
  br label %170

141:                                              ; preds = %124
  br label %142

142:                                              ; preds = %141, %87
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp sgt i32 %147, 2
  br i1 %148, label %149, label %168

149:                                              ; preds = %142
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i64 2
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @ngx_strcmp(i32 %153, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %149
  %157 = load i32, i32* @NGX_LOG_EMERG, align 4
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %159 = call i32 (i32, %struct.TYPE_26__*, i32, i8*, ...) @ngx_conf_log_error(i32 %157, %struct.TYPE_26__* %158, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  br label %167

160:                                              ; preds = %149
  %161 = load i32, i32* @NGX_LOG_EMERG, align 4
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i64 2
  %165 = call i32 (i32, %struct.TYPE_26__*, i32, i8*, ...) @ngx_conf_log_error(i32 %161, %struct.TYPE_26__* %162, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_24__* %164)
  %166 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %166, i8** %4, align 8
  br label %170

167:                                              ; preds = %156
  br label %168

168:                                              ; preds = %167, %142
  %169 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %169, i8** %4, align 8
  br label %170

170:                                              ; preds = %168, %160, %139, %105, %85, %64, %55, %41, %21
  %171 = load i8*, i8** %4, align 8
  ret i8* %171
}

declare dso_local i64 @ngx_strcmp(i32, i8*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @ngx_stream_compile_complex_value(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_20__* @ngx_pcalloc(i32, i32) #1

declare dso_local i8* @ngx_palloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_parse_addr_port(i32, %struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_26__*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_bind_set_slot.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_bind_set_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_23__* }
%struct.TYPE_18__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_26__ = type { %struct.TYPE_20__*, %struct.TYPE_19__*, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__*, %struct.TYPE_21__*, %struct.TYPE_26__* }

@NGX_CONF_UNSET_PTR = common dso_local global %struct.TYPE_22__* null, align 8
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ngx_http_upstream_bind_set_slot(%struct.TYPE_26__* %0, %struct.TYPE_27__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_23__, align 8
  %12 = alloca %struct.TYPE_22__**, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_24__, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  %22 = bitcast i8* %21 to %struct.TYPE_22__**
  store %struct.TYPE_22__** %22, %struct.TYPE_22__*** %12, align 8
  %23 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %12, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** @NGX_CONF_UNSET_PTR, align 8
  %26 = icmp ne %struct.TYPE_22__* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %174

28:                                               ; preds = %3
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  store %struct.TYPE_21__* %33, %struct.TYPE_21__** %10, align 8
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %50

40:                                               ; preds = %28
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i64 1
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @ngx_strcmp(i32 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %12, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %48, align 8
  %49 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %49, i8** %4, align 8
  br label %174

50:                                               ; preds = %40, %28
  %51 = call i32 @ngx_memzero(%struct.TYPE_24__* %14, i32 24)
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 2
  store %struct.TYPE_26__* %52, %struct.TYPE_26__** %53, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i64 1
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  store %struct.TYPE_21__* %55, %struct.TYPE_21__** %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  store %struct.TYPE_23__* %11, %struct.TYPE_23__** %57, align 8
  %58 = call i64 @ngx_http_compile_complex_value(%struct.TYPE_24__* %14)
  %59 = icmp ne i64 %58, 128
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %61, i8** %4, align 8
  br label %174

62:                                               ; preds = %50
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call %struct.TYPE_22__* @ngx_pcalloc(i32 %65, i32 24)
  store %struct.TYPE_22__* %66, %struct.TYPE_22__** %13, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %68 = icmp eq %struct.TYPE_22__* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %70, i8** %4, align 8
  br label %174

71:                                               ; preds = %62
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %73 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %12, align 8
  store %struct.TYPE_22__* %72, %struct.TYPE_22__** %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %97

77:                                               ; preds = %71
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @ngx_palloc(i32 %80, i32 8)
  %82 = bitcast i8* %81 to %struct.TYPE_23__*
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 2
  store %struct.TYPE_23__* %82, %struct.TYPE_23__** %84, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %86, align 8
  %88 = icmp eq %struct.TYPE_23__* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %77
  %90 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %90, i8** %4, align 8
  br label %174

91:                                               ; preds = %77
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %93, align 8
  %95 = bitcast %struct.TYPE_23__* %94 to i8*
  %96 = bitcast %struct.TYPE_23__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 8 %96, i64 8, i1 false)
  br label %146

97:                                               ; preds = %71
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i8* @ngx_palloc(i32 %100, i32 4)
  %102 = bitcast i8* %101 to %struct.TYPE_18__*
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 1
  store %struct.TYPE_18__* %102, %struct.TYPE_18__** %104, align 8
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %106, align 8
  %108 = icmp eq %struct.TYPE_18__* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %97
  %110 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %110, i8** %4, align 8
  br label %174

111:                                              ; preds = %97
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %116, align 8
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i64 1
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i64 1
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @ngx_parse_addr_port(i32 %114, %struct.TYPE_18__* %117, i32 %121, i32 %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  switch i32 %127, label %143 [
    i32 128, label %128
    i32 129, label %137
  ]

128:                                              ; preds = %111
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i64 1
  %135 = bitcast %struct.TYPE_21__* %132 to i8*
  %136 = bitcast %struct.TYPE_21__* %134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %135, i8* align 4 %136, i64 8, i1 false)
  br label %145

137:                                              ; preds = %111
  %138 = load i32, i32* @NGX_LOG_EMERG, align 4
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i64 1
  %142 = call i32 (i32, %struct.TYPE_26__*, i32, i8*, ...) @ngx_conf_log_error(i32 %138, %struct.TYPE_26__* %139, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_21__* %141)
  br label %143

143:                                              ; preds = %111, %137
  %144 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %144, i8** %4, align 8
  br label %174

145:                                              ; preds = %128
  br label %146

146:                                              ; preds = %145, %91
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp sgt i32 %151, 2
  br i1 %152, label %153, label %172

153:                                              ; preds = %146
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i64 2
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @ngx_strcmp(i32 %157, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %153
  %161 = load i32, i32* @NGX_LOG_EMERG, align 4
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %163 = call i32 (i32, %struct.TYPE_26__*, i32, i8*, ...) @ngx_conf_log_error(i32 %161, %struct.TYPE_26__* %162, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  br label %171

164:                                              ; preds = %153
  %165 = load i32, i32* @NGX_LOG_EMERG, align 4
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i64 2
  %169 = call i32 (i32, %struct.TYPE_26__*, i32, i8*, ...) @ngx_conf_log_error(i32 %165, %struct.TYPE_26__* %166, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_21__* %168)
  %170 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %170, i8** %4, align 8
  br label %174

171:                                              ; preds = %160
  br label %172

172:                                              ; preds = %171, %146
  %173 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %173, i8** %4, align 8
  br label %174

174:                                              ; preds = %172, %164, %143, %109, %89, %69, %60, %47, %27
  %175 = load i8*, i8** %4, align 8
  ret i8* %175
}

declare dso_local i64 @ngx_strcmp(i32, i8*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @ngx_http_compile_complex_value(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_22__* @ngx_pcalloc(i32, i32) #1

declare dso_local i8* @ngx_palloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_parse_addr_port(i32, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_26__*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

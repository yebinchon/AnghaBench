; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_reqstat_module/extr_ngx_http_reqstat_module.c_ngx_http_reqstat_zone_add_indicator.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_reqstat_module/extr_ngx_http_reqstat_module.c_ngx_http_reqstat_zone_add_indicator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8*, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_18__ = type { i32* }

@ngx_http_reqstat_module = common dso_local global i32 0, align 4
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"zone \22%V\22 should be defined first\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@NGX_HTTP_REQSTAT_USER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"too many user defined variables\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to obtain variable \22%V\22\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_19__*, i32*, i8*)* @ngx_http_reqstat_zone_add_indicator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_reqstat_zone_add_indicator(%struct.TYPE_19__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %14, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %9, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i64 1
  %25 = call %struct.TYPE_16__* @ngx_shared_memory_add(%struct.TYPE_19__* %22, %struct.TYPE_15__* %24, i32 0, i32* @ngx_http_reqstat_module)
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %12, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %27 = icmp eq %struct.TYPE_16__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %29, i8** %4, align 8
  br label %187

30:                                               ; preds = %3
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = icmp eq %struct.TYPE_17__* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i32, i32* @NGX_LOG_EMERG, align 4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i64 1
  %40 = call i32 (i32, %struct.TYPE_19__*, i32, i8*, ...) @ngx_conf_log_error(i32 %36, %struct.TYPE_19__* %37, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %39)
  %41 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %41, i8** %4, align 8
  br label %187

42:                                               ; preds = %30
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %44, align 8
  store %struct.TYPE_17__* %45, %struct.TYPE_17__** %13, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %187

51:                                               ; preds = %42
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @NGX_HTTP_REQSTAT_USER, align 4
  %58 = add nsw i32 %57, 2
  %59 = icmp sgt i32 %56, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %51
  %61 = load i32, i32* @NGX_LOG_EMERG, align 4
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %63 = call i32 (i32, %struct.TYPE_19__*, i32, i8*, ...) @ngx_conf_log_error(i32 %61, %struct.TYPE_19__* %62, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %64, i8** %4, align 8
  br label %187

65:                                               ; preds = %51
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 2
  %75 = call i8* @ngx_array_create(i32 %68, i32 %74, i32 8)
  %76 = bitcast i8* %75 to i32*
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  store i32* %76, i32** %78, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %65
  %84 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %84, i8** %4, align 8
  br label %187

85:                                               ; preds = %65
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %93, 2
  %95 = call i8* @ngx_array_create(i32 %88, i32 %94, i32 16)
  %96 = bitcast i8* %95 to i32*
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  store i32* %96, i32** %98, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %85
  %104 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %104, i8** %4, align 8
  br label %187

105:                                              ; preds = %85
  store i64 2, i64* %11, align 8
  br label %106

106:                                              ; preds = %182, %105
  %107 = load i64, i64* %11, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = icmp ult i64 %107, %113
  br i1 %114, label %115, label %185

115:                                              ; preds = %106
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %117 = load i64, i64* %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 36
  br i1 %124, label %125, label %138

125:                                              ; preds = %115
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %127 = load i64, i64* %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %129, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %133 = load i64, i64* %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, -1
  store i64 %137, i64* %135, align 8
  br label %138

138:                                              ; preds = %125, %115
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = call i8* @ngx_array_push(i32* %141)
  %143 = bitcast i8* %142 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %143, %struct.TYPE_15__** %10, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %145 = load i64, i64* %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %152 = load i64, i64* %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  store i8* %155, i8** %157, align 8
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = call i8* @ngx_array_push(i32* %160)
  %162 = bitcast i8* %161 to i64*
  store i64* %162, i64** %8, align 8
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %165 = load i64, i64* %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i64 %165
  %167 = call i64 @ngx_http_get_variable_index(%struct.TYPE_19__* %163, %struct.TYPE_15__* %166)
  %168 = load i64*, i64** %8, align 8
  store i64 %167, i64* %168, align 8
  %169 = load i64*, i64** %8, align 8
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @NGX_ERROR, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %181

173:                                              ; preds = %138
  %174 = load i32, i32* @NGX_LOG_EMERG, align 4
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %177 = load i64, i64* %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i64 %177
  %179 = call i32 (i32, %struct.TYPE_19__*, i32, i8*, ...) @ngx_conf_log_error(i32 %174, %struct.TYPE_19__* %175, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_15__* %178)
  %180 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %180, i8** %4, align 8
  br label %187

181:                                              ; preds = %138
  br label %182

182:                                              ; preds = %181
  %183 = load i64, i64* %11, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %11, align 8
  br label %106

185:                                              ; preds = %106
  %186 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %186, i8** %4, align 8
  br label %187

187:                                              ; preds = %185, %173, %103, %83, %60, %50, %35, %28
  %188 = load i8*, i8** %4, align 8
  ret i8* %188
}

declare dso_local %struct.TYPE_16__* @ngx_shared_memory_add(%struct.TYPE_19__*, %struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_19__*, i32, i8*, ...) #1

declare dso_local i8* @ngx_array_create(i32, i32, i32) #1

declare dso_local i8* @ngx_array_push(i32*) #1

declare dso_local i64 @ngx_http_get_variable_index(%struct.TYPE_19__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

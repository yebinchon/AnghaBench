; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_reqstat_module/extr_ngx_http_reqstat_module.c_ngx_http_reqstat.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_reqstat_module/extr_ngx_http_reqstat_module.c_ngx_http_reqstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_22__** }
%struct.TYPE_22__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_17__* }

@ngx_http_reqstat_module = common dso_local global i32 0, align 4
@NGX_CONF_UNSET_PTR = common dso_local global %struct.TYPE_17__* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_24__*, i32*, i8*)* @ngx_http_reqstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_reqstat(%struct.TYPE_24__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_22__**, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %16, %struct.TYPE_23__** %14, align 8
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %8, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %23 = load i32, i32* @ngx_http_reqstat_module, align 4
  %24 = call %struct.TYPE_23__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_24__* %22, i32 %23)
  store %struct.TYPE_23__* %24, %struct.TYPE_23__** %13, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** @NGX_CONF_UNSET_PTR, align 8
  %29 = icmp ne %struct.TYPE_17__* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %164

31:                                               ; preds = %3
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  %35 = icmp eq %struct.TYPE_17__* %34, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %31
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = call i8* @ngx_array_create(i32 %39, i32 %45, i32 8)
  %47 = bitcast i8* %46 to %struct.TYPE_17__*
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  store %struct.TYPE_17__* %47, %struct.TYPE_17__** %49, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = icmp eq %struct.TYPE_17__* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %36
  %55 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %55, i8** %4, align 8
  br label %164

56:                                               ; preds = %36
  br label %57

57:                                               ; preds = %56, %31
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %65, 1
  %67 = call i8* @ngx_array_create(i32 %60, i32 %66, i32 8)
  %68 = bitcast i8* %67 to %struct.TYPE_17__*
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 0
  store %struct.TYPE_17__* %68, %struct.TYPE_17__** %70, align 8
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %72, align 8
  %74 = icmp eq %struct.TYPE_17__* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %57
  %76 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %76, i8** %4, align 8
  br label %164

77:                                               ; preds = %57
  store i64 1, i64* %9, align 8
  br label %78

78:                                               ; preds = %159, %77
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = icmp ult i64 %79, %85
  br i1 %86, label %87, label %162

87:                                               ; preds = %78
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %90 = load i64, i64* %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i64 %90
  %92 = call %struct.TYPE_22__* @ngx_shared_memory_add(%struct.TYPE_24__* %88, %struct.TYPE_21__* %91, i32 0, i32* @ngx_http_reqstat_module)
  store %struct.TYPE_22__* %92, %struct.TYPE_22__** %11, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %94 = icmp eq %struct.TYPE_22__* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %96, i8** %4, align 8
  br label %164

97:                                               ; preds = %87
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %99, align 8
  %101 = call %struct.TYPE_22__** @ngx_array_push(%struct.TYPE_17__* %100)
  store %struct.TYPE_22__** %101, %struct.TYPE_22__*** %12, align 8
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %103 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %12, align 8
  store %struct.TYPE_22__* %102, %struct.TYPE_22__** %103, align 8
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %107, align 8
  store %struct.TYPE_22__** %108, %struct.TYPE_22__*** %12, align 8
  store i64 0, i64* %10, align 8
  br label %109

109:                                              ; preds = %135, %97
  %110 = load i64, i64* %10, align 8
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ult i64 %110, %115
  br i1 %116, label %117, label %138

117:                                              ; preds = %109
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %119 = load i64, i64* %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %12, align 8
  %124 = load i64, i64* %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %123, i64 %124
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ngx_strcmp(i32 %122, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %117
  br label %138

134:                                              ; preds = %117
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %10, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %10, align 8
  br label %109

138:                                              ; preds = %133, %109
  %139 = load i64, i64* %10, align 8
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %139, %144
  br i1 %145, label %146, label %158

146:                                              ; preds = %138
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %148, align 8
  %150 = call %struct.TYPE_22__** @ngx_array_push(%struct.TYPE_17__* %149)
  store %struct.TYPE_22__** %150, %struct.TYPE_22__*** %12, align 8
  %151 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %12, align 8
  %152 = icmp eq %struct.TYPE_22__** %151, null
  br i1 %152, label %153, label %155

153:                                              ; preds = %146
  %154 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %154, i8** %4, align 8
  br label %164

155:                                              ; preds = %146
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %157 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %12, align 8
  store %struct.TYPE_22__* %156, %struct.TYPE_22__** %157, align 8
  br label %158

158:                                              ; preds = %155, %138
  br label %159

159:                                              ; preds = %158
  %160 = load i64, i64* %9, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %9, align 8
  br label %78

162:                                              ; preds = %78
  %163 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %163, i8** %4, align 8
  br label %164

164:                                              ; preds = %162, %153, %95, %75, %54, %30
  %165 = load i8*, i8** %4, align 8
  ret i8* %165
}

declare dso_local %struct.TYPE_23__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_24__*, i32) #1

declare dso_local i8* @ngx_array_create(i32, i32, i32) #1

declare dso_local %struct.TYPE_22__* @ngx_shared_memory_add(%struct.TYPE_24__*, %struct.TYPE_21__*, i32, i32*) #1

declare dso_local %struct.TYPE_22__** @ngx_array_push(%struct.TYPE_17__*) #1

declare dso_local i32 @ngx_strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

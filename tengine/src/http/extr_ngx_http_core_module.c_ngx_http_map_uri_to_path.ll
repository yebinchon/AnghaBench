; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_core_module.c_ngx_http_map_uri_to_path.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_core_module.c_ngx_http_map_uri_to_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_23__, i64, i32, %struct.TYPE_19__*, i32 }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_24__ = type { i64, i8* }
%struct.TYPE_26__ = type { i64, %struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_20__, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i64, i32 }

@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"\22alias\22 cannot be used in location \22%V\22 where URI was rewritten\00", align 1
@NGX_MAX_SIZE_T_VALUE = common dso_local global i64 0, align 8
@ngx_cycle = common dso_local global %struct.TYPE_18__* null, align 8
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ngx_http_map_uri_to_path(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %14 = load i32, i32* @ngx_http_core_module, align 4
  %15 = call %struct.TYPE_26__* @ngx_http_get_module_loc_conf(%struct.TYPE_25__* %13, i32 %14)
  store %struct.TYPE_26__* %15, %struct.TYPE_26__** %12, align 8
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %11, align 8
  %19 = load i64, i64* %11, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %4
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @NGX_LOG_ALERT, align 4
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 4
  %35 = call i32 @ngx_log_error(i32 %27, i32 %32, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32* %34)
  store i8* null, i8** %5, align 8
  br label %192

36:                                               ; preds = %21, %4
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %40 = icmp eq %struct.TYPE_21__* %39, null
  br i1 %40, label %41, label %90

41:                                               ; preds = %36
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %8, align 8
  store i64 %45, i64* %46, align 8
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %50, %51
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %52, %56
  %58 = load i64, i64* %11, align 8
  %59 = sub i64 %57, %58
  %60 = add i64 %59, 1
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i8* @ngx_pnalloc(i32 %65, i64 %68)
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %41
  store i8* null, i8** %5, align 8
  br label %192

77:                                               ; preds = %41
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i8* @ngx_copy(i8* %80, i32 %84, i64 %88)
  store i8* %89, i8** %10, align 8
  br label %175

90:                                               ; preds = %36
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* @NGX_MAX_SIZE_T_VALUE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %90
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, 1
  br label %106

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105, %99
  %107 = phi i64 [ %104, %99 ], [ 1, %105 ]
  %108 = load i64, i64* %9, align 8
  %109 = add i64 %108, %107
  store i64 %109, i64* %9, align 8
  br label %120

110:                                              ; preds = %90
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %11, align 8
  %116 = sub i64 %114, %115
  %117 = add i64 %116, 1
  %118 = load i64, i64* %9, align 8
  %119 = add i64 %118, %117
  store i64 %119, i64* %9, align 8
  br label %120

120:                                              ; preds = %110, %106
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i64, i64* %9, align 8
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32* @ngx_http_script_run(%struct.TYPE_25__* %121, %struct.TYPE_24__* %122, i32 %127, i64 %128, i32 %133)
  %135 = icmp eq i32* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %120
  store i8* null, i8** %5, align 8
  br label %192

137:                                              ; preds = %120
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ngx_cycle, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = bitcast i32* %142 to %struct.TYPE_24__*
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %145 = call i64 @ngx_get_full_name(i32 %140, %struct.TYPE_24__* %143, %struct.TYPE_24__* %144)
  %146 = load i64, i64* @NGX_OK, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %137
  store i8* null, i8** %5, align 8
  br label %192

149:                                              ; preds = %137
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %9, align 8
  %154 = sub i64 %152, %153
  %155 = load i64*, i64** %8, align 8
  store i64 %154, i64* %155, align 8
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = load i64*, i64** %8, align 8
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  store i8* %161, i8** %10, align 8
  %162 = load i64, i64* %11, align 8
  %163 = load i64, i64* @NGX_MAX_SIZE_T_VALUE, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %149
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %165
  %171 = load i8*, i8** %10, align 8
  store i8 0, i8* %171, align 1
  %172 = load i8*, i8** %10, align 8
  store i8* %172, i8** %5, align 8
  br label %192

173:                                              ; preds = %165
  store i64 0, i64* %11, align 8
  br label %174

174:                                              ; preds = %173, %149
  br label %175

175:                                              ; preds = %174, %77
  %176 = load i8*, i8** %10, align 8
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* %11, align 8
  %182 = add i64 %180, %181
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* %11, align 8
  %188 = sub i64 %186, %187
  %189 = add i64 %188, 1
  %190 = call i8* @ngx_cpystrn(i8* %176, i64 %182, i64 %189)
  store i8* %190, i8** %10, align 8
  %191 = load i8*, i8** %10, align 8
  store i8* %191, i8** %5, align 8
  br label %192

192:                                              ; preds = %175, %170, %148, %136, %76, %26
  %193 = load i8*, i8** %5, align 8
  ret i8* %193
}

declare dso_local %struct.TYPE_26__* @ngx_http_get_module_loc_conf(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*) #1

declare dso_local i8* @ngx_pnalloc(i32, i64) #1

declare dso_local i8* @ngx_copy(i8*, i32, i64) #1

declare dso_local i32* @ngx_http_script_run(%struct.TYPE_25__*, %struct.TYPE_24__*, i32, i64, i32) #1

declare dso_local i64 @ngx_get_full_name(i32, %struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i8* @ngx_cpystrn(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

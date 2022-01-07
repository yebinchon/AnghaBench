; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_store.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_38__*, i32 }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_26__ = type { i64, %struct.TYPE_37__*, %struct.TYPE_34__, %struct.TYPE_29__* }
%struct.TYPE_37__ = type { %struct.TYPE_36__*, %struct.TYPE_35__*, i32, i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_34__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_39__* }
%struct.TYPE_39__ = type { i32, %struct.TYPE_31__, i32, i32, i32, i32 }
%struct.TYPE_31__ = type { i64, %struct.TYPE_30__, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i64, i32, i32, i32 }

@NGX_INVALID_FILE = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"upstream stores \22%s\22 to \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*, %struct.TYPE_26__*)* @ngx_http_upstream_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_upstream_store(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_25__, align 4
  %8 = alloca %struct.TYPE_39__*, align 8
  %9 = alloca %struct.TYPE_28__, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %4, align 8
  %10 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  store %struct.TYPE_39__* %14, %struct.TYPE_39__** %8, align 8
  %15 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NGX_INVALID_FILE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %83

21:                                               ; preds = %2
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.TYPE_39__* @ngx_pcalloc(i32 %24, i32 40)
  store %struct.TYPE_39__* %25, %struct.TYPE_39__** %8, align 8
  %26 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %27 = icmp eq %struct.TYPE_39__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %195

29:                                               ; preds = %21
  %30 = load i64, i64* @NGX_INVALID_FILE, align 8
  %31 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_38__*, %struct.TYPE_38__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 4
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_37__*, %struct.TYPE_37__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @ngx_create_temp_file(%struct.TYPE_31__* %57, i32 %60, i32 %63, i32 %66, i32 %69, i32 %72)
  %74 = load i64, i64* @NGX_OK, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %29
  br label %195

77:                                               ; preds = %29
  %78 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %81, i32 0, i32 0
  store %struct.TYPE_39__* %78, %struct.TYPE_39__** %82, align 8
  br label %83

83:                                               ; preds = %77, %2
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_37__*, %struct.TYPE_37__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 6
  store i32 %88, i32* %89, align 8
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_37__*, %struct.TYPE_37__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 5
  store i32 %94, i32* %95, align 4
  %96 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 0
  store i32 -1, i32* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 1
  store i32 1, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 2
  store i32 1, i32* %98, align 8
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_38__*, %struct.TYPE_38__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 4
  store i32 %103, i32* %104, align 8
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_33__*, %struct.TYPE_33__** %107, align 8
  %109 = icmp ne %struct.TYPE_33__* %108, null
  br i1 %109, label %110, label %138

110:                                              ; preds = %83
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_33__*, %struct.TYPE_33__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_33__*, %struct.TYPE_33__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ngx_parse_http_time(i32 %117, i32 %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @NGX_ERROR, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %110
  %130 = load i32, i32* %6, align 4
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 0
  store i32 %130, i32* %131, align 8
  %132 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 3
  store i64 %135, i64* %136, align 8
  br label %137

137:                                              ; preds = %129, %110
  br label %138

138:                                              ; preds = %137, %83
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_37__*, %struct.TYPE_37__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_35__*, %struct.TYPE_35__** %142, align 8
  %144 = icmp eq %struct.TYPE_35__* %143, null
  br i1 %144, label %145, label %151

145:                                              ; preds = %138
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %147 = call i32* @ngx_http_map_uri_to_path(%struct.TYPE_27__* %146, %struct.TYPE_25__* %7, i64* %5, i32 0)
  %148 = icmp eq i32* %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %195

150:                                              ; preds = %145
  br label %171

151:                                              ; preds = %138
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_37__*, %struct.TYPE_37__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_35__*, %struct.TYPE_35__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_37__*, %struct.TYPE_37__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_36__*, %struct.TYPE_36__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32* @ngx_http_script_run(%struct.TYPE_27__* %152, %struct.TYPE_25__* %7, i32 %159, i32 0, i32 %166)
  %168 = icmp eq i32* %167, null
  br i1 %168, label %169, label %170

169:                                              ; preds = %151
  br label %195

170:                                              ; preds = %151
  br label %171

171:                                              ; preds = %170, %150
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %172, align 4
  %175 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_38__*, %struct.TYPE_38__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @ngx_log_debug2(i32 %175, i32 %180, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %185, i32 %187)
  %189 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %190, i32 0, i32 1
  %192 = call i32 @ngx_ext_rename_file(%struct.TYPE_30__* %191, %struct.TYPE_25__* %7, %struct.TYPE_28__* %9)
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 0
  store i64 0, i64* %194, align 8
  br label %195

195:                                              ; preds = %171, %169, %149, %76, %28
  ret void
}

declare dso_local %struct.TYPE_39__* @ngx_pcalloc(i32, i32) #1

declare dso_local i64 @ngx_create_temp_file(%struct.TYPE_31__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ngx_parse_http_time(i32, i32) #1

declare dso_local i32* @ngx_http_map_uri_to_path(%struct.TYPE_27__*, %struct.TYPE_25__*, i64*, i32) #1

declare dso_local i32* @ngx_http_script_run(%struct.TYPE_27__*, %struct.TYPE_25__*, i32, i32, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_ext_rename_file(%struct.TYPE_30__*, %struct.TYPE_25__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

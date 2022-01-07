; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_core_module.c_ngx_http_named_location.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_core_module.c_ngx_http_named_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64, i32, %struct.TYPE_26__*, i32 (%struct.TYPE_28__*)*, i32, i32, i32, i64, i32*, i32, %struct.TYPE_22__, %struct.TYPE_24__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_27__ = type { i64, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_31__** }
%struct.TYPE_31__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }

@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"rewrite or internal redirection cycle while redirect to named location \22%V\22\00", align 1
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@NGX_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"empty URI in redirect to named location \22%V\22\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"test location: \22%V\22\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"using location: %V \22%V?%V\22\00", align 1
@ngx_http_max_module = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"could not find named location \22%V\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_named_location(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_31__**, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  %9 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 11
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %2
  %24 = load i32, i32* @NGX_LOG_ERR, align 4
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %31 = call i32 @ngx_log_error(i32 %24, i32 %29, i32 0, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), %struct.TYPE_27__* %30)
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %33 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %34 = call i32 @ngx_http_finalize_request(%struct.TYPE_28__* %32, i32 %33)
  %35 = load i32, i32* @NGX_DONE, align 4
  store i32 %35, i32* %3, align 4
  br label %172

36:                                               ; preds = %2
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 10
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load i32, i32* @NGX_LOG_ERR, align 4
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %50 = call i32 @ngx_log_error(i32 %43, i32 %48, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_27__* %49)
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %52 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %53 = call i32 @ngx_http_finalize_request(%struct.TYPE_28__* %51, i32 %52)
  %54 = load i32, i32* @NGX_DONE, align 4
  store i32 %54, i32* %3, align 4
  br label %172

55:                                               ; preds = %36
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %57 = load i32, i32* @ngx_http_core_module, align 4
  %58 = call %struct.TYPE_29__* @ngx_http_get_module_srv_conf(%struct.TYPE_28__* %56, i32 %57)
  store %struct.TYPE_29__* %58, %struct.TYPE_29__** %6, align 8
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %60, align 8
  %62 = icmp ne %struct.TYPE_31__** %61, null
  br i1 %62, label %63, label %159

63:                                               ; preds = %55
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %65, align 8
  store %struct.TYPE_31__** %66, %struct.TYPE_31__*** %7, align 8
  br label %67

67:                                               ; preds = %155, %63
  %68 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %7, align 8
  %69 = load %struct.TYPE_31__*, %struct.TYPE_31__** %68, align 8
  %70 = icmp ne %struct.TYPE_31__* %69, null
  br i1 %70, label %71, label %158

71:                                               ; preds = %67
  %72 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %7, align 8
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %79, i32 0, i32 1
  %81 = call i32 @ngx_log_debug1(i32 %72, i32 %77, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_23__* %80)
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %7, align 8
  %86 = load %struct.TYPE_31__*, %struct.TYPE_31__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %84, %89
  br i1 %90, label %105, label %91

91:                                               ; preds = %71
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %7, align 8
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @ngx_strncmp(i32 %94, i32 %99, i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %91, %71
  br label %155

106:                                              ; preds = %91
  %107 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 10
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 9
  %118 = call i32 @ngx_log_debug3(i32 %107, i32 %112, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_27__* %113, %struct.TYPE_22__* %115, i32* %117)
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 1
  store i32 1, i32* %120, align 8
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 8
  store i32* null, i32** %122, align 8
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %123, i32 0, i32 7
  store i64 0, i64* %124, align 8
  %125 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %7, align 8
  %126 = load %struct.TYPE_31__*, %struct.TYPE_31__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 6
  store i32 %128, i32* %130, align 8
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @ngx_http_max_module, align 4
  %135 = sext i32 %134 to i64
  %136 = mul i64 8, %135
  %137 = trunc i64 %136 to i32
  %138 = call i32 @ngx_memzero(i32 %133, i32 %137)
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %140 = call i32 @ngx_http_update_location_config(%struct.TYPE_28__* %139)
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %142 = load i32, i32* @ngx_http_core_module, align 4
  %143 = call %struct.TYPE_30__* @ngx_http_get_module_main_conf(%struct.TYPE_28__* %141, i32 %142)
  store %struct.TYPE_30__* %143, %struct.TYPE_30__** %8, align 8
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 3
  store i32 (%struct.TYPE_28__*)* @ngx_http_core_run_phases, i32 (%struct.TYPE_28__*)** %151, align 8
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %153 = call i32 @ngx_http_core_run_phases(%struct.TYPE_28__* %152)
  %154 = load i32, i32* @NGX_DONE, align 4
  store i32 %154, i32* %3, align 4
  br label %172

155:                                              ; preds = %105
  %156 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %156, i32 1
  store %struct.TYPE_31__** %157, %struct.TYPE_31__*** %7, align 8
  br label %67

158:                                              ; preds = %67
  br label %159

159:                                              ; preds = %158, %55
  %160 = load i32, i32* @NGX_LOG_ERR, align 4
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %167 = call i32 @ngx_log_error(i32 %160, i32 %165, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_27__* %166)
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %169 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %170 = call i32 @ngx_http_finalize_request(%struct.TYPE_28__* %168, i32 %169)
  %171 = load i32, i32* @NGX_DONE, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %159, %106, %42, %23
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_27__*) #1

declare dso_local i32 @ngx_http_finalize_request(%struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_29__* @ngx_http_get_module_srv_conf(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_23__*) #1

declare dso_local i64 @ngx_strncmp(i32, i32, i64) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, %struct.TYPE_27__*, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @ngx_memzero(i32, i32) #1

declare dso_local i32 @ngx_http_update_location_config(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_30__* @ngx_http_get_module_main_conf(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @ngx_http_core_run_phases(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

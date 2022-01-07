; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_flush_pending_output.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_flush_pending_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_17__ = type { i64, i64, i64 }
%struct.TYPE_18__ = type { i32, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"lua flushing output: buffered 0x%uxd\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"output filter returned %d\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_LOWLEVEL_BUFFERED = common dso_local global i32 0, align 4
@ngx_http_core_module = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"lua flush still waiting: buffered 0x%uxd\00", align 1
@NGX_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*, %struct.TYPE_17__*)* @ngx_http_lua_flush_pending_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_lua_flush_pending_output(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__* %13, %struct.TYPE_20__** %9, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %8, align 8
  %17 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ngx_log_debug1(i32 %17, i32 %20, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %31 = call i64 @ngx_http_lua_output_filter(%struct.TYPE_16__* %30, i32* null)
  store i64 %31, i64* %6, align 8
  br label %44

32:                                               ; preds = %2
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %35 = call i32* @ngx_http_lua_get_flush_chain(%struct.TYPE_16__* %33, %struct.TYPE_17__* %34)
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i64, i64* @NGX_ERROR, align 8
  store i64 %39, i64* %3, align 8
  br label %131

40:                                               ; preds = %32
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i64 @ngx_http_lua_output_filter(%struct.TYPE_16__* %41, i32* %42)
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %40, %29
  %45 = load i64, i64* %6, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @dd(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @NGX_ERROR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %44
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @NGX_OK, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51, %44
  %56 = load i64, i64* %6, align 8
  store i64 %56, i64* %3, align 8
  br label %131

57:                                               ; preds = %51
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @NGX_HTTP_LOWLEVEL_BUFFERED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %115

64:                                               ; preds = %57
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ngx_http_core_module, align 4
  %69 = call %struct.TYPE_18__* @ngx_http_get_module_loc_conf(i32 %67, i32 %68)
  store %struct.TYPE_18__* %69, %struct.TYPE_18__** %10, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %64
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ngx_add_timer(%struct.TYPE_19__* %75, i32 %78)
  br label %80

80:                                               ; preds = %74, %64
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @ngx_handle_write_event(%struct.TYPE_19__* %81, i32 %84)
  %86 = load i64, i64* @NGX_OK, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %80
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %95 = load i64, i64* @NGX_ERROR, align 8
  %96 = call i32 @ngx_http_lua_finalize_request(%struct.TYPE_16__* %94, i64 %95)
  br label %97

97:                                               ; preds = %93, %88
  %98 = load i64, i64* @NGX_ERROR, align 8
  store i64 %98, i64* %3, align 8
  br label %131

99:                                               ; preds = %80
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @ngx_log_debug1(i32 %105, i32 %108, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  %113 = load i64, i64* @NGX_DONE, align 8
  store i64 %113, i64* %3, align 8
  br label %131

114:                                              ; preds = %99
  br label %129

115:                                              ; preds = %57
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %120
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %127 = call i32 @ngx_del_timer(%struct.TYPE_19__* %126)
  br label %128

128:                                              ; preds = %125, %120, %115
  br label %129

129:                                              ; preds = %128, %114
  %130 = load i64, i64* @NGX_OK, align 8
  store i64 %130, i64* %3, align 8
  br label %131

131:                                              ; preds = %129, %104, %97, %55, %38
  %132 = load i64, i64* %3, align 8
  ret i64 %132
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @ngx_http_lua_output_filter(%struct.TYPE_16__*, i32*) #1

declare dso_local i32* @ngx_http_lua_get_flush_chain(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @dd(i8*, i32) #1

declare dso_local %struct.TYPE_18__* @ngx_http_get_module_loc_conf(i32, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @ngx_handle_write_event(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_http_lua_finalize_request(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_rd_check_broken_connection.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_rd_check_broken_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 (%struct.TYPE_19__*)*, %struct.TYPE_18__*, i64 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_17__*, %struct.TYPE_17__*, i32, i32 }
%struct.TYPE_17__ = type { i64 }

@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CO_SUSPENDED = common dso_local global i64 0, align 8
@ngx_event_flags = common dso_local global i32 0, align 4
@NGX_USE_LEVEL_EVENT = common dso_local global i32 0, align 4
@NGX_READ_EVENT = common dso_local global i32 0, align 4
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@ngx_http_lua_on_abort_resume = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CO_RUNNING = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"lua waking up the on_abort callback thread\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_lua_rd_check_broken_connection(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %6 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %123

11:                                               ; preds = %1
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %18 = call i64 @ngx_http_lua_check_broken_connection(%struct.TYPE_19__* %12, %struct.TYPE_21__* %17)
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @NGX_OK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %123

23:                                               ; preds = %11
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %25 = load i32, i32* @ngx_http_lua_module, align 4
  %26 = call %struct.TYPE_20__* @ngx_http_get_module_ctx(%struct.TYPE_19__* %24, i32 %25)
  store %struct.TYPE_20__* %26, %struct.TYPE_20__** %5, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %28 = icmp eq %struct.TYPE_20__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %123

30:                                               ; preds = %23
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = icmp eq %struct.TYPE_17__* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %41 = call i32 @ngx_http_lua_request_cleanup(%struct.TYPE_20__* %40, i32 0)
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @ngx_http_lua_finalize_request(%struct.TYPE_19__* %42, i64 %43)
  br label %123

45:                                               ; preds = %30
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NGX_HTTP_LUA_CO_SUSPENDED, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %82

53:                                               ; preds = %45
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %57, align 8
  store %struct.TYPE_21__* %58, %struct.TYPE_21__** %4, align 8
  %59 = load i32, i32* @ngx_event_flags, align 4
  %60 = load i32, i32* @NGX_USE_LEVEL_EVENT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %53
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %63
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %70 = load i32, i32* @NGX_READ_EVENT, align 4
  %71 = call i64 @ngx_del_event(%struct.TYPE_21__* %69, i32 %70, i32 0)
  %72 = load i64, i64* @NGX_OK, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %76 = call i32 @ngx_http_lua_request_cleanup(%struct.TYPE_20__* %75, i32 0)
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %78 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  %79 = call i32 @ngx_http_lua_finalize_request(%struct.TYPE_19__* %77, i64 %78)
  br label %123

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80, %63, %53
  br label %123

82:                                               ; preds = %45
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @ngx_http_lua_on_abort_resume, align 4
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load i64, i64* @NGX_HTTP_LUA_CO_RUNNING, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  store i64 %90, i64* %94, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %96, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 2
  store %struct.TYPE_17__* %97, %struct.TYPE_17__** %99, align 8
  %100 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ngx_log_debug0(i32 %100, i32 %105, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %82
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  store i32 (%struct.TYPE_19__*)* @ngx_http_lua_content_wev_handler, i32 (%struct.TYPE_19__*)** %113, align 8
  br label %117

114:                                              ; preds = %82
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  store i32 (%struct.TYPE_19__*)* @ngx_http_core_run_phases, i32 (%struct.TYPE_19__*)** %116, align 8
  br label %117

117:                                              ; preds = %114, %111
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %119, align 8
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %122 = call i32 %120(%struct.TYPE_19__* %121)
  br label %123

123:                                              ; preds = %117, %81, %74, %35, %29, %22, %10
  ret void
}

declare dso_local i64 @ngx_http_lua_check_broken_connection(%struct.TYPE_19__*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_20__* @ngx_http_get_module_ctx(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_http_lua_request_cleanup(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ngx_http_lua_finalize_request(%struct.TYPE_19__*, i64) #1

declare dso_local i64 @ngx_del_event(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_lua_content_wev_handler(%struct.TYPE_19__*) #1

declare dso_local i32 @ngx_http_core_run_phases(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

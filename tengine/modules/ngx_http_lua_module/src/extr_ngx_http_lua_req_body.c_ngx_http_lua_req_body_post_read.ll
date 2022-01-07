; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_req_body.c_ngx_http_lua_req_body_post_read.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_req_body.c_ngx_http_lua_req_body_post_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_16__*)*, i64, %struct.TYPE_19__*, %struct.TYPE_19__*, i64 }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_17__ = type { i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"lua req body post read, c:%ud\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@ngx_http_lua_rd_check_broken_connection = common dso_local global i32 0, align 4
@ngx_http_block_reading = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @ngx_http_lua_req_body_post_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_lua_req_body_post_read(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %6 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ngx_log_debug1(i32 %6, i32 %11, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %19 = load i32, i32* @ngx_http_lua_module, align 4
  %20 = call %struct.TYPE_18__* @ngx_http_get_module_ctx(%struct.TYPE_16__* %18, i32 %19)
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %3, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %65

25:                                               ; preds = %1
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  store %struct.TYPE_19__* %30, %struct.TYPE_19__** %4, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 2
  store %struct.TYPE_19__* %31, %struct.TYPE_19__** %33, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %37 = load i32, i32* @ngx_http_lua_module, align 4
  %38 = call %struct.TYPE_17__* @ngx_http_get_module_loc_conf(%struct.TYPE_16__* %36, i32 %37)
  store %struct.TYPE_17__* %38, %struct.TYPE_17__** %5, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %25
  %44 = load i32, i32* @ngx_http_lua_rd_check_broken_connection, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %51

47:                                               ; preds = %25
  %48 = load i32, i32* @ngx_http_block_reading, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %58 = call i32 @ngx_http_lua_read_body_resume(%struct.TYPE_16__* %57)
  br label %64

59:                                               ; preds = %51
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  store i32 (%struct.TYPE_16__*)* @ngx_http_lua_read_body_resume, i32 (%struct.TYPE_16__*)** %61, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %63 = call i32 @ngx_http_core_run_phases(%struct.TYPE_16__* %62)
  br label %64

64:                                               ; preds = %59, %56
  br label %65

65:                                               ; preds = %64, %1
  ret void
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local %struct.TYPE_18__* @ngx_http_get_module_ctx(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_17__* @ngx_http_get_module_loc_conf(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ngx_http_lua_read_body_resume(%struct.TYPE_16__*) #1

declare dso_local i32 @ngx_http_core_run_phases(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

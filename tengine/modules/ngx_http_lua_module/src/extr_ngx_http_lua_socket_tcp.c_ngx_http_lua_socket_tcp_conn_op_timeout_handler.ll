; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_conn_op_timeout_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_conn_op_timeout_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_19__*, %struct.TYPE_25__*, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_22__*, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_24__ = type { i32 (%struct.TYPE_20__*)*, i64, %struct.TYPE_25__* }
%struct.TYPE_23__ = type { i64 }

@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"lua tcp socket queued connect timed out, when trying to connect to %V:%ud\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"lua tcp socket waking up the current request\00", align 1
@ngx_http_lua_socket_tcp_conn_op_timeout_retval_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*)* @ngx_http_lua_socket_tcp_conn_op_timeout_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_lua_socket_tcp_conn_op_timeout_handler(%struct.TYPE_26__* %0) #0 {
  %2 = alloca %struct.TYPE_26__*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %2, align 8
  %10 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  store %struct.TYPE_22__* %12, %struct.TYPE_22__** %9, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %15 = call i32 @ngx_queue_remove(i32* %14)
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %3, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  store %struct.TYPE_20__* %21, %struct.TYPE_20__** %6, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  store %struct.TYPE_25__* %24, %struct.TYPE_25__** %7, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 1
  store %struct.TYPE_22__* %27, %struct.TYPE_22__** %29, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 2
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %31, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %33 = load i32, i32* @ngx_http_lua_module, align 4
  %34 = call %struct.TYPE_23__* @ngx_http_get_module_loc_conf(%struct.TYPE_20__* %32, i32 %33)
  store %struct.TYPE_23__* %34, %struct.TYPE_23__** %8, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %1
  %40 = load i32, i32* @NGX_LOG_ERR, align 4
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ngx_log_error(i32 %40, i32 %45, i32 0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32* %47, i32 %50)
  br label %52

52:                                               ; preds = %39, %1
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = call i32 @ngx_queue_insert_head(i32* %56, i32* %58)
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %67 = load i32, i32* @ngx_http_lua_module, align 4
  %68 = call %struct.TYPE_24__* @ngx_http_get_module_ctx(%struct.TYPE_20__* %66, i32 %67)
  store %struct.TYPE_24__* %68, %struct.TYPE_24__** %4, align 8
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %70 = icmp eq %struct.TYPE_24__* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %52
  br label %121

72:                                               ; preds = %52
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 2
  store %struct.TYPE_25__* %73, %struct.TYPE_25__** %75, align 8
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %77 = icmp ne %struct.TYPE_25__* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %80 = call i32 @ngx_http_lua_is_thread(%struct.TYPE_24__* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sge i64 %85, 0
  br label %87

87:                                               ; preds = %82, %78
  %88 = phi i1 [ true, %78 ], [ %86, %82 ]
  br label %89

89:                                               ; preds = %87, %72
  %90 = phi i1 [ false, %72 ], [ %88, %87 ]
  %91 = zext i1 %90 to i32
  %92 = call i32 @ngx_http_lua_assert(i32 %91)
  %93 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ngx_log_debug0(i32 %93, i32 %98, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i32, i32* @ngx_http_lua_socket_tcp_conn_op_timeout_retval_handler, align 4
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %104, align 8
  store %struct.TYPE_27__* %105, %struct.TYPE_27__** %5, align 8
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %89
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %112 = call i32 @ngx_http_lua_socket_tcp_conn_op_resume(%struct.TYPE_20__* %111)
  br label %118

113:                                              ; preds = %89
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 0
  store i32 (%struct.TYPE_20__*)* @ngx_http_lua_socket_tcp_conn_op_resume, i32 (%struct.TYPE_20__*)** %115, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %117 = call i32 @ngx_http_core_run_phases(%struct.TYPE_20__* %116)
  br label %118

118:                                              ; preds = %113, %110
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %120 = call i32 @ngx_http_run_posted_requests(%struct.TYPE_27__* %119)
  br label %121

121:                                              ; preds = %118, %71
  ret void
}

declare dso_local i32 @ngx_queue_remove(i32*) #1

declare dso_local %struct.TYPE_23__* @ngx_http_get_module_loc_conf(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @ngx_queue_insert_head(i32*, i32*) #1

declare dso_local %struct.TYPE_24__* @ngx_http_get_module_ctx(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ngx_http_lua_assert(i32) #1

declare dso_local i32 @ngx_http_lua_is_thread(%struct.TYPE_24__*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_lua_socket_tcp_conn_op_resume(%struct.TYPE_20__*) #1

declare dso_local i32 @ngx_http_core_run_phases(%struct.TYPE_20__*) #1

declare dso_local i32 @ngx_http_run_posted_requests(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

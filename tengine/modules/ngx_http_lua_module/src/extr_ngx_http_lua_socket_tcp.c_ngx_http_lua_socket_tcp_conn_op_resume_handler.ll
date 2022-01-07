; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_conn_op_resume_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_conn_op_resume_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32*, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_26__*, %struct.TYPE_24__*, %struct.TYPE_21__* }
%struct.TYPE_26__ = type { i64, %struct.TYPE_23__*, i32* }
%struct.TYPE_24__ = type { i64, i64, i64, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_25__ = type { i32 (%struct.TYPE_21__*)*, i64, %struct.TYPE_26__* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_23__* }

@NGX_LOG_ERR = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_20__* null, align 8
@.str = private unnamed_addr constant [96 x i8] c"lua tcp socket connections count mismatched for connection pool \22%s\22, connections: %i, size: %i\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"lua tcp socket waking up the current request\00", align 1
@ngx_http_lua_socket_tcp_conn_op_resume_retval_handler = common dso_local global i32 0, align 4
@ngx_http_lua_socket_tcp_conn_op_ctx_cleanup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_28__*)* @ngx_http_lua_socket_tcp_conn_op_resume_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_lua_socket_tcp_conn_op_resume_handler(%struct.TYPE_28__* %0) #0 {
  %2 = alloca %struct.TYPE_28__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %2, align 8
  %12 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  store %struct.TYPE_23__* %14, %struct.TYPE_23__** %11, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %10, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  store %struct.TYPE_21__* %20, %struct.TYPE_21__** %6, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  store %struct.TYPE_24__* %23, %struct.TYPE_24__** %9, align 8
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 4
  %26 = call i64 @ngx_queue_empty(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %62

28:                                               ; preds = %1
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %28
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %33
  %42 = load i32, i32* @NGX_LOG_ERR, align 4
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** @ngx_cycle, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @ngx_log_error(i32 %42, i32 %45, i32 0, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %48, i64 %51, i64 %54)
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %41, %33, %28
  br label %154

62:                                               ; preds = %1
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 4
  %65 = call i32* @ngx_queue_head(i32* %64)
  store i32* %65, i32** %3, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @ngx_queue_remove(i32* %66)
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %69, align 8
  store %struct.TYPE_26__* %70, %struct.TYPE_26__** %8, align 8
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 2
  store i32* null, i32** %72, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 1
  store %struct.TYPE_23__* %73, %struct.TYPE_23__** %75, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 1
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %77, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %79 = load i32, i32* @ngx_http_lua_module, align 4
  %80 = call %struct.TYPE_25__* @ngx_http_get_module_ctx(%struct.TYPE_21__* %78, i32 %79)
  store %struct.TYPE_25__* %80, %struct.TYPE_25__** %5, align 8
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %82 = icmp eq %struct.TYPE_25__* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %62
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 1
  %88 = call i32 @ngx_queue_insert_head(i32* %85, i32* %87)
  br label %154

89:                                               ; preds = %62
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 2
  store %struct.TYPE_26__* %90, %struct.TYPE_26__** %92, align 8
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %94 = icmp ne %struct.TYPE_26__* %93, null
  br i1 %94, label %95, label %106

95:                                               ; preds = %89
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %97 = call i32 @ngx_http_lua_is_thread(%struct.TYPE_25__* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp sge i64 %102, 0
  br label %104

104:                                              ; preds = %99, %95
  %105 = phi i1 [ true, %95 ], [ %103, %99 ]
  br label %106

106:                                              ; preds = %104, %89
  %107 = phi i1 [ false, %89 ], [ %105, %104 ]
  %108 = zext i1 %107 to i32
  %109 = call i32 @ngx_http_lua_assert(i32 %108)
  %110 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ngx_log_debug0(i32 %110, i32 %115, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %117 = load i32, i32* @ngx_http_lua_socket_tcp_conn_op_resume_retval_handler, align 4
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_29__*, %struct.TYPE_29__** %121, align 8
  store %struct.TYPE_29__* %122, %struct.TYPE_29__** %4, align 8
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %106
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %129 = call i32 @ngx_http_lua_socket_tcp_conn_op_resume(%struct.TYPE_21__* %128)
  br label %151

130:                                              ; preds = %106
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %132 = call %struct.TYPE_27__* @ngx_http_lua_cleanup_add(%struct.TYPE_21__* %131, i32 0)
  store %struct.TYPE_27__* %132, %struct.TYPE_27__** %7, align 8
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %134 = icmp ne %struct.TYPE_27__* %133, null
  br i1 %134, label %135, label %146

135:                                              ; preds = %130
  %136 = load i32, i32* @ngx_http_lua_socket_tcp_conn_op_ctx_cleanup, align 4
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 1
  store %struct.TYPE_23__* %139, %struct.TYPE_23__** %141, align 8
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 0
  store i32* %143, i32** %145, align 8
  br label %146

146:                                              ; preds = %135, %130
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 0
  store i32 (%struct.TYPE_21__*)* @ngx_http_lua_socket_tcp_conn_op_resume, i32 (%struct.TYPE_21__*)** %148, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %150 = call i32 @ngx_http_core_run_phases(%struct.TYPE_21__* %149)
  br label %151

151:                                              ; preds = %146, %127
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %153 = call i32 @ngx_http_run_posted_requests(%struct.TYPE_29__* %152)
  br label %154

154:                                              ; preds = %151, %83, %61
  ret void
}

declare dso_local i64 @ngx_queue_empty(i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i64, i64) #1

declare dso_local i32* @ngx_queue_head(i32*) #1

declare dso_local i32 @ngx_queue_remove(i32*) #1

declare dso_local %struct.TYPE_25__* @ngx_http_get_module_ctx(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ngx_queue_insert_head(i32*, i32*) #1

declare dso_local i32 @ngx_http_lua_assert(i32) #1

declare dso_local i32 @ngx_http_lua_is_thread(%struct.TYPE_25__*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_lua_socket_tcp_conn_op_resume(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_27__* @ngx_http_lua_cleanup_add(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ngx_http_core_run_phases(%struct.TYPE_21__*) #1

declare dso_local i32 @ngx_http_run_posted_requests(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

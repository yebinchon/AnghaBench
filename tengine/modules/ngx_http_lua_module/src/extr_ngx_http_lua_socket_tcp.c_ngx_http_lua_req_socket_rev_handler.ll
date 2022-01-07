; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_req_socket_rev_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_req_socket_rev_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"lua request socket read event handler\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@ngx_http_block_reading = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @ngx_http_lua_req_socket_rev_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_lua_req_socket_rev_handler(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %5 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ngx_log_debug0(i32 %5, i32 %10, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %13 = load i32, i32* @ngx_http_lua_module, align 4
  %14 = call %struct.TYPE_15__* @ngx_http_get_module_ctx(%struct.TYPE_13__* %12, i32 %13)
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %3, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = icmp eq %struct.TYPE_15__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i8*, i8** @ngx_http_block_reading, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  br label %44

21:                                               ; preds = %1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %4, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = icmp eq %struct.TYPE_14__* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %27, %21
  %34 = load i8*, i8** @ngx_http_block_reading, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  br label %44

37:                                               ; preds = %27
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)** %39, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = call i32 %40(%struct.TYPE_13__* %41, %struct.TYPE_14__* %42)
  br label %44

44:                                               ; preds = %37, %33, %17
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_15__* @ngx_http_get_module_ctx(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_conn_op_resume_retval_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_conn_op_resume_retval_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_12__, i32** }
%struct.TYPE_12__ = type { i32, i32 }

@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"coctx: %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_14__*, i32*)* @ngx_http_lua_socket_tcp_conn_op_resume_retval_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_socket_tcp_conn_op_resume_retval_handler(i32* %0, %struct.TYPE_14__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @ngx_http_lua_module, align 4
  %14 = call %struct.TYPE_16__* @ngx_http_get_module_ctx(i32* %12, i32 %13)
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %9, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %16 = icmp eq %struct.TYPE_16__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @NGX_ERROR, align 4
  store i32 %18, i32* %4, align 4
  br label %74

19:                                               ; preds = %3
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %10, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %24 = call i32 @dd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %23)
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %11, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 3
  %30 = load i32**, i32*** %29, align 8
  %31 = icmp ne i32** %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %19
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 3
  %35 = load i32**, i32*** %34, align 8
  store i32* null, i32** %35, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 3
  %39 = load i32**, i32*** %38, align 8
  %40 = call i32 @ngx_http_lua_cleanup_free(i32* %36, i32** %39)
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 3
  store i32** null, i32*** %42, align 8
  br label %43

43:                                               ; preds = %32, %19
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %47, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ngx_http_lua_socket_tcp_connect_helper(i32* %50, %struct.TYPE_14__* %51, i32* %52, %struct.TYPE_16__* %53, i32 %57, i32 %61, i32 %64, i32 1)
  store i32 %65, i32* %8, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = call i32 @ngx_queue_insert_head(i32* %69, i32* %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %43, %17
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.TYPE_16__* @ngx_http_get_module_ctx(i32*, i32) #1

declare dso_local i32 @dd(i8*, %struct.TYPE_17__*) #1

declare dso_local i32 @ngx_http_lua_cleanup_free(i32*, i32**) #1

declare dso_local i32 @ngx_http_lua_socket_tcp_connect_helper(i32*, %struct.TYPE_14__*, i32*, %struct.TYPE_16__*, i32, i32, i32, i32) #1

declare dso_local i32 @ngx_queue_insert_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

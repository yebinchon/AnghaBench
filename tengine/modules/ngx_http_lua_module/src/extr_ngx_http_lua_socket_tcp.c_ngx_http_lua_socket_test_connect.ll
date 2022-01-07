; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_test_connect.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_test_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_9__ = type { i64 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"connect() failed\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@NGX_USE_KQUEUE_EVENT = common dso_local global i32 0, align 4
@ngx_event_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*)* @ngx_http_lua_socket_test_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_socket_test_connect(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 4, i32* %7, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SOL_SOCKET, align 4
  %13 = load i32, i32* @SO_ERROR, align 4
  %14 = bitcast i32* %6 to i8*
  %15 = call i32 @getsockopt(i32 %11, i32 %12, i32 %13, i8* %14, i32* %7)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @ngx_errno, align 4
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %17, %2
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @ngx_http_lua_module, align 4
  %25 = call %struct.TYPE_9__* @ngx_http_get_module_loc_conf(i32* %23, i32 %24)
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %8, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @ngx_connection_error(%struct.TYPE_11__* %31, i32 %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %30, %22
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %38

36:                                               ; preds = %19
  %37 = load i32, i32* @NGX_OK, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @getsockopt(i32, i32, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_9__* @ngx_http_get_module_loc_conf(i32*, i32) #1

declare dso_local i32 @ngx_connection_error(%struct.TYPE_11__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

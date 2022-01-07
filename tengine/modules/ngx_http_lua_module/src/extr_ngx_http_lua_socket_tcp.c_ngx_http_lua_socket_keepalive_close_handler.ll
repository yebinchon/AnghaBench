; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_keepalive_close_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_keepalive_close_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, i32, %struct.TYPE_14__*, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_14__ = type { i64, i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"lua tcp socket keepalive max idle timeout\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"read event ready: %d\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"lua tcp socket keepalive close handler check stale events\00", align 1
@MSG_PEEK = common dso_local global i32 0, align 4
@ngx_socket_errno = common dso_local global i64 0, align 8
@NGX_EAGAIN = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"lua tcp socket keepalive close handler: fd:%d\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"keepalive: connections: %u\00", align 1
@NGX_DECLINED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*)* @ngx_http_lua_socket_keepalive_close_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_lua_socket_keepalive_close_handler(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1 x i8], align 1
  %8 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %8, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %66

17:                                               ; preds = %1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ngx_log_debug0(i32 %25, i32 %28, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %66

30:                                               ; preds = %17
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @dd(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ngx_log_debug0(i32 %38, i32 %41, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i64 0, i64 0
  %47 = load i32, i32* @MSG_PEEK, align 4
  %48 = call i32 @recv(i32 %45, i8* %46, i32 1, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %65

51:                                               ; preds = %30
  %52 = load i64, i64* @ngx_socket_errno, align 8
  %53 = load i64, i64* @NGX_EAGAIN, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = call i64 @ngx_handle_read_event(%struct.TYPE_14__* %58, i32 0)
  %60 = load i64, i64* @NGX_OK, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %66

63:                                               ; preds = %55
  %64 = load i64, i64* @NGX_OK, align 8
  store i64 %64, i64* %2, align 8
  br label %115

65:                                               ; preds = %51, %30
  br label %66

66:                                               ; preds = %65, %62, %24, %16
  %67 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @ngx_log_debug1(i32 %67, i32 %70, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  store %struct.TYPE_11__* %77, %struct.TYPE_11__** %4, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %5, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %82 = call i32 @ngx_http_lua_socket_tcp_close_connection(%struct.TYPE_13__* %81)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = call i32 @ngx_queue_remove(i32* %84)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = call i32 @ngx_queue_insert_head(i32* %87, i32* %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, -1
  store i64 %94, i64* %92, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @dd(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %66
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = call i32 @ngx_http_lua_socket_free_pool(i32 %107, %struct.TYPE_10__* %108)
  br label %113

110:                                              ; preds = %66
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %112 = call i32 @ngx_http_lua_socket_tcp_resume_conn_op(%struct.TYPE_10__* %111)
  br label %113

113:                                              ; preds = %110, %104
  %114 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %114, i64* %2, align 8
  br label %115

115:                                              ; preds = %113, %63
  %116 = load i64, i64* %2, align 8
  ret i64 %116
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @dd(i8*, i32) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_http_lua_socket_tcp_close_connection(%struct.TYPE_13__*) #1

declare dso_local i32 @ngx_queue_remove(i32*) #1

declare dso_local i32 @ngx_queue_insert_head(i32*, i32*) #1

declare dso_local i32 @ngx_http_lua_socket_free_pool(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ngx_http_lua_socket_tcp_resume_conn_op(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

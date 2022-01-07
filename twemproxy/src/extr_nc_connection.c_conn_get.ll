; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_connection.c_conn_get.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_connection.c_conn_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn = type { i32, i32, i32 (%struct.conn*, i8*)*, i32*, i32*, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i8*, i32, i32, i8* }

@msg_recv = common dso_local global i8* null, align 8
@req_recv_next = common dso_local global i32 0, align 4
@req_recv_done = common dso_local global i32 0, align 4
@msg_send = common dso_local global i8* null, align 8
@rsp_send_next = common dso_local global i32 0, align 4
@rsp_send_done = common dso_local global i32 0, align 4
@client_close = common dso_local global i32 0, align 4
@client_active = common dso_local global i32 0, align 4
@client_unref = common dso_local global i32 0, align 4
@req_client_enqueue_omsgq = common dso_local global i32 0, align 4
@req_client_dequeue_omsgq = common dso_local global i32 0, align 4
@ncurr_cconn = common dso_local global i32 0, align 4
@rsp_recv_next = common dso_local global i32 0, align 4
@rsp_recv_done = common dso_local global i32 0, align 4
@req_send_next = common dso_local global i32 0, align 4
@req_send_done = common dso_local global i32 0, align 4
@server_close = common dso_local global i32 0, align 4
@server_active = common dso_local global i32 0, align 4
@server_unref = common dso_local global i32 0, align 4
@req_server_enqueue_imsgq = common dso_local global i32* null, align 8
@req_server_dequeue_imsgq = common dso_local global i32* null, align 8
@req_server_enqueue_omsgq = common dso_local global i32 0, align 4
@req_server_dequeue_omsgq = common dso_local global i32 0, align 4
@redis_post_connect = common dso_local global i32* null, align 8
@redis_swallow_msg = common dso_local global i32* null, align 8
@memcache_post_connect = common dso_local global i32* null, align 8
@memcache_swallow_msg = common dso_local global i32* null, align 8
@LOG_VVERB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"get conn %p client %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.conn* @conn_get(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.conn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.conn*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call %struct.conn* (...) @_conn_get()
  store %struct.conn* %9, %struct.conn** %8, align 8
  %10 = load %struct.conn*, %struct.conn** %8, align 8
  %11 = icmp eq %struct.conn* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.conn* null, %struct.conn** %4, align 8
  br label %149

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  %18 = load %struct.conn*, %struct.conn** %8, align 8
  %19 = getelementptr inbounds %struct.conn, %struct.conn* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  %24 = load %struct.conn*, %struct.conn** %8, align 8
  %25 = getelementptr inbounds %struct.conn, %struct.conn* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.conn*, %struct.conn** %8, align 8
  %27 = getelementptr inbounds %struct.conn, %struct.conn* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %76

30:                                               ; preds = %13
  %31 = load i8*, i8** @msg_recv, align 8
  %32 = load %struct.conn*, %struct.conn** %8, align 8
  %33 = getelementptr inbounds %struct.conn, %struct.conn* %32, i32 0, i32 17
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @req_recv_next, align 4
  %35 = load %struct.conn*, %struct.conn** %8, align 8
  %36 = getelementptr inbounds %struct.conn, %struct.conn* %35, i32 0, i32 16
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @req_recv_done, align 4
  %38 = load %struct.conn*, %struct.conn** %8, align 8
  %39 = getelementptr inbounds %struct.conn, %struct.conn* %38, i32 0, i32 15
  store i32 %37, i32* %39, align 8
  %40 = load i8*, i8** @msg_send, align 8
  %41 = load %struct.conn*, %struct.conn** %8, align 8
  %42 = getelementptr inbounds %struct.conn, %struct.conn* %41, i32 0, i32 14
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @rsp_send_next, align 4
  %44 = load %struct.conn*, %struct.conn** %8, align 8
  %45 = getelementptr inbounds %struct.conn, %struct.conn* %44, i32 0, i32 13
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @rsp_send_done, align 4
  %47 = load %struct.conn*, %struct.conn** %8, align 8
  %48 = getelementptr inbounds %struct.conn, %struct.conn* %47, i32 0, i32 12
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @client_close, align 4
  %50 = load %struct.conn*, %struct.conn** %8, align 8
  %51 = getelementptr inbounds %struct.conn, %struct.conn* %50, i32 0, i32 11
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @client_active, align 4
  %53 = load %struct.conn*, %struct.conn** %8, align 8
  %54 = getelementptr inbounds %struct.conn, %struct.conn* %53, i32 0, i32 10
  store i32 %52, i32* %54, align 4
  %55 = load %struct.conn*, %struct.conn** %8, align 8
  %56 = getelementptr inbounds %struct.conn, %struct.conn* %55, i32 0, i32 2
  store i32 (%struct.conn*, i8*)* @client_ref, i32 (%struct.conn*, i8*)** %56, align 8
  %57 = load i32, i32* @client_unref, align 4
  %58 = load %struct.conn*, %struct.conn** %8, align 8
  %59 = getelementptr inbounds %struct.conn, %struct.conn* %58, i32 0, i32 9
  store i32 %57, i32* %59, align 8
  %60 = load %struct.conn*, %struct.conn** %8, align 8
  %61 = getelementptr inbounds %struct.conn, %struct.conn* %60, i32 0, i32 8
  store i32* null, i32** %61, align 8
  %62 = load %struct.conn*, %struct.conn** %8, align 8
  %63 = getelementptr inbounds %struct.conn, %struct.conn* %62, i32 0, i32 7
  store i32* null, i32** %63, align 8
  %64 = load i32, i32* @req_client_enqueue_omsgq, align 4
  %65 = load %struct.conn*, %struct.conn** %8, align 8
  %66 = getelementptr inbounds %struct.conn, %struct.conn* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @req_client_dequeue_omsgq, align 4
  %68 = load %struct.conn*, %struct.conn** %8, align 8
  %69 = getelementptr inbounds %struct.conn, %struct.conn* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 8
  %70 = load %struct.conn*, %struct.conn** %8, align 8
  %71 = getelementptr inbounds %struct.conn, %struct.conn* %70, i32 0, i32 4
  store i32* null, i32** %71, align 8
  %72 = load %struct.conn*, %struct.conn** %8, align 8
  %73 = getelementptr inbounds %struct.conn, %struct.conn* %72, i32 0, i32 3
  store i32* null, i32** %73, align 8
  %74 = load i32, i32* @ncurr_cconn, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @ncurr_cconn, align 4
  br label %135

76:                                               ; preds = %13
  %77 = load i8*, i8** @msg_recv, align 8
  %78 = load %struct.conn*, %struct.conn** %8, align 8
  %79 = getelementptr inbounds %struct.conn, %struct.conn* %78, i32 0, i32 17
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* @rsp_recv_next, align 4
  %81 = load %struct.conn*, %struct.conn** %8, align 8
  %82 = getelementptr inbounds %struct.conn, %struct.conn* %81, i32 0, i32 16
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @rsp_recv_done, align 4
  %84 = load %struct.conn*, %struct.conn** %8, align 8
  %85 = getelementptr inbounds %struct.conn, %struct.conn* %84, i32 0, i32 15
  store i32 %83, i32* %85, align 8
  %86 = load i8*, i8** @msg_send, align 8
  %87 = load %struct.conn*, %struct.conn** %8, align 8
  %88 = getelementptr inbounds %struct.conn, %struct.conn* %87, i32 0, i32 14
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* @req_send_next, align 4
  %90 = load %struct.conn*, %struct.conn** %8, align 8
  %91 = getelementptr inbounds %struct.conn, %struct.conn* %90, i32 0, i32 13
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @req_send_done, align 4
  %93 = load %struct.conn*, %struct.conn** %8, align 8
  %94 = getelementptr inbounds %struct.conn, %struct.conn* %93, i32 0, i32 12
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @server_close, align 4
  %96 = load %struct.conn*, %struct.conn** %8, align 8
  %97 = getelementptr inbounds %struct.conn, %struct.conn* %96, i32 0, i32 11
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @server_active, align 4
  %99 = load %struct.conn*, %struct.conn** %8, align 8
  %100 = getelementptr inbounds %struct.conn, %struct.conn* %99, i32 0, i32 10
  store i32 %98, i32* %100, align 4
  %101 = load %struct.conn*, %struct.conn** %8, align 8
  %102 = getelementptr inbounds %struct.conn, %struct.conn* %101, i32 0, i32 2
  store i32 (%struct.conn*, i8*)* @server_ref, i32 (%struct.conn*, i8*)** %102, align 8
  %103 = load i32, i32* @server_unref, align 4
  %104 = load %struct.conn*, %struct.conn** %8, align 8
  %105 = getelementptr inbounds %struct.conn, %struct.conn* %104, i32 0, i32 9
  store i32 %103, i32* %105, align 8
  %106 = load i32*, i32** @req_server_enqueue_imsgq, align 8
  %107 = load %struct.conn*, %struct.conn** %8, align 8
  %108 = getelementptr inbounds %struct.conn, %struct.conn* %107, i32 0, i32 8
  store i32* %106, i32** %108, align 8
  %109 = load i32*, i32** @req_server_dequeue_imsgq, align 8
  %110 = load %struct.conn*, %struct.conn** %8, align 8
  %111 = getelementptr inbounds %struct.conn, %struct.conn* %110, i32 0, i32 7
  store i32* %109, i32** %111, align 8
  %112 = load i32, i32* @req_server_enqueue_omsgq, align 4
  %113 = load %struct.conn*, %struct.conn** %8, align 8
  %114 = getelementptr inbounds %struct.conn, %struct.conn* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @req_server_dequeue_omsgq, align 4
  %116 = load %struct.conn*, %struct.conn** %8, align 8
  %117 = getelementptr inbounds %struct.conn, %struct.conn* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %76
  %121 = load i32*, i32** @redis_post_connect, align 8
  %122 = load %struct.conn*, %struct.conn** %8, align 8
  %123 = getelementptr inbounds %struct.conn, %struct.conn* %122, i32 0, i32 4
  store i32* %121, i32** %123, align 8
  %124 = load i32*, i32** @redis_swallow_msg, align 8
  %125 = load %struct.conn*, %struct.conn** %8, align 8
  %126 = getelementptr inbounds %struct.conn, %struct.conn* %125, i32 0, i32 3
  store i32* %124, i32** %126, align 8
  br label %134

127:                                              ; preds = %76
  %128 = load i32*, i32** @memcache_post_connect, align 8
  %129 = load %struct.conn*, %struct.conn** %8, align 8
  %130 = getelementptr inbounds %struct.conn, %struct.conn* %129, i32 0, i32 4
  store i32* %128, i32** %130, align 8
  %131 = load i32*, i32** @memcache_swallow_msg, align 8
  %132 = load %struct.conn*, %struct.conn** %8, align 8
  %133 = getelementptr inbounds %struct.conn, %struct.conn* %132, i32 0, i32 3
  store i32* %131, i32** %133, align 8
  br label %134

134:                                              ; preds = %127, %120
  br label %135

135:                                              ; preds = %134, %30
  %136 = load %struct.conn*, %struct.conn** %8, align 8
  %137 = getelementptr inbounds %struct.conn, %struct.conn* %136, i32 0, i32 2
  %138 = load i32 (%struct.conn*, i8*)*, i32 (%struct.conn*, i8*)** %137, align 8
  %139 = load %struct.conn*, %struct.conn** %8, align 8
  %140 = load i8*, i8** %5, align 8
  %141 = call i32 %138(%struct.conn* %139, i8* %140)
  %142 = load i32, i32* @LOG_VVERB, align 4
  %143 = load %struct.conn*, %struct.conn** %8, align 8
  %144 = load %struct.conn*, %struct.conn** %8, align 8
  %145 = getelementptr inbounds %struct.conn, %struct.conn* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @log_debug(i32 %142, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.conn* %143, i32 %146)
  %148 = load %struct.conn*, %struct.conn** %8, align 8
  store %struct.conn* %148, %struct.conn** %4, align 8
  br label %149

149:                                              ; preds = %135, %12
  %150 = load %struct.conn*, %struct.conn** %4, align 8
  ret %struct.conn* %150
}

declare dso_local %struct.conn* @_conn_get(...) #1

declare dso_local i32 @client_ref(%struct.conn*, i8*) #1

declare dso_local i32 @server_ref(%struct.conn*, i8*) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

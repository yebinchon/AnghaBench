; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_upstream_keepalive_module.c_ngx_http_upstream_keepalive_close_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_upstream_keepalive_module.c_ngx_http_upstream_keepalive_close_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, %struct.TYPE_12__*, i32, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"keepalive close handler\00", align 1
@MSG_PEEK = common dso_local global i32 0, align 4
@ngx_socket_errno = common dso_local global i64 0, align 8
@NGX_EAGAIN = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @ngx_http_upstream_keepalive_close_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_upstream_keepalive_close_handler(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %8 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @ngx_log_debug0(i32 %8, i32 %11, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %7, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %1
  br label %53

28:                                               ; preds = %20
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  %33 = load i32, i32* @MSG_PEEK, align 4
  %34 = call i32 @recv(i32 %31, i8* %32, i32 1, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %52

37:                                               ; preds = %28
  %38 = load i64, i64* @ngx_socket_errno, align 8
  %39 = load i64, i64* @NGX_EAGAIN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = call i64 @ngx_handle_read_event(%struct.TYPE_12__* %46, i32 0)
  %48 = load i64, i64* @NGX_OK, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %53

51:                                               ; preds = %41
  br label %70

52:                                               ; preds = %37, %28
  br label %53

53:                                               ; preds = %52, %50, %27
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %4, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %3, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %61 = call i32 @ngx_http_upstream_keepalive_close(%struct.TYPE_11__* %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = call i32 @ngx_queue_remove(i32* %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = call i32 @ngx_queue_insert_head(i32* %66, i32* %68)
  br label %70

70:                                               ; preds = %53, %51
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ngx_http_upstream_keepalive_close(%struct.TYPE_11__*) #1

declare dso_local i32 @ngx_queue_remove(i32*) #1

declare dso_local i32 @ngx_queue_insert_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

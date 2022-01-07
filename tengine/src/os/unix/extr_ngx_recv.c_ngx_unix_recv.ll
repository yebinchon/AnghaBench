; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_recv.c_ngx_unix_recv.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_recv.c_ngx_unix_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i32, i32, i64, i64 }

@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"recv: fd:%d %z of %uz\00", align 1
@ngx_event_flags = common dso_local global i32 0, align 4
@NGX_USE_GREEDY_EVENT = common dso_local global i32 0, align 4
@ngx_socket_errno = common dso_local global i64 0, align 8
@NGX_EAGAIN = common dso_local global i64 0, align 8
@NGX_EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"recv() not ready\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"recv() failed\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_USE_EPOLL_EVENT = common dso_local global i32 0, align 4
@NGX_USE_KQUEUE_EVENT = common dso_local global i32 0, align 4
@ngx_use_epoll_rdhup = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_unix_recv(%struct.TYPE_6__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %10, align 8
  br label %14

14:                                               ; preds = %77, %3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @recv(i64 %17, i32* %18, i64 %19, i32 0)
  store i64 %20, i64* %8, align 8
  %21 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @ngx_log_debug3(i32 %21, i32 %24, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %28, i64 %29)
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %14
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i32 1, i32* %37, align 8
  store i64 0, i64* %4, align 8
  br label %92

38:                                               ; preds = %14
  %39 = load i64, i64* %8, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load i32, i32* @ngx_event_flags, align 4
  %47 = load i32, i32* @NGX_USE_GREEDY_EVENT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %50, %45, %41
  %54 = load i64, i64* %8, align 8
  store i64 %54, i64* %4, align 8
  br label %92

55:                                               ; preds = %38
  %56 = load i64, i64* @ngx_socket_errno, align 8
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @NGX_EAGAIN, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* @NGX_EINTR, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60, %55
  %65 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @ngx_log_debug0(i32 %65, i32 %68, i64 %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %71, i64* %8, align 8
  br label %76

72:                                               ; preds = %60
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call i64 @ngx_connection_error(%struct.TYPE_6__* %73, i64 %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i64 %75, i64* %8, align 8
  br label %81

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @NGX_EINTR, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %14, label %81

81:                                               ; preds = %77, %72
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 4
  store i64 0, i64* %83, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* @NGX_ERROR, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %81
  %91 = load i64, i64* %8, align 8
  store i64 %91, i64* %4, align 8
  br label %92

92:                                               ; preds = %90, %53, %33
  %93 = load i64, i64* %4, align 8
  ret i64 %93
}

declare dso_local i64 @recv(i64, i32*, i64, i32) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i64, i64, i64) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i64, i8*) #1

declare dso_local i64 @ngx_connection_error(%struct.TYPE_6__*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

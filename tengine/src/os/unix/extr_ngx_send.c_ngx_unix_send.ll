; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_send.c_ngx_unix_send.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_send.c_ngx_unix_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, i64, i64 }

@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"send: fd:%d %z of %uz\00", align 1
@ngx_socket_errno = common dso_local global i64 0, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"send() returned zero\00", align 1
@NGX_EAGAIN = common dso_local global i64 0, align 8
@NGX_EINTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"send() not ready\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"send() failed\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_USE_KQUEUE_EVENT = common dso_local global i32 0, align 4
@ngx_event_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_unix_send(%struct.TYPE_6__* %0, i32* %1, i64 %2) #0 {
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
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %10, align 8
  br label %14

14:                                               ; preds = %93, %3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @send(i32 %17, i32* %18, i64 %19, i32 0)
  store i64 %20, i64* %8, align 8
  %21 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @ngx_log_debug3(i32 %21, i32 %24, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %28, i64 %29)
  %31 = load i64, i64* %8, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %14
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %33
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %41
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 4
  %48 = load i64, i64* %8, align 8
  store i64 %48, i64* %4, align 8
  br label %94

49:                                               ; preds = %14
  %50 = load i64, i64* @ngx_socket_errno, align 8
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load i32, i32* @NGX_LOG_ALERT, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @ngx_log_error(i32 %54, i32 %57, i64 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = load i64, i64* %8, align 8
  store i64 %62, i64* %4, align 8
  br label %94

63:                                               ; preds = %49
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @NGX_EAGAIN, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @NGX_EINTR, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %67, %63
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @ngx_log_debug0(i32 %74, i32 %77, i64 %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* @NGX_EAGAIN, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %84, i64* %4, align 8
  br label %94

85:                                               ; preds = %71
  br label %93

86:                                               ; preds = %67
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i32 1, i32* %88, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @ngx_connection_error(%struct.TYPE_6__* %89, i64 %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i64, i64* @NGX_ERROR, align 8
  store i64 %92, i64* %4, align 8
  br label %94

93:                                               ; preds = %85
  br label %14

94:                                               ; preds = %86, %83, %53, %40
  %95 = load i64, i64* %4, align 8
  ret i64 %95
}

declare dso_local i64 @send(i32, i32*, i64, i32) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i32, i64, i64) #1

declare dso_local i32 @ngx_log_error(i32, i32, i64, i8*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i64, i8*) #1

declare dso_local i32 @ngx_connection_error(%struct.TYPE_6__*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

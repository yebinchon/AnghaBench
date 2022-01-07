; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_udp_send.c_ngx_udp_unix_send.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_udp_send.c_ngx_udp_unix_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64 }

@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"sendto: fd:%d %z of %uz to \22%V\22\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"sendto() incomplete\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_socket_errno = common dso_local global i64 0, align 8
@NGX_EAGAIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"sendto() not ready\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_EINTR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"sendto() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_udp_unix_send(%struct.TYPE_6__* %0, i32* %1, i64 %2) #0 {
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
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 6
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %10, align 8
  br label %14

14:                                               ; preds = %86, %3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @sendto(i32 %17, i32* %18, i64 %19, i32 0, i32 %22, i32 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = call i32 @ngx_log_debug4(i32 %27, i32 %30, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %33, i64 %34, i64 %35, i32* %37)
  %39 = load i64, i64* %8, align 8
  %40 = icmp sge i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %14
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = call i32 @ngx_connection_error(%struct.TYPE_6__* %48, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i64, i64* @NGX_ERROR, align 8
  store i64 %50, i64* %4, align 8
  br label %87

51:                                               ; preds = %41
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %52
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %54, align 4
  %59 = load i64, i64* %8, align 8
  store i64 %59, i64* %4, align 8
  br label %87

60:                                               ; preds = %14
  %61 = load i64, i64* @ngx_socket_errno, align 8
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* @NGX_EAGAIN, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i64, i64* @NGX_EAGAIN, align 8
  %73 = call i32 @ngx_log_debug0(i32 %68, i32 %71, i64 %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %74, i64* %4, align 8
  br label %87

75:                                               ; preds = %60
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* @NGX_EINTR, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = load i64, i64* %9, align 8
  %84 = call i32 @ngx_connection_error(%struct.TYPE_6__* %82, i64 %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i64, i64* @NGX_ERROR, align 8
  store i64 %85, i64* %4, align 8
  br label %87

86:                                               ; preds = %75
  br label %14

87:                                               ; preds = %79, %65, %51, %45
  %88 = load i64, i64* %4, align 8
  ret i64 %88
}

declare dso_local i64 @sendto(i32, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i32, i64, i64, i32*) #1

declare dso_local i32 @ngx_connection_error(%struct.TYPE_6__*, i64, i8*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_udp_sendmsg_chain.c_ngx_sendmsg.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_udp_sendmsg_chain.c_ngx_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__*, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.msghdr = type { i32, i32, i32**, %struct.in_addr, i32, i32, i64, i32 }
%struct.in_addr = type { i32 }

@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"sendmsg: %z of %uz\00", align 1
@ngx_errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"sendmsg() not ready\00", align 1
@NGX_AGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"sendmsg() was interrupted\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"sendmsg() failed\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@IPPROTO_IP = common dso_local global i8* null, align 8
@IPPROTO_IPV6 = common dso_local global i8* null, align 8
@IPV6_PKTINFO = common dso_local global i32 0, align 4
@IP_PKTINFO = common dso_local global i32 0, align 4
@IP_SENDSRCADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)* @ngx_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_sendmsg(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.msghdr, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %9 = call i32 @ngx_memzero(%struct.msghdr* %8, i32 48)
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 7
  store i32 %17, i32* %18, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 6
  store i64 %21, i64* %22, align 8
  br label %23

23:                                               ; preds = %14, %2
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 5
  store i32 %26, i32* %27, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 4
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %59, %23
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sendmsg(i32 %35, %struct.msghdr* %8, i32 0)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ngx_log_debug2(i32 %37, i32 %40, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %75

48:                                               ; preds = %32
  %49 = load i32, i32* @ngx_errno, align 4
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  switch i32 %50, label %66 [
    i32 129, label %51
    i32 128, label %59
  ]

51:                                               ; preds = %48
  %52 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @ngx_log_debug0(i32 %52, i32 %55, i32 %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %58, i32* %3, align 4
  br label %77

59:                                               ; preds = %48
  %60 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @ngx_log_debug0(i32 %60, i32 %63, i32 %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %32

66:                                               ; preds = %48
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @ngx_connection_error(%struct.TYPE_13__* %71, i32 %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32, i32* @NGX_ERROR, align 4
  store i32 %74, i32* %3, align 4
  br label %77

75:                                               ; preds = %32
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %66, %51
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @ngx_memzero(%struct.msghdr*, i32) #1

declare dso_local i32 @sendmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_connection_error(%struct.TYPE_13__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

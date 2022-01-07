; ModuleID = '/home/carl/AnghaBench/systemd/src/socket-proxy/extr_socket-proxyd.c_connection_start.c'
source_filename = "/home/carl/AnghaBench/systemd/src/socket-proxy/extr_socket-proxyd.c_connection_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_NONBLOCK = common dso_local global i32 0, align 4
@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to get remote socket: %m\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@connect_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to add connection socket: %m\00", align 1
@SD_EVENT_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to enable oneshot event source: %m\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to connect to remote host: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*)* @connection_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connection_start(%struct.sockaddr* %0, %struct.sockaddr* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  %9 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %10 = call i32 @assert(%struct.sockaddr* %9)
  %11 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %12 = call i32 @assert(%struct.sockaddr* %11)
  %13 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %14 = call i32 @assert(%struct.sockaddr* %13)
  %15 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %16 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SOCK_STREAM, align 4
  %19 = load i32, i32* @SOCK_NONBLOCK, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SOCK_CLOEXEC, align 4
  %22 = or i32 %20, %21
  %23 = call i64 @socket(i32 %17, i32 %22, i32 0)
  %24 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %25 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %27 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 @log_error_errno(i32 %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %90

33:                                               ; preds = %3
  %34 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %35 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %38 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %39 = call i32 @connect(i64 %36, %struct.sockaddr* %37, %struct.sockaddr* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %82

42:                                               ; preds = %33
  %43 = load i32, i32* @errno, align 4
  %44 = load i32, i32* @EINPROGRESS, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %42
  %47 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %48 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %53 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %52, i32 0, i32 1
  %54 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %55 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @EPOLLOUT, align 4
  %58 = load i32, i32* @connect_cb, align 4
  %59 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %60 = call i32 @sd_event_add_io(i32 %51, i32* %53, i64 %56, i32 %57, i32 %58, %struct.sockaddr* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %46
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @log_error_errno(i32 %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %90

66:                                               ; preds = %46
  %67 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %68 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SD_EVENT_ONESHOT, align 4
  %71 = call i32 @sd_event_source_set_enabled(i32 %69, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @log_error_errno(i32 %75, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %90

77:                                               ; preds = %66
  br label %81

78:                                               ; preds = %42
  %79 = load i32, i32* @errno, align 4
  %80 = call i32 @log_error_errno(i32 %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %90

81:                                               ; preds = %77
  br label %89

82:                                               ; preds = %33
  %83 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %84 = call i32 @connection_complete(%struct.sockaddr* %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %90

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %81
  store i32 0, i32* %4, align 4
  br label %93

90:                                               ; preds = %87, %78, %74, %63, %30
  %91 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %92 = call i32 @connection_free(%struct.sockaddr* %91)
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %90, %89
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @assert(%struct.sockaddr*) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @connect(i64, %struct.sockaddr*, %struct.sockaddr*) #1

declare dso_local i32 @sd_event_add_io(i32, i32*, i64, i32, i32, %struct.sockaddr*) #1

declare dso_local i32 @sd_event_source_set_enabled(i32, i32) #1

declare dso_local i32 @connection_complete(%struct.sockaddr*) #1

declare dso_local i32 @connection_free(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

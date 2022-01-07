; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_forward_message_tcp.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_forward_message_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { i32 }
%struct.socket = type { i64, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.socket_lock = type { i32 }
%struct.socket_message = type { i8*, i32, i32, i32 }

@errno = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"socket-server: EAGAIN capture.\0A\00", align 1
@SOCKET_ERR = common dso_local global i32 0, align 4
@SOCKET_CLOSE = common dso_local global i32 0, align 4
@SOCKET_TYPE_HALFCLOSE = common dso_local global i64 0, align 8
@MIN_READ_BUFFER = common dso_local global i32 0, align 4
@SOCKET_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket_server*, %struct.socket*, %struct.socket_lock*, %struct.socket_message*)* @forward_message_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @forward_message_tcp(%struct.socket_server* %0, %struct.socket* %1, %struct.socket_lock* %2, %struct.socket_message* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket_server*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.socket_lock*, align 8
  %9 = alloca %struct.socket_message*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.socket_server* %0, %struct.socket_server** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.socket_lock* %2, %struct.socket_lock** %8, align 8
  store %struct.socket_message* %3, %struct.socket_message** %9, align 8
  %13 = load %struct.socket*, %struct.socket** %7, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i8* @MALLOC(i32 %17)
  store i8* %18, i8** %11, align 8
  %19 = load %struct.socket*, %struct.socket** %7, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %11, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @read(i32 %21, i8* %22, i32 %23)
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %4
  %29 = load i8*, i8** %11, align 8
  %30 = call i32 @FREE(i8* %29)
  %31 = load i32, i32* @errno, align 4
  switch i32 %31, label %36 [
    i32 128, label %32
    i32 129, label %33
  ]

32:                                               ; preds = %28
  br label %47

33:                                               ; preds = %28
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %47

36:                                               ; preds = %28
  %37 = load %struct.socket_server*, %struct.socket_server** %6, align 8
  %38 = load %struct.socket*, %struct.socket** %7, align 8
  %39 = load %struct.socket_lock*, %struct.socket_lock** %8, align 8
  %40 = load %struct.socket_message*, %struct.socket_message** %9, align 8
  %41 = call i32 @force_close(%struct.socket_server* %37, %struct.socket* %38, %struct.socket_lock* %39, %struct.socket_message* %40)
  %42 = load i32, i32* @errno, align 4
  %43 = call i8* @strerror(i32 %42)
  %44 = load %struct.socket_message*, %struct.socket_message** %9, align 8
  %45 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* @SOCKET_ERR, align 4
  store i32 %46, i32* %5, align 4
  br label %117

47:                                               ; preds = %33, %32
  store i32 -1, i32* %5, align 4
  br label %117

48:                                               ; preds = %4
  %49 = load i32, i32* %12, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @FREE(i8* %52)
  %54 = load %struct.socket_server*, %struct.socket_server** %6, align 8
  %55 = load %struct.socket*, %struct.socket** %7, align 8
  %56 = load %struct.socket_lock*, %struct.socket_lock** %8, align 8
  %57 = load %struct.socket_message*, %struct.socket_message** %9, align 8
  %58 = call i32 @force_close(%struct.socket_server* %54, %struct.socket* %55, %struct.socket_lock* %56, %struct.socket_message* %57)
  %59 = load i32, i32* @SOCKET_CLOSE, align 4
  store i32 %59, i32* %5, align 4
  br label %117

60:                                               ; preds = %48
  %61 = load %struct.socket*, %struct.socket** %7, align 8
  %62 = getelementptr inbounds %struct.socket, %struct.socket* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SOCKET_TYPE_HALFCLOSE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @FREE(i8* %67)
  store i32 -1, i32* %5, align 4
  br label %117

69:                                               ; preds = %60
  %70 = load %struct.socket_server*, %struct.socket_server** %6, align 8
  %71 = load %struct.socket*, %struct.socket** %7, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @stat_read(%struct.socket_server* %70, %struct.socket* %71, i32 %72)
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %69
  %78 = load %struct.socket*, %struct.socket** %7, align 8
  %79 = getelementptr inbounds %struct.socket, %struct.socket* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %81, 2
  store i32 %82, i32* %80, align 8
  br label %99

83:                                               ; preds = %69
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @MIN_READ_BUFFER, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load i32, i32* %12, align 4
  %89 = mul nsw i32 %88, 2
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.socket*, %struct.socket** %7, align 8
  %94 = getelementptr inbounds %struct.socket, %struct.socket* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sdiv i32 %96, 2
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %92, %87, %83
  br label %99

99:                                               ; preds = %98, %77
  %100 = load %struct.socket*, %struct.socket** %7, align 8
  %101 = getelementptr inbounds %struct.socket, %struct.socket* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.socket_message*, %struct.socket_message** %9, align 8
  %104 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load %struct.socket*, %struct.socket** %7, align 8
  %106 = getelementptr inbounds %struct.socket, %struct.socket* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.socket_message*, %struct.socket_message** %9, align 8
  %109 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.socket_message*, %struct.socket_message** %9, align 8
  %112 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  %113 = load i8*, i8** %11, align 8
  %114 = load %struct.socket_message*, %struct.socket_message** %9, align 8
  %115 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %114, i32 0, i32 0
  store i8* %113, i8** %115, align 8
  %116 = load i32, i32* @SOCKET_DATA, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %99, %66, %51, %47, %36
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i8* @MALLOC(i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @FREE(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @force_close(%struct.socket_server*, %struct.socket*, %struct.socket_lock*, %struct.socket_message*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @stat_read(%struct.socket_server*, %struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

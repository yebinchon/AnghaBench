; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_start_socket.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_start_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { i32, %struct.socket* }
%struct.socket = type { i64, i32, i32, i32 }
%struct.request_start = type { i32, i32 }
%struct.socket_message = type { i32, i8*, i64, i32 }
%struct.socket_lock = type { i32 }

@SOCKET_TYPE_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"invalid socket\00", align 1
@SOCKET_ERR = common dso_local global i32 0, align 4
@SOCKET_TYPE_PACCEPT = common dso_local global i64 0, align 8
@SOCKET_TYPE_PLISTEN = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@SOCKET_TYPE_CONNECTED = common dso_local global i64 0, align 8
@SOCKET_TYPE_LISTEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@SOCKET_OPEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"transfer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket_server*, %struct.request_start*, %struct.socket_message*)* @start_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_socket(%struct.socket_server* %0, %struct.request_start* %1, %struct.socket_message* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket_server*, align 8
  %6 = alloca %struct.request_start*, align 8
  %7 = alloca %struct.socket_message*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.socket*, align 8
  %10 = alloca %struct.socket_lock, align 4
  store %struct.socket_server* %0, %struct.socket_server** %5, align 8
  store %struct.request_start* %1, %struct.request_start** %6, align 8
  store %struct.socket_message* %2, %struct.socket_message** %7, align 8
  %11 = load %struct.request_start*, %struct.request_start** %6, align 8
  %12 = getelementptr inbounds %struct.request_start, %struct.request_start* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %16 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.request_start*, %struct.request_start** %6, align 8
  %18 = getelementptr inbounds %struct.request_start, %struct.request_start* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %21 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %23 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %25 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %24, i32 0, i32 1
  store i8* null, i8** %25, align 8
  %26 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %27 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %26, i32 0, i32 1
  %28 = load %struct.socket*, %struct.socket** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @HASH_ID(i32 %29)
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %28, i64 %30
  store %struct.socket* %31, %struct.socket** %9, align 8
  %32 = load %struct.socket*, %struct.socket** %9, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SOCKET_TYPE_INVALID, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %3
  %38 = load %struct.socket*, %struct.socket** %9, align 8
  %39 = getelementptr inbounds %struct.socket, %struct.socket* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37, %3
  %44 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %45 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %44, i32 0, i32 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %45, align 8
  %46 = load i32, i32* @SOCKET_ERR, align 4
  store i32 %46, i32* %4, align 4
  br label %120

47:                                               ; preds = %37
  %48 = load %struct.socket*, %struct.socket** %9, align 8
  %49 = call i32 @socket_lock_init(%struct.socket* %48, %struct.socket_lock* %10)
  %50 = load %struct.socket*, %struct.socket** %9, align 8
  %51 = getelementptr inbounds %struct.socket, %struct.socket* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SOCKET_TYPE_PACCEPT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %47
  %56 = load %struct.socket*, %struct.socket** %9, align 8
  %57 = getelementptr inbounds %struct.socket, %struct.socket* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SOCKET_TYPE_PLISTEN, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %103

61:                                               ; preds = %55, %47
  %62 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %63 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.socket*, %struct.socket** %9, align 8
  %66 = getelementptr inbounds %struct.socket, %struct.socket* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.socket*, %struct.socket** %9, align 8
  %69 = call i64 @sp_add(i32 %64, i32 %67, %struct.socket* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %61
  %72 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %73 = load %struct.socket*, %struct.socket** %9, align 8
  %74 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %75 = call i32 @force_close(%struct.socket_server* %72, %struct.socket* %73, %struct.socket_lock* %10, %struct.socket_message* %74)
  %76 = load i32, i32* @errno, align 4
  %77 = call i8* @strerror(i32 %76)
  %78 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %79 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* @SOCKET_ERR, align 4
  store i32 %80, i32* %4, align 4
  br label %120

81:                                               ; preds = %61
  %82 = load %struct.socket*, %struct.socket** %9, align 8
  %83 = getelementptr inbounds %struct.socket, %struct.socket* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SOCKET_TYPE_PACCEPT, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i64, i64* @SOCKET_TYPE_CONNECTED, align 8
  br label %91

89:                                               ; preds = %81
  %90 = load i64, i64* @SOCKET_TYPE_LISTEN, align 8
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i64 [ %88, %87 ], [ %90, %89 ]
  %93 = load %struct.socket*, %struct.socket** %9, align 8
  %94 = getelementptr inbounds %struct.socket, %struct.socket* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.request_start*, %struct.request_start** %6, align 8
  %96 = getelementptr inbounds %struct.request_start, %struct.request_start* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.socket*, %struct.socket** %9, align 8
  %99 = getelementptr inbounds %struct.socket, %struct.socket* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %101 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %100, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %101, align 8
  %102 = load i32, i32* @SOCKET_OPEN, align 4
  store i32 %102, i32* %4, align 4
  br label %120

103:                                              ; preds = %55
  %104 = load %struct.socket*, %struct.socket** %9, align 8
  %105 = getelementptr inbounds %struct.socket, %struct.socket* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SOCKET_TYPE_CONNECTED, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %103
  %110 = load %struct.request_start*, %struct.request_start** %6, align 8
  %111 = getelementptr inbounds %struct.request_start, %struct.request_start* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.socket*, %struct.socket** %9, align 8
  %114 = getelementptr inbounds %struct.socket, %struct.socket* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  %115 = load %struct.socket_message*, %struct.socket_message** %7, align 8
  %116 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %115, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %116, align 8
  %117 = load i32, i32* @SOCKET_OPEN, align 4
  store i32 %117, i32* %4, align 4
  br label %120

118:                                              ; preds = %103
  br label %119

119:                                              ; preds = %118
  store i32 -1, i32* %4, align 4
  br label %120

120:                                              ; preds = %119, %109, %91, %71, %43
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i64 @HASH_ID(i32) #1

declare dso_local i32 @socket_lock_init(%struct.socket*, %struct.socket_lock*) #1

declare dso_local i64 @sp_add(i32, i32, %struct.socket*) #1

declare dso_local i32 @force_close(%struct.socket_server*, %struct.socket*, %struct.socket_lock*, %struct.socket_message*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

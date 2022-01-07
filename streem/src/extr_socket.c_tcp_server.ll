; ModuleID = '/home/carl/AnghaBench/streem/src/extr_socket.c_tcp_server.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_socket.c_tcp_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i64, i32, i32, %struct.addrinfo*, i32 }
%struct.socket_data = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@AF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@EAI_AGAIN = common dso_local global i32 0, align 4
@STRM_NG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"socket error: bind\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"socket error: listen\00", align 1
@strm_producer = common dso_local global i32 0, align 4
@server_accept = common dso_local global i32 0, align 4
@server_close = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_OPENTYPE = common dso_local global i32 0, align 4
@SO_SYNCHRONOUS_NONALERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @tcp_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_server(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.addrinfo, align 8
  %11 = alloca %struct.addrinfo*, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca [12 x i8], align 1
  %18 = alloca %struct.socket_data*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @strm_get_args(i32* %21, i32 %22, i32* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %15)
  %25 = load i32, i32* %15, align 4
  %26 = call i64 @strm_number_p(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = getelementptr inbounds [12 x i8], [12 x i8]* %17, i64 0, i64 0
  %30 = load i32, i32* %15, align 4
  %31 = call i64 @strm_value_int(i32 %30)
  %32 = trunc i64 %31 to i32
  %33 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = getelementptr inbounds [12 x i8], [12 x i8]* %17, i64 0, i64 0
  store i8* %34, i8** %16, align 8
  br label %41

35:                                               ; preds = %4
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @strm_value_str(i32 %36)
  store i32 %37, i32* %20, align 4
  %38 = load i32, i32* %20, align 4
  %39 = getelementptr inbounds [12 x i8], [12 x i8]* %17, i64 0, i64 0
  %40 = call i8* @strm_str_cstr(i32 %38, i8* %39)
  store i8* %40, i8** %16, align 8
  br label %41

41:                                               ; preds = %35, %28
  %42 = call i32 @memset(%struct.addrinfo* %10, i32 0, i32 40)
  %43 = load i32, i32* @AF_UNSPEC, align 4
  %44 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 4
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @SOCK_STREAM, align 4
  %46 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 3
  store i32 %45, i32* %46, align 8
  %47 = load i32, i32* @AI_PASSIVE, align 4
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 6
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 2
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %59, %41
  %51 = load i8*, i8** %16, align 8
  %52 = call i32 @getaddrinfo(i32* null, i8* %51, %struct.addrinfo* %10, %struct.addrinfo** %11)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @EAI_AGAIN, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %50

60:                                               ; preds = %55
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %14, align 4
  %63 = call i8* @gai_strerror(i32 %62)
  %64 = call i32 @strm_raise(i32* %61, i8* %63)
  %65 = load i32, i32* @STRM_NG, align 4
  store i32 %65, i32* %5, align 4
  br label %138

66:                                               ; preds = %50
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  store %struct.addrinfo* %68, %struct.addrinfo** %12, align 8
  br label %69

69:                                               ; preds = %100, %67
  %70 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %71 = icmp ne %struct.addrinfo* %70, null
  br i1 %71, label %72, label %104

72:                                               ; preds = %69
  %73 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %74 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %77 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %80 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @socket(i32 %75, i32 %78, i64 %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  br label %100

86:                                               ; preds = %72
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %89 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %92 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @bind(i32 %87, i32 %90, i32 %93)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  br label %104

97:                                               ; preds = %86
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @closesocket(i32 %98)
  br label %100

100:                                              ; preds = %97, %85
  %101 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %102 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %101, i32 0, i32 5
  %103 = load %struct.addrinfo*, %struct.addrinfo** %102, align 8
  store %struct.addrinfo* %103, %struct.addrinfo** %12, align 8
  br label %69

104:                                              ; preds = %96, %69
  %105 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %106 = call i32 @freeaddrinfo(%struct.addrinfo* %105)
  %107 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %108 = icmp eq %struct.addrinfo* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @strm_raise(i32* %110, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i32, i32* @STRM_NG, align 4
  store i32 %112, i32* %5, align 4
  br label %138

113:                                              ; preds = %104
  %114 = load i32, i32* %13, align 4
  %115 = call i64 @listen(i32 %114, i32 5)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @closesocket(i32 %118)
  %120 = load i32*, i32** %6, align 8
  %121 = call i32 @strm_raise(i32* %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %122 = load i32, i32* @STRM_NG, align 4
  store i32 %122, i32* %5, align 4
  br label %138

123:                                              ; preds = %113
  %124 = call %struct.socket_data* @malloc(i32 4)
  store %struct.socket_data* %124, %struct.socket_data** %18, align 8
  %125 = load i32, i32* %13, align 4
  %126 = load %struct.socket_data*, %struct.socket_data** %18, align 8
  %127 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @strm_producer, align 4
  %129 = load i32, i32* @server_accept, align 4
  %130 = load i32, i32* @server_close, align 4
  %131 = load %struct.socket_data*, %struct.socket_data** %18, align 8
  %132 = bitcast %struct.socket_data* %131 to i8*
  %133 = call i32* @strm_stream_new(i32 %128, i32 %129, i32 %130, i8* %132)
  store i32* %133, i32** %19, align 8
  %134 = load i32*, i32** %19, align 8
  %135 = call i32 @strm_stream_value(i32* %134)
  %136 = load i32*, i32** %9, align 8
  store i32 %135, i32* %136, align 4
  %137 = load i32, i32* @STRM_OK, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %123, %117, %109, %60
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i32*) #1

declare dso_local i64 @strm_number_p(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @strm_value_int(i32) #1

declare dso_local i32 @strm_value_str(i32) #1

declare dso_local i8* @strm_str_cstr(i32, i8*) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i32*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @strm_raise(i32*, i8*) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @socket(i32, i32, i64) #1

declare dso_local i64 @bind(i32, i32, i32) #1

declare dso_local i32 @closesocket(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local %struct.socket_data* @malloc(i32) #1

declare dso_local i32* @strm_stream_new(i32, i32, i32, i8*) #1

declare dso_local i32 @strm_stream_value(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

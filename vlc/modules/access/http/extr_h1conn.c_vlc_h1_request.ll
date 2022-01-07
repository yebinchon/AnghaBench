; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h1conn.c_vlc_h1_request.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h1conn.c_vlc_h1_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_stream = type { i32 }
%struct.vlc_http_msg = type { i32 }
%struct.vlc_http_conn = type { i32 }
%struct.addrinfo = type { %struct.addrinfo*, i32, i32 }

@IPPROTO_TCP = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"resolving %s ...\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"cannot resolve %s: %s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"socket error: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_http_stream* @vlc_h1_request(i8* %0, i8* %1, i32 %2, i32 %3, %struct.vlc_http_msg* %4, i32 %5, %struct.vlc_http_conn** noalias %6) #0 {
  %8 = alloca %struct.vlc_http_stream*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vlc_http_msg*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.vlc_http_conn**, align 8
  %16 = alloca %struct.addrinfo, align 8
  %17 = alloca %struct.addrinfo*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.addrinfo*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.vlc_http_conn*, align 8
  %22 = alloca %struct.vlc_http_stream*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.vlc_http_msg* %4, %struct.vlc_http_msg** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.vlc_http_conn** %6, %struct.vlc_http_conn*** %15, align 8
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %16, i32 0, i32 0
  store %struct.addrinfo* null, %struct.addrinfo** %23, align 8
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %16, i32 0, i32 1
  %25 = load i32, i32* @IPPROTO_TCP, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %16, i32 0, i32 2
  %27 = load i32, i32* @SOCK_STREAM, align 4
  store i32 %27, i32* %26, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @vlc_http_dbg(i8* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i8*, i8** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @vlc_getaddrinfo_i11e(i8* %31, i32 %32, %struct.addrinfo* %16, %struct.addrinfo** %17)
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %18, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %7
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* %18, align 4
  %40 = call i32 @gai_strerror(i32 %39)
  %41 = call i32 (i8*, i8*, i8*, ...) @vlc_http_err(i8* %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32 %40)
  store %struct.vlc_http_stream* null, %struct.vlc_http_stream** %8, align 8
  br label %106

42:                                               ; preds = %7
  %43 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  store %struct.addrinfo* %43, %struct.addrinfo** %19, align 8
  br label %44

44:                                               ; preds = %99, %42
  %45 = load %struct.addrinfo*, %struct.addrinfo** %19, align 8
  %46 = icmp ne %struct.addrinfo* %45, null
  br i1 %46, label %47, label %103

47:                                               ; preds = %44
  %48 = load %struct.addrinfo*, %struct.addrinfo** %19, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call i32* @vlc_tls_SocketOpenAddrInfo(%struct.addrinfo* %48, i32 %49)
  store i32* %50, i32** %20, align 8
  %51 = load i32*, i32** %20, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 @vlc_strerror_c(i32 %55)
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32 (i8*, i8*, i8*, ...) @vlc_http_err(i8* %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  br label %99

60:                                               ; preds = %47
  %61 = load i8*, i8** %9, align 8
  %62 = load i32*, i32** %20, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call %struct.vlc_http_conn* @vlc_h1_conn_create(i8* %61, i32* %62, i32 %63)
  store %struct.vlc_http_conn* %64, %struct.vlc_http_conn** %21, align 8
  %65 = load %struct.vlc_http_conn*, %struct.vlc_http_conn** %21, align 8
  %66 = icmp eq %struct.vlc_http_conn* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load i32*, i32** %20, align 8
  %72 = call i32 @vlc_tls_SessionDelete(i32* %71)
  br label %99

73:                                               ; preds = %60
  %74 = load %struct.vlc_http_conn*, %struct.vlc_http_conn** %21, align 8
  %75 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %13, align 8
  %76 = call %struct.vlc_http_stream* @vlc_http_stream_open(%struct.vlc_http_conn* %74, %struct.vlc_http_msg* %75)
  store %struct.vlc_http_stream* %76, %struct.vlc_http_stream** %22, align 8
  %77 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %22, align 8
  %78 = icmp ne %struct.vlc_http_stream* %77, null
  br i1 %78, label %79, label %92

79:                                               ; preds = %73
  %80 = load %struct.vlc_http_conn**, %struct.vlc_http_conn*** %15, align 8
  %81 = icmp ne %struct.vlc_http_conn** %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load %struct.vlc_http_conn*, %struct.vlc_http_conn** %21, align 8
  %84 = load %struct.vlc_http_conn**, %struct.vlc_http_conn*** %15, align 8
  store %struct.vlc_http_conn* %83, %struct.vlc_http_conn** %84, align 8
  br label %88

85:                                               ; preds = %79
  %86 = load %struct.vlc_http_conn*, %struct.vlc_http_conn** %21, align 8
  %87 = call i32 @vlc_http_conn_release(%struct.vlc_http_conn* %86)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %90 = call i32 @freeaddrinfo(%struct.addrinfo* %89)
  %91 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %22, align 8
  store %struct.vlc_http_stream* %91, %struct.vlc_http_stream** %8, align 8
  br label %106

92:                                               ; preds = %73
  %93 = load %struct.vlc_http_conn*, %struct.vlc_http_conn** %21, align 8
  %94 = call i32 @vlc_http_conn_release(%struct.vlc_http_conn* %93)
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  br label %103

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98, %70, %53
  %100 = load %struct.addrinfo*, %struct.addrinfo** %19, align 8
  %101 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %100, i32 0, i32 0
  %102 = load %struct.addrinfo*, %struct.addrinfo** %101, align 8
  store %struct.addrinfo* %102, %struct.addrinfo** %19, align 8
  br label %44

103:                                              ; preds = %97, %44
  %104 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %105 = call i32 @freeaddrinfo(%struct.addrinfo* %104)
  store %struct.vlc_http_stream* null, %struct.vlc_http_stream** %8, align 8
  br label %106

106:                                              ; preds = %103, %88, %36
  %107 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %8, align 8
  ret %struct.vlc_http_stream* %107
}

declare dso_local i32 @vlc_http_dbg(i8*, i8*, i8*) #1

declare dso_local i32 @vlc_getaddrinfo_i11e(i8*, i32, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @vlc_http_err(i8*, i8*, i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32* @vlc_tls_SocketOpenAddrInfo(%struct.addrinfo*, i32) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local %struct.vlc_http_conn* @vlc_h1_conn_create(i8*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_tls_SessionDelete(i32*) #1

declare dso_local %struct.vlc_http_stream* @vlc_http_stream_open(%struct.vlc_http_conn*, %struct.vlc_http_msg*) #1

declare dso_local i32 @vlc_http_conn_release(%struct.vlc_http_conn*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

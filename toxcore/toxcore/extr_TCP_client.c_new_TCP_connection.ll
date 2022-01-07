; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_client.c_new_TCP_connection.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_client.c_new_TCP_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i32, %struct.TYPE_20__, %struct.TYPE_22__, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@TCP_CLIENT_PROXY_HTTP_CONNECTING = common dso_local global i32 0, align 4
@TCP_CLIENT_PROXY_SOCKS5_CONNECTING = common dso_local global i32 0, align 4
@TCP_CLIENT_CONNECTING = common dso_local global i32 0, align 4
@TCP_CONNECTION_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @new_TCP_connection(i64 %0, i64* %1, i64* %2, i64* %3, %struct.TYPE_20__* %4) #0 {
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_22__, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_20__, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  store i64 %0, i64* %17, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.TYPE_20__* %4, %struct.TYPE_20__** %11, align 8
  %18 = call i64 (...) @networking_at_startup()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %6, align 8
  br label %159

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AF_INET, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AF_INET6, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %6, align 8
  br label %159

34:                                               ; preds = %27, %21
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %12, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %39 = icmp eq %struct.TYPE_20__* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  store i32 129, i32* %41, align 8
  store %struct.TYPE_20__* %13, %struct.TYPE_20__** %11, align 8
  br label %42

42:                                               ; preds = %40, %34
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 129
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %12, align 8
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i64, i64* %12, align 8
  %55 = load i32, i32* @SOCK_STREAM, align 4
  %56 = load i32, i32* @IPPROTO_TCP, align 4
  %57 = call i32 @socket(i64 %54, i32 %55, i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @sock_valid(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %6, align 8
  br label %159

62:                                               ; preds = %53
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @set_socket_nosigpipe(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @kill_sock(i32 %67)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %6, align 8
  br label %159

69:                                               ; preds = %62
  %70 = load i32, i32* %14, align 4
  %71 = call i64 @set_socket_nonblock(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load i32, i32* %14, align 4
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @connect_sock_to(i32 %74, i64 %78, %struct.TYPE_20__* %75)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %73, %69
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @kill_sock(i32 %82)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %6, align 8
  br label %159

84:                                               ; preds = %73
  %85 = call %struct.TYPE_21__* @calloc(i32 56, i32 1)
  store %struct.TYPE_21__* %85, %struct.TYPE_21__** %15, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %87 = icmp eq %struct.TYPE_21__* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @kill_sock(i32 %89)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %6, align 8
  br label %159

91:                                               ; preds = %84
  %92 = load i32, i32* %14, align 4
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 7
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load i64*, i64** %8, align 8
  %99 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %100 = call i32 @memcpy(i32 %97, i64* %98, i32 %99)
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = load i64*, i64** %9, align 8
  %105 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %106 = call i32 @memcpy(i32 %103, i64* %104, i32 %105)
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load i64*, i64** %10, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @encrypt_precompute(i32 %109, i64* %110, i32 %113)
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 3
  %117 = bitcast %struct.TYPE_22__* %116 to i8*
  %118 = bitcast %struct.TYPE_22__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %117, i8* align 8 %118, i64 8, i1 false)
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %122 = bitcast %struct.TYPE_20__* %120 to i8*
  %123 = bitcast %struct.TYPE_20__* %121 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %122, i8* align 8 %123, i64 16, i1 false)
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  switch i32 %126, label %152 [
    i32 130, label %127
    i32 128, label %133
    i32 129, label %139
  ]

127:                                              ; preds = %91
  %128 = load i32, i32* @TCP_CLIENT_PROXY_HTTP_CONNECTING, align 4
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %132 = call i32 @proxy_http_generate_connection_request(%struct.TYPE_21__* %131)
  br label %152

133:                                              ; preds = %91
  %134 = load i32, i32* @TCP_CLIENT_PROXY_SOCKS5_CONNECTING, align 4
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 8
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %138 = call i32 @proxy_socks5_generate_handshake(%struct.TYPE_21__* %137)
  br label %152

139:                                              ; preds = %91
  %140 = load i32, i32* @TCP_CLIENT_CONNECTING, align 4
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %144 = call i32 @generate_handshake(%struct.TYPE_21__* %143)
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %146, label %151

146:                                              ; preds = %139
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @kill_sock(i32 %147)
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %150 = call i32 @free(%struct.TYPE_21__* %149)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %6, align 8
  br label %159

151:                                              ; preds = %139
  br label %152

152:                                              ; preds = %91, %151, %133, %127
  %153 = call i64 (...) @unix_time()
  %154 = load i64, i64* @TCP_CONNECTION_TIMEOUT, align 8
  %155 = add nsw i64 %153, %154
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  store %struct.TYPE_21__* %158, %struct.TYPE_21__** %6, align 8
  br label %159

159:                                              ; preds = %152, %146, %88, %81, %66, %61, %33, %20
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  ret %struct.TYPE_21__* %160
}

declare dso_local i64 @networking_at_startup(...) #1

declare dso_local i32 @socket(i64, i32, i32) #1

declare dso_local i32 @sock_valid(i32) #1

declare dso_local i32 @set_socket_nosigpipe(i32) #1

declare dso_local i32 @kill_sock(i32) #1

declare dso_local i64 @set_socket_nonblock(i32) #1

declare dso_local i64 @connect_sock_to(i32, i64, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_21__* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @encrypt_precompute(i32, i64*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @proxy_http_generate_connection_request(%struct.TYPE_21__*) #1

declare dso_local i32 @proxy_socks5_generate_handshake(%struct.TYPE_21__*) #1

declare dso_local i32 @generate_handshake(%struct.TYPE_21__*) #1

declare dso_local i32 @free(%struct.TYPE_21__*) #1

declare dso_local i64 @unix_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

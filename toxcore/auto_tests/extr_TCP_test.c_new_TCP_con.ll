; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_TCP_test.c_new_TCP_con.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_TCP_test.c_new_TCP_con.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_TCP_con = type { i32, i32*, i32, i32*, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@ports = common dso_local global i32* null, align 8
@NUM_PORTS = common dso_local global i64 0, align 8
@in6addr_loopback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to connect to TCP relay server\00", align 1
@crypto_box_SECRETKEYBYTES = common dso_local global i32 0, align 4
@TCP_HANDSHAKE_PLAIN_SIZE = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@crypto_box_NONCEBYTES = common dso_local global i32 0, align 4
@TCP_CLIENT_HANDSHAKE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Encrypt failed.\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"send Failed.\00", align 1
@TCP_SERVER_HANDSHAKE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"recv Failed.\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Decrypt Failed.\00", align 1
@crypto_box_BEFORENMBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sec_TCP_con* @new_TCP_con(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.sec_TCP_con*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in6, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %14 = call %struct.sec_TCP_con* @malloc(i32 40)
  store %struct.sec_TCP_con* %14, %struct.sec_TCP_con** %3, align 8
  %15 = load i32, i32* @AF_INET6, align 4
  %16 = load i32, i32* @SOCK_STREAM, align 4
  %17 = load i32, i32* @IPPROTO_TCP, align 4
  %18 = call i32 @socket(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = bitcast %struct.sockaddr_in6* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 16, i1 false)
  %20 = load i32, i32* @AF_INET6, align 4
  %21 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** @ports, align 8
  %23 = call i64 (...) @rand()
  %24 = load i64, i64* @NUM_PORTS, align 8
  %25 = urem i64 %23, %24
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @htons(i32 %27)
  %29 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @in6addr_loopback, align 4
  %31 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  %33 = bitcast %struct.sockaddr_in6* %5 to %struct.sockaddr*
  %34 = call i32 @connect(i32 %32, %struct.sockaddr* %33, i32 16)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @ck_assert_msg(i32 %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @crypto_box_SECRETKEYBYTES, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %7, align 8
  %42 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %8, align 8
  %43 = load %struct.sec_TCP_con*, %struct.sec_TCP_con** %3, align 8
  %44 = getelementptr inbounds %struct.sec_TCP_con, %struct.sec_TCP_con* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @crypto_box_keypair(i32* %45, i32* %42)
  %47 = load %struct.sec_TCP_con*, %struct.sec_TCP_con** %3, align 8
  %48 = getelementptr inbounds %struct.sec_TCP_con, %struct.sec_TCP_con* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @random_nonce(i32* %49)
  %51 = load i32, i32* @crypto_box_SECRETKEYBYTES, align 4
  %52 = zext i32 %51 to i64
  %53 = alloca i32, i64 %52, align 16
  store i64 %52, i64* %9, align 8
  %54 = load i32, i32* @TCP_HANDSHAKE_PLAIN_SIZE, align 4
  %55 = zext i32 %54 to i64
  %56 = alloca i32, i64 %55, align 16
  store i64 %55, i64* %10, align 8
  %57 = call i32 @crypto_box_keypair(i32* %56, i32* %53)
  %58 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load %struct.sec_TCP_con*, %struct.sec_TCP_con** %3, align 8
  %62 = getelementptr inbounds %struct.sec_TCP_con, %struct.sec_TCP_con* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %65 = call i32 @memcpy(i32* %60, i32* %63, i32 %64)
  %66 = load i32, i32* @TCP_CLIENT_HANDSHAKE_SIZE, align 4
  %67 = zext i32 %66 to i64
  %68 = alloca i32, i64 %67, align 16
  store i64 %67, i64* %11, align 8
  %69 = load %struct.sec_TCP_con*, %struct.sec_TCP_con** %3, align 8
  %70 = getelementptr inbounds %struct.sec_TCP_con, %struct.sec_TCP_con* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %73 = call i32 @memcpy(i32* %68, i32* %71, i32 %72)
  %74 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %68, i64 %75
  %77 = call i32 @new_nonce(i32* %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %68, i64 %82
  %84 = load i32, i32* @TCP_HANDSHAKE_PLAIN_SIZE, align 4
  %85 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %68, i64 %86
  %88 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = call i32 @encrypt_data(i32 %80, i32* %42, i32* %83, i32* %56, i32 %84, i32* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @TCP_CLIENT_HANDSHAKE_SIZE, align 4
  %94 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %95 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %96 = add nsw i32 %94, %95
  %97 = sub nsw i32 %93, %96
  %98 = icmp eq i32 %92, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @ck_assert_msg(i32 %99, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @TCP_CLIENT_HANDSHAKE_SIZE, align 4
  %103 = sub nsw i32 %102, 1
  %104 = call i32 @send(i32 %101, i32* %68, i32 %103, i32 0)
  %105 = load i32, i32* @TCP_CLIENT_HANDSHAKE_SIZE, align 4
  %106 = sub nsw i32 %105, 1
  %107 = icmp eq i32 %104, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @ck_assert_msg(i32 %108, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %111 = call i32 @do_TCP_server(%struct.TYPE_4__* %110)
  %112 = call i32 @c_sleep(i32 50)
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @TCP_CLIENT_HANDSHAKE_SIZE, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %68, i64 %116
  %118 = call i32 @send(i32 %113, i32* %117, i32 1, i32 0)
  %119 = icmp eq i32 %118, 1
  %120 = zext i1 %119 to i32
  %121 = call i32 @ck_assert_msg(i32 %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %122 = call i32 @c_sleep(i32 50)
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %124 = call i32 @do_TCP_server(%struct.TYPE_4__* %123)
  %125 = load i32, i32* @TCP_SERVER_HANDSHAKE_SIZE, align 4
  %126 = zext i32 %125 to i64
  %127 = alloca i32, i64 %126, align 16
  store i64 %126, i64* %12, align 8
  %128 = load i32, i32* @TCP_HANDSHAKE_PLAIN_SIZE, align 4
  %129 = zext i32 %128 to i64
  %130 = alloca i32, i64 %129, align 16
  store i64 %129, i64* %13, align 8
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @TCP_SERVER_HANDSHAKE_SIZE, align 4
  %133 = call i32 @recv(i32 %131, i32* %127, i32 %132, i32 0)
  %134 = load i32, i32* @TCP_SERVER_HANDSHAKE_SIZE, align 4
  %135 = icmp eq i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @ck_assert_msg(i32 %136, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %127, i64 %142
  %144 = load i32, i32* @TCP_SERVER_HANDSHAKE_SIZE, align 4
  %145 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %146 = sub nsw i32 %144, %145
  %147 = call i32 @decrypt_data(i32 %140, i32* %42, i32* %127, i32* %143, i32 %146, i32* %130)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @TCP_HANDSHAKE_PLAIN_SIZE, align 4
  %150 = icmp eq i32 %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @ck_assert_msg(i32 %151, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %153 = load %struct.sec_TCP_con*, %struct.sec_TCP_con** %3, align 8
  %154 = getelementptr inbounds %struct.sec_TCP_con, %struct.sec_TCP_con* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @encrypt_precompute(i32* %130, i32* %53, i32 %155)
  %157 = load %struct.sec_TCP_con*, %struct.sec_TCP_con** %3, align 8
  %158 = getelementptr inbounds %struct.sec_TCP_con, %struct.sec_TCP_con* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* @crypto_box_BEFORENMBYTES, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %130, i64 %161
  %163 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %164 = call i32 @memcpy(i32* %159, i32* %162, i32 %163)
  %165 = load i32, i32* %4, align 4
  %166 = load %struct.sec_TCP_con*, %struct.sec_TCP_con** %3, align 8
  %167 = getelementptr inbounds %struct.sec_TCP_con, %struct.sec_TCP_con* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  %168 = load %struct.sec_TCP_con*, %struct.sec_TCP_con** %3, align 8
  %169 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %169)
  ret %struct.sec_TCP_con* %168
}

declare dso_local %struct.sec_TCP_con* @malloc(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @rand(...) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @ck_assert_msg(i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @crypto_box_keypair(i32*, i32*) #1

declare dso_local i32 @random_nonce(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @new_nonce(i32*) #1

declare dso_local i32 @encrypt_data(i32, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @send(i32, i32*, i32, i32) #1

declare dso_local i32 @do_TCP_server(%struct.TYPE_4__*) #1

declare dso_local i32 @c_sleep(i32) #1

declare dso_local i32 @recv(i32, i32*, i32, i32) #1

declare dso_local i32 @decrypt_data(i32, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @encrypt_precompute(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

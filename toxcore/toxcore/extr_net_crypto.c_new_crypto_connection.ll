; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_new_crypto_connection.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_new_crypto_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32 }

@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@CRYPTO_CONN_COOKIE_REQUESTING = common dso_local global i32 0, align 4
@CRYPTO_PACKET_MIN_RATE = common dso_local global i8* null, align 8
@CRYPTO_MIN_QUEUE_LENGTH = common dso_local global i32 0, align 4
@DEFAULT_PING_CONNECTION = common dso_local global i32 0, align 4
@COOKIE_REQUEST_LENGTH = common dso_local global i32 0, align 4
@CRYPTO_CONN_NO_CONNECTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @new_crypto_connection(%struct.TYPE_8__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @getcryptconnection_id(%struct.TYPE_8__* %14, i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %144

21:                                               ; preds = %3
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = call i32 @create_crypto_connection(%struct.TYPE_8__* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %144

27:                                               ; preds = %21
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i64 %32
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %9, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %35 = icmp eq %struct.TYPE_9__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %144

37:                                               ; preds = %27
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = call i32 @pthread_mutex_lock(i32* %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @new_tcp_connection_to(i32 %43, i32* %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = call i32 @pthread_mutex_unlock(i32* %48)
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  br label %144

53:                                               ; preds = %37
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 12
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %62 = call i32 @memcpy(i32 %59, i32* %60, i32 %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 11
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @random_nonce(i32 %65)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 10
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @crypto_box_keypair(i32 %69, i32 %72)
  %74 = load i32, i32* @CRYPTO_CONN_COOKIE_REQUESTING, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i8*, i8** @CRYPTO_PACKET_MIN_RATE, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 8
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** @CRYPTO_PACKET_MIN_RATE, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 7
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* @CRYPTO_MIN_QUEUE_LENGTH, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @DEFAULT_PING_CONNECTION, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %94 = call i32 @memcpy(i32 %91, i32* %92, i32 %93)
  %95 = call i32 (...) @random_64b()
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @COOKIE_REQUEST_LENGTH, align 4
  %99 = zext i32 %98 to i64
  %100 = call i8* @llvm.stacksave()
  store i8* %100, i8** %11, align 8
  %101 = alloca i32, i64 %99, align 16
  store i64 %99, i64* %12, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @create_cookie_request(%struct.TYPE_8__* %102, i32* %101, i32 %105, i32 %108, i32 %111)
  %113 = sext i32 %112 to i64
  %114 = mul nuw i64 4, %99
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %123, label %116

116:                                              ; preds = %53
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %118 = load i32, i32* %8, align 4
  %119 = mul nuw i64 4, %99
  %120 = trunc i64 %119 to i32
  %121 = call i64 @new_temp_packet(%struct.TYPE_8__* %117, i32 %118, i32* %101, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %140

123:                                              ; preds = %116, %53
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = call i32 @pthread_mutex_lock(i32* %125)
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @kill_tcp_connection_to(i32 %129, i32 %132)
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = call i32 @pthread_mutex_unlock(i32* %135)
  %137 = load i32, i32* @CRYPTO_CONN_NO_CONNECTION, align 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %142

140:                                              ; preds = %116
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %142

142:                                              ; preds = %140, %123
  %143 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %143)
  br label %144

144:                                              ; preds = %142, %52, %36, %26, %19
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @getcryptconnection_id(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @create_crypto_connection(%struct.TYPE_8__*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @new_tcp_connection_to(i32, i32*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @random_nonce(i32) #1

declare dso_local i32 @crypto_box_keypair(i32, i32) #1

declare dso_local i32 @random_64b(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @create_cookie_request(%struct.TYPE_8__*, i32*, i32, i32, i32) #1

declare dso_local i64 @new_temp_packet(%struct.TYPE_8__*, i32, i32*, i32) #1

declare dso_local i32 @kill_tcp_connection_to(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

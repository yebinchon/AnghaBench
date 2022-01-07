; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_udp_handle_packet.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_udp_handle_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32, i8*, i8* }

@CRYPTO_MIN_PACKET_SIZE = common dso_local global i32 0, align 4
@MAX_CRYPTO_PACKET_SIZE = common dso_local global i32 0, align 4
@NET_PACKET_CRYPTO_HS = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64*, i32)* @udp_handle_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_handle_packet(i8* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i64 %1, i64* %14, align 8
  store i8* %0, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @CRYPTO_MIN_PACKET_SIZE, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @MAX_CRYPTO_PACKET_SIZE, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %4
  store i32 1, i32* %5, align 4
  br label %87

23:                                               ; preds = %18
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @crypto_id_ip_port(i32* %26, i64 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %51

33:                                               ; preds = %23
  %34 = load i64*, i64** %8, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NET_PACKET_CRYPTO_HS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 1, i32* %5, align 4
  br label %87

40:                                               ; preds = %33
  %41 = load i32*, i32** %10, align 8
  %42 = load i64*, i64** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @handle_new_connection_handshake(i32* %41, i64 %46, i64* %42, i32 %43)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %87

50:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %87

51:                                               ; preds = %23
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i64*, i64** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @handle_packet_connection(i32* %52, i32 %53, i64* %54, i32 %55, i32 1)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 1, i32* %5, align 4
  br label %87

59:                                               ; preds = %51
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call %struct.TYPE_10__* @get_crypto_connection(i32* %60, i32 %61)
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** %12, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %64 = icmp eq %struct.TYPE_10__* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 -1, i32* %5, align 4
  br label %87

66:                                               ; preds = %59
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = call i32 @pthread_mutex_lock(i32* %68)
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @AF_INET, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = call i8* (...) @unix_time()
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  br label %83

79:                                               ; preds = %66
  %80 = call i8* (...) @unix_time()
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %79, %75
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = call i32 @pthread_mutex_unlock(i32* %85)
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %83, %65, %58, %50, %49, %39, %22
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @crypto_id_ip_port(i32*, i64) #1

declare dso_local i64 @handle_new_connection_handshake(i32*, i64, i64*, i32) #1

declare dso_local i64 @handle_packet_connection(i32*, i32, i64*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @get_crypto_connection(i32*, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i8* @unix_time(...) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

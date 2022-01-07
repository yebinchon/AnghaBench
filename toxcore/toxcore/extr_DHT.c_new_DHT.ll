; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_DHT.c_new_DHT.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_DHT.c_new_DHT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32*, i32* }

@NET_PACKET_GET_NODES = common dso_local global i32 0, align 4
@handle_getnodes = common dso_local global i32 0, align 4
@NET_PACKET_SEND_NODES_IPV6 = common dso_local global i32 0, align 4
@handle_sendnodes_ipv6 = common dso_local global i32 0, align 4
@NET_PACKET_CRYPTO = common dso_local global i32 0, align 4
@cryptopacket_handle = common dso_local global i32 0, align 4
@CRYPTO_PACKET_NAT_PING = common dso_local global i32 0, align 4
@handle_NATping = common dso_local global i32 0, align 4
@CRYPTO_PACKET_HARDENING = common dso_local global i32 0, align 4
@handle_hardening = common dso_local global i32 0, align 4
@DHT_PING_ARRAY_SIZE = common dso_local global i32 0, align 4
@PING_TIMEOUT = common dso_local global i32 0, align 4
@DHT_FAKE_FRIEND_NUMBER = common dso_local global i64 0, align 8
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @new_DHT(i32* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = call i32 (...) @unix_time_update()
  %10 = load i32*, i32** %3, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %109

13:                                               ; preds = %1
  %14 = call %struct.TYPE_10__* @calloc(i32 1, i32 40)
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %4, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = icmp eq %struct.TYPE_10__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %109

18:                                               ; preds = %13
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 6
  store i32* %19, i32** %21, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = call i32* @new_ping(%struct.TYPE_10__* %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 7
  store i32* %23, i32** %25, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 7
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = call i32 @kill_DHT(%struct.TYPE_10__* %31)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %109

33:                                               ; preds = %18
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 6
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @NET_PACKET_GET_NODES, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = call i32 @networking_registerhandler(i32* %36, i32 %37, i32* @handle_getnodes, %struct.TYPE_10__* %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 6
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* @NET_PACKET_SEND_NODES_IPV6, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = call i32 @networking_registerhandler(i32* %42, i32 %43, i32* @handle_sendnodes_ipv6, %struct.TYPE_10__* %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 6
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @NET_PACKET_CRYPTO, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = call i32 @networking_registerhandler(i32* %48, i32 %49, i32* @cryptopacket_handle, %struct.TYPE_10__* %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = load i32, i32* @CRYPTO_PACKET_NAT_PING, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = call i32 @cryptopacket_registerhandler(%struct.TYPE_10__* %52, i32 %53, i32* @handle_NATping, %struct.TYPE_10__* %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = load i32, i32* @CRYPTO_PACKET_HARDENING, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = call i32 @cryptopacket_registerhandler(%struct.TYPE_10__* %56, i32 %57, i32* @handle_hardening, %struct.TYPE_10__* %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @new_symmetric_key(i32 %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @crypto_box_keypair(i32 %66, i32 %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  %73 = load i32, i32* @DHT_PING_ARRAY_SIZE, align 4
  %74 = load i32, i32* @PING_TIMEOUT, align 4
  %75 = call i32 @ping_array_init(i32* %72, i32 %73, i32 %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load i32, i32* @DHT_PING_ARRAY_SIZE, align 4
  %79 = load i32, i32* @PING_TIMEOUT, align 4
  %80 = call i32 @ping_array_init(i32* %77, i32 %78, i32 %79)
  store i64 0, i64* %5, align 8
  br label %81

81:                                               ; preds = %104, %33
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* @DHT_FAKE_FRIEND_NUMBER, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %81
  %86 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %87 = zext i32 %86 to i64
  %88 = call i8* @llvm.stacksave()
  store i8* %88, i8** %6, align 8
  %89 = alloca i32, i64 %87, align 16
  store i64 %87, i64* %7, align 8
  %90 = mul nuw i64 4, %87
  %91 = trunc i64 %90 to i32
  %92 = call i32 @randombytes(i32* %89, i32 %91)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = call i64 @DHT_addfriend(%struct.TYPE_10__* %93, i32* %89, i32 0, i32 0, i32 0, i32 0)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %85
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = call i32 @kill_DHT(%struct.TYPE_10__* %97)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  store i32 1, i32* %8, align 4
  br label %100

99:                                               ; preds = %85
  store i32 0, i32* %8, align 4
  br label %100

100:                                              ; preds = %99, %96
  %101 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %8, align 4
  switch i32 %102, label %111 [
    i32 0, label %103
    i32 1, label %109
  ]

103:                                              ; preds = %100
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %5, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %5, align 8
  br label %81

107:                                              ; preds = %81
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %108, %struct.TYPE_10__** %2, align 8
  br label %109

109:                                              ; preds = %107, %100, %30, %17, %12
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %110

111:                                              ; preds = %100
  unreachable
}

declare dso_local i32 @unix_time_update(...) #1

declare dso_local %struct.TYPE_10__* @calloc(i32, i32) #1

declare dso_local i32* @new_ping(%struct.TYPE_10__*) #1

declare dso_local i32 @kill_DHT(%struct.TYPE_10__*) #1

declare dso_local i32 @networking_registerhandler(i32*, i32, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @cryptopacket_registerhandler(%struct.TYPE_10__*, i32, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @new_symmetric_key(i32) #1

declare dso_local i32 @crypto_box_keypair(i32, i32) #1

declare dso_local i32 @ping_array_init(i32*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @randombytes(i32*, i32) #1

declare dso_local i64 @DHT_addfriend(%struct.TYPE_10__*, i32*, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

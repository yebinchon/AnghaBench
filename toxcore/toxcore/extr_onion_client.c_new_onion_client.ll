; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_new_onion_client.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_new_onion_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__*, %struct.TYPE_13__*, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__* }

@ANNOUNCE_ARRAY_SIZE = common dso_local global i32 0, align 4
@ANNOUNCE_TIMEOUT = common dso_local global i32 0, align 4
@NET_PACKET_ANNOUNCE_RESPONSE = common dso_local global i32 0, align 4
@handle_announce_response = common dso_local global i32 0, align 4
@NET_PACKET_ONION_DATA_RESPONSE = common dso_local global i32 0, align 4
@handle_data_response = common dso_local global i32 0, align 4
@ONION_DATA_DHTPK = common dso_local global i32 0, align 4
@handle_dhtpk_announce = common dso_local global i32 0, align 4
@CRYPTO_PACKET_DHTPK = common dso_local global i32 0, align 4
@handle_dht_dhtpk = common dso_local global i32 0, align 4
@handle_tcp_onion = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @new_onion_client(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %6 = icmp eq %struct.TYPE_15__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %80

8:                                                ; preds = %1
  %9 = call %struct.TYPE_14__* @calloc(i32 1, i32 40)
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %4, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = icmp eq %struct.TYPE_14__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %80

13:                                               ; preds = %8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 6
  %16 = load i32, i32* @ANNOUNCE_ARRAY_SIZE, align 4
  %17 = load i32, i32* @ANNOUNCE_TIMEOUT, align 4
  %18 = call i64 @ping_array_init(i32* %15, i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = call i32 @free(%struct.TYPE_14__* %21)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %80

23:                                               ; preds = %13
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %28, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %38, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @new_symmetric_key(i32 %41)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @crypto_box_keypair(i32 %45, i32 %48)
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @NET_PACKET_ANNOUNCE_RESPONSE, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = call i32 @networking_registerhandler(i32 %52, i32 %53, i32* @handle_announce_response, %struct.TYPE_14__* %54)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @NET_PACKET_ONION_DATA_RESPONSE, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = call i32 @networking_registerhandler(i32 %58, i32 %59, i32* @handle_data_response, %struct.TYPE_14__* %60)
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = load i32, i32* @ONION_DATA_DHTPK, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %65 = call i32 @oniondata_registerhandler(%struct.TYPE_14__* %62, i32 %63, i32* @handle_dhtpk_announce, %struct.TYPE_14__* %64)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = load i32, i32* @CRYPTO_PACKET_DHTPK, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %71 = call i32 @cryptopacket_registerhandler(%struct.TYPE_13__* %68, i32 %69, i32* @handle_dht_dhtpk, %struct.TYPE_14__* %70)
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %78 = call i32 @set_onion_packet_tcp_connection_callback(i32 %76, i32* @handle_tcp_onion, %struct.TYPE_14__* %77)
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %79, %struct.TYPE_14__** %2, align 8
  br label %80

80:                                               ; preds = %23, %20, %12, %7
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  ret %struct.TYPE_14__* %81
}

declare dso_local %struct.TYPE_14__* @calloc(i32, i32) #1

declare dso_local i64 @ping_array_init(i32*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

declare dso_local i32 @new_symmetric_key(i32) #1

declare dso_local i32 @crypto_box_keypair(i32, i32) #1

declare dso_local i32 @networking_registerhandler(i32, i32, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @oniondata_registerhandler(%struct.TYPE_14__*, i32, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @cryptopacket_registerhandler(%struct.TYPE_13__*, i32, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @set_onion_packet_tcp_connection_callback(i32, i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

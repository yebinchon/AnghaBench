; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_kill_onion_client.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_kill_onion_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@NET_PACKET_ANNOUNCE_RESPONSE = common dso_local global i32 0, align 4
@NET_PACKET_ONION_DATA_RESPONSE = common dso_local global i32 0, align 4
@ONION_DATA_DHTPK = common dso_local global i32 0, align 4
@CRYPTO_PACKET_DHTPK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kill_onion_client(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %4 = icmp eq %struct.TYPE_9__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %40

6:                                                ; preds = %1
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %9 = call i32 @ping_array_free_all(i32* %8)
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = call i32 @realloc_onion_friends(%struct.TYPE_9__* %10, i32 0)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NET_PACKET_ANNOUNCE_RESPONSE, align 4
  %16 = call i32 @networking_registerhandler(i32 %14, i32 %15, i32* null, i32* null)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NET_PACKET_ONION_DATA_RESPONSE, align 4
  %21 = call i32 @networking_registerhandler(i32 %19, i32 %20, i32* null, i32* null)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = load i32, i32* @ONION_DATA_DHTPK, align 4
  %24 = call i32 @oniondata_registerhandler(%struct.TYPE_9__* %22, i32 %23, i32* null, i32* null)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CRYPTO_PACKET_DHTPK, align 4
  %29 = call i32 @cryptopacket_registerhandler(i32 %27, i32 %28, i32* null, i32* null)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @set_onion_packet_tcp_connection_callback(i32 %34, i32* null, i32* null)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = call i32 @sodium_memzero(%struct.TYPE_9__* %36, i32 24)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %39 = call i32 @free(%struct.TYPE_9__* %38)
  br label %40

40:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @ping_array_free_all(i32*) #1

declare dso_local i32 @realloc_onion_friends(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @networking_registerhandler(i32, i32, i32*, i32*) #1

declare dso_local i32 @oniondata_registerhandler(%struct.TYPE_9__*, i32, i32*, i32*) #1

declare dso_local i32 @cryptopacket_registerhandler(i32, i32, i32*, i32*) #1

declare dso_local i32 @set_onion_packet_tcp_connection_callback(i32, i32*, i32*) #1

declare dso_local i32 @sodium_memzero(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

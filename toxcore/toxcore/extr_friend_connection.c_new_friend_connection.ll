; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_friend_connection.c_new_friend_connection.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_friend_connection.c_new_friend_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@FRIENDCONN_STATUS_CONNECTING = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@tcp_relay_node_callback = common dso_local global i32 0, align 4
@dht_pk_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @new_friend_connection(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @getfriend_conn_id_pk(%struct.TYPE_8__* %9, i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %76

25:                                               ; preds = %2
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = call i32 @create_friend_conn(%struct.TYPE_8__* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %76

31:                                               ; preds = %25
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @onion_addfriend(i32 %34, i32* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %76

40:                                               ; preds = %31
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 %45
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %8, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 -1, i32* %48, align 4
  %49 = load i32, i32* @FRIENDCONN_STATUS_CONNECTING, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %57 = call i32 @memcpy(i32 %54, i32* %55, i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @recv_tcp_relay_handler(i32 %63, i32 %64, i32* @tcp_relay_node_callback, %struct.TYPE_8__* %65, i32 %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @onion_dht_pk_callback(i32 %70, i32 %71, i32* @dht_pk_callback, %struct.TYPE_8__* %72, i32 %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %40, %39, %30, %14
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @getfriend_conn_id_pk(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @create_friend_conn(%struct.TYPE_8__*) #1

declare dso_local i32 @onion_addfriend(i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @recv_tcp_relay_handler(i32, i32, i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @onion_dht_pk_callback(i32, i32, i32*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

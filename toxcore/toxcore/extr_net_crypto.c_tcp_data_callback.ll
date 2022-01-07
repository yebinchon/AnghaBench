; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_tcp_data_callback.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_tcp_data_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@MAX_CRYPTO_PACKET_SIZE = common dso_local global i32 0, align 4
@NET_PACKET_COOKIE_REQUEST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64*, i32)* @tcp_data_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_data_callback(i8* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @MAX_CRYPTO_PACKET_SIZE, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %4
  store i32 -1, i32* %5, align 4
  br label %59

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %10, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.TYPE_8__* @get_crypto_connection(%struct.TYPE_7__* %23, i32 %24)
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %11, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %27 = icmp eq %struct.TYPE_8__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %59

29:                                               ; preds = %20
  %30 = load i64*, i64** %8, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NET_PACKET_COOKIE_REQUEST, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64*, i64** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @tcp_handle_cookie_request(%struct.TYPE_7__* %36, i32 %39, i64* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  br label %59

43:                                               ; preds = %29
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = call i32 @pthread_mutex_unlock(i32* %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i64*, i64** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @handle_packet_connection(%struct.TYPE_7__* %47, i32 %48, i64* %49, i32 %50, i32 0)
  store i32 %51, i32* %12, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = call i32 @pthread_mutex_lock(i32* %53)
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  store i32 -1, i32* %5, align 4
  br label %59

58:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %57, %35, %28, %19
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.TYPE_8__* @get_crypto_connection(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @tcp_handle_cookie_request(%struct.TYPE_7__*, i32, i64*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @handle_packet_connection(%struct.TYPE_7__*, i32, i64*, i32, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

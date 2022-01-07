; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_friend_connection.c_send_friend_request_packet.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_friend_connection.c_send_friend_request_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }

@ONION_CLIENT_MAX_DATA_SIZE = common dso_local global i32 0, align 4
@FRIENDCONN_STATUS_CONNECTED = common dso_local global i64 0, align 8
@PACKET_ID_FRIEND_REQUESTS = common dso_local global i32 0, align 4
@CRYPTO_PACKET_FRIEND_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_friend_request_packet(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 5, %18
  %20 = load i32, i32* @ONION_CLIENT_MAX_DATA_SIZE, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ugt i64 %19, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* %11, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %5
  store i32 -1, i32* %6, align 4
  br label %85

27:                                               ; preds = %23
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.TYPE_7__* @get_conn(%struct.TYPE_6__* %28, i32 %29)
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %12, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %32 = icmp ne %struct.TYPE_7__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  store i32 -1, i32* %6, align 4
  br label %85

34:                                               ; preds = %27
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 5, %36
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %13, align 8
  %39 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %14, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = call i32 @memcpy(i32* %40, i32* %9, i32 4)
  %42 = getelementptr inbounds i32, i32* %39, i64 1
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @memcpy(i32* %43, i32* %44, i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @FRIENDCONN_STATUS_CONNECTED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %34
  %53 = load i32, i32* @PACKET_ID_FRIEND_REQUESTS, align 4
  %54 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %53, i32* %54, align 16
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = mul nuw i64 4, %37
  %62 = trunc i64 %61 to i32
  %63 = call i32 @write_cryptpacket(i32 %57, i32 %60, i32* %39, i32 %62, i32 0)
  %64 = icmp ne i32 %63, -1
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %83

66:                                               ; preds = %34
  %67 = load i32, i32* @CRYPTO_PACKET_FRIEND_REQ, align 4
  %68 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %67, i32* %68, align 16
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = mul nuw i64 4, %37
  %76 = trunc i64 %75 to i32
  %77 = call i32 @send_onion_data(i32 %71, i32 %74, i32* %39, i32 %76)
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp sle i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %66
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %83

81:                                               ; preds = %66
  %82 = load i32, i32* %16, align 4
  store i32 %82, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %83

83:                                               ; preds = %81, %80, %52
  %84 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %84)
  br label %85

85:                                               ; preds = %83, %33, %26
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local %struct.TYPE_7__* @get_conn(%struct.TYPE_6__*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @write_cryptpacket(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @send_onion_data(i32, i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

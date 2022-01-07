; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_ping.c_handle_ping_request.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_ping.c_handle_ping_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@DHT_PING_SIZE = common dso_local global i64 0, align 8
@crypto_box_BEFORENMBYTES = common dso_local global i32 0, align 4
@PING_PLAIN_SIZE = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@crypto_box_NONCEBYTES = common dso_local global i32 0, align 4
@crypto_box_MACBYTES = common dso_local global i32 0, align 4
@NET_PACKET_PING_REQUEST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64*, i64)* @handle_ping_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_ping_request(i8* %0, i32 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %10, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @DHT_PING_SIZE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %94

24:                                               ; preds = %4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %12, align 8
  %28 = load i64*, i64** %8, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @id_equal(i64* %29, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  br label %94

38:                                               ; preds = %24
  %39 = load i32, i32* @crypto_box_BEFORENMBYTES, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %13, align 8
  %42 = alloca i64, i64 %40, align 16
  store i64 %40, i64* %14, align 8
  %43 = load i32, i32* @PING_PLAIN_SIZE, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca i64, i64 %44, align 16
  store i64 %44, i64* %15, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %47 = load i64*, i64** %8, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  %49 = call i32 @DHT_get_shared_key_recv(%struct.TYPE_9__* %46, i64* %42, i64* %48)
  %50 = load i64*, i64** %8, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64*, i64** %8, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i32, i32* @PING_PLAIN_SIZE, align 4
  %64 = load i32, i32* @crypto_box_MACBYTES, align 4
  %65 = add nsw i32 %63, %64
  %66 = call i32 @decrypt_data_symmetric(i64* %42, i64* %54, i64* %62, i32 %65, i64* %45)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = mul nuw i64 8, %44
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %38
  store i32 1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %92

72:                                               ; preds = %38
  %73 = getelementptr inbounds i64, i64* %45, i64 0
  %74 = load i64, i64* %73, align 16
  %75 = load i64, i64* @NET_PACKET_PING_REQUEST, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %92

78:                                               ; preds = %72
  %79 = getelementptr inbounds i64, i64* %45, i64 1
  %80 = call i32 @memcpy(i32* %17, i64* %79, i32 4)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i64*, i64** %8, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 1
  %85 = load i32, i32* %17, align 4
  %86 = call i32 @send_ping_response(%struct.TYPE_8__* %81, i32 %82, i64* %84, i32 %85, i64* %42)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %88 = load i64*, i64** %8, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 1
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @add_to_ping(%struct.TYPE_8__* %87, i64* %89, i32 %90)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %92

92:                                               ; preds = %78, %77, %71
  %93 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %93)
  br label %94

94:                                               ; preds = %92, %37, %23
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i64 @id_equal(i64*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @DHT_get_shared_key_recv(%struct.TYPE_9__*, i64*, i64*) #1

declare dso_local i32 @decrypt_data_symmetric(i64*, i64*, i64*, i32, i64*) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @send_ping_response(%struct.TYPE_8__*, i32, i64*, i32, i64*) #1

declare dso_local i32 @add_to_ping(%struct.TYPE_8__*, i64*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

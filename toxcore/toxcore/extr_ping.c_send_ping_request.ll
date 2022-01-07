; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_ping.c_send_ping_request.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_ping.c_send_ping_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32* }

@DHT_PING_SIZE = common dso_local global i32 0, align 4
@crypto_box_BEFORENMBYTES = common dso_local global i32 0, align 4
@PING_DATA_SIZE = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@PING_PLAIN_SIZE = common dso_local global i32 0, align 4
@NET_PACKET_PING_REQUEST = common dso_local global i32 0, align 4
@crypto_box_NONCEBYTES = common dso_local global i32 0, align 4
@crypto_box_MACBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_ping_request(%struct.TYPE_4__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i32, i32* @DHT_PING_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @id_equal(i32* %20, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %107

29:                                               ; preds = %3
  %30 = load i32, i32* @crypto_box_BEFORENMBYTES, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %13, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @DHT_get_shared_key_sent(%struct.TYPE_5__* %35, i32* %32, i32* %36)
  %38 = load i32, i32* @PING_DATA_SIZE, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i32, i64 %39, align 16
  store i64 %39, i64* %14, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @id_copy(i32* %40, i32* %41)
  %43 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = call i32 @memcpy(i32* %45, i64* %6, i32 8)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = mul nuw i64 4, %39
  %50 = trunc i64 %49 to i32
  %51 = call i64 @ping_array_add(i32* %48, i32* %40, i32 %50)
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %107

55:                                               ; preds = %29
  %56 = load i32, i32* @PING_PLAIN_SIZE, align 4
  %57 = zext i32 %56 to i64
  %58 = alloca i32, i64 %57, align 16
  store i64 %57, i64* %15, align 8
  %59 = load i32, i32* @NET_PACKET_PING_REQUEST, align 4
  %60 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %59, i32* %60, align 16
  %61 = getelementptr inbounds i32, i32* %58, i64 1
  %62 = call i32 @memcpy(i32* %61, i64* %11, i32 8)
  %63 = load i32, i32* @NET_PACKET_PING_REQUEST, align 4
  %64 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %63, i32* %64, align 16
  %65 = getelementptr inbounds i32, i32* %19, i64 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @id_copy(i32* %65, i32* %70)
  %72 = getelementptr inbounds i32, i32* %19, i64 1
  %73 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = call i32 @new_nonce(i32* %75)
  %77 = getelementptr inbounds i32, i32* %19, i64 1
  %78 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = mul nuw i64 4, %57
  %82 = trunc i64 %81 to i32
  %83 = getelementptr inbounds i32, i32* %19, i64 1
  %84 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = call i32 @encrypt_data_symmetric(i32* %32, i32* %80, i32* %58, i32 %82, i32* %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @PING_PLAIN_SIZE, align 4
  %93 = load i32, i32* @crypto_box_MACBYTES, align 4
  %94 = add nsw i32 %92, %93
  %95 = icmp ne i32 %91, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %55
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %107

97:                                               ; preds = %55
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i64, i64* %6, align 8
  %104 = mul nuw i64 4, %17
  %105 = trunc i64 %104 to i32
  %106 = call i32 @sendpacket(i32 %102, i64 %103, i32* %19, i32 %105)
  store i32 %106, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %107

107:                                              ; preds = %97, %96, %54, %28
  %108 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @id_equal(i32*, i32*) #2

declare dso_local i32 @DHT_get_shared_key_sent(%struct.TYPE_5__*, i32*, i32*) #2

declare dso_local i32 @id_copy(i32*, i32*) #2

declare dso_local i32 @memcpy(i32*, i64*, i32) #2

declare dso_local i64 @ping_array_add(i32*, i32*, i32) #2

declare dso_local i32 @new_nonce(i32*) #2

declare dso_local i32 @encrypt_data_symmetric(i32*, i32*, i32*, i32, i32*) #2

declare dso_local i32 @sendpacket(i32, i64, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_DHT.c_cryptopacket_handle.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_DHT.c_cryptopacket_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 (i32, i32, i64*, i64*, i32)*, i32 }

@NET_PACKET_CRYPTO = common dso_local global i64 0, align 8
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@crypto_box_NONCEBYTES = common dso_local global i32 0, align 4
@crypto_box_MACBYTES = common dso_local global i32 0, align 4
@MAX_CRYPTO_REQUEST_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64*, i32)* @cryptopacket_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cryptopacket_handle(i8* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %10, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NET_PACKET_CRYPTO, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %116

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %28 = mul nsw i32 %27, 2
  %29 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %30 = add nsw i32 %28, %29
  %31 = add nsw i32 %30, 1
  %32 = load i32, i32* @crypto_box_MACBYTES, align 4
  %33 = add nsw i32 %31, %32
  %34 = icmp sle i32 %26, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @MAX_CRYPTO_REQUEST_SIZE, align 4
  %38 = load i32, i32* @crypto_box_MACBYTES, align 4
  %39 = add nsw i32 %37, %38
  %40 = icmp sgt i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %25
  store i32 1, i32* %5, align 4
  br label %117

42:                                               ; preds = %35
  %43 = load i64*, i64** %8, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @public_key_cmp(i64* %44, i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %103

50:                                               ; preds = %42
  %51 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %52 = zext i32 %51 to i64
  %53 = call i8* @llvm.stacksave()
  store i8* %53, i8** %11, align 8
  %54 = alloca i64, i64 %52, align 16
  store i64 %52, i64* %12, align 8
  %55 = load i32, i32* @MAX_CRYPTO_REQUEST_SIZE, align 4
  %56 = zext i32 %55 to i64
  %57 = alloca i64, i64 %56, align 16
  store i64 %56, i64* %13, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i64*, i64** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @handle_request(i32 %60, i32 %63, i64* %54, i64* %57, i64* %14, i64* %64, i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %72, label %69

69:                                               ; preds = %50
  %70 = load i32, i32* %15, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69, %50
  store i32 1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %101

73:                                               ; preds = %69
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i64, i64* %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32 (i32, i32, i64*, i64*, i32)*, i32 (i32, i32, i64*, i64*, i32)** %79, align 8
  %81 = icmp ne i32 (i32, i32, i64*, i64*, i32)* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %73
  store i32 1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %101

83:                                               ; preds = %73
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i64, i64* %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32 (i32, i32, i64*, i64*, i32)*, i32 (i32, i32, i64*, i64*, i32)** %89, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i64, i64* %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %15, align 4
  %100 = call i32 %90(i32 %97, i32 %98, i64* %54, i64* %57, i32 %99)
  store i32 %100, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %101

101:                                              ; preds = %83, %82, %72
  %102 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %102)
  br label %117

103:                                              ; preds = %42
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %105 = load i64*, i64** %8, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 1
  %107 = load i64*, i64** %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @route_packet(%struct.TYPE_5__* %104, i64* %106, i64* %107, i32 %108)
  store i32 %109, i32* %17, align 4
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  store i32 0, i32* %5, align 4
  br label %117

114:                                              ; preds = %103
  br label %115

115:                                              ; preds = %114
  br label %116

116:                                              ; preds = %115, %4
  store i32 1, i32* %5, align 4
  br label %117

117:                                              ; preds = %116, %113, %101, %41
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i64 @public_key_cmp(i64*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @handle_request(i32, i32, i64*, i64*, i64*, i64*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @route_packet(%struct.TYPE_5__*, i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

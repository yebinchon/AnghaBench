; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_handle_data_packet.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_handle_data_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i32 }

@crypto_box_MACBYTES = common dso_local global i64 0, align 8
@MAX_CRYPTO_PACKET_SIZE = common dso_local global i64 0, align 8
@crypto_box_NONCEBYTES = common dso_local global i32 0, align 4
@DATA_NUM_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64*, i64*, i64)* @handle_data_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_data_packet(i32* %0, i32 %1, i64* %2, i64* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* @crypto_box_MACBYTES, align 8
  %22 = add i64 9, %21
  %23 = icmp ule i64 %20, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %5
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @MAX_CRYPTO_PACKET_SIZE, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %5
  store i32 -1, i32* %6, align 4
  br label %92

29:                                               ; preds = %24
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call %struct.TYPE_3__* @get_crypto_connection(i32* %30, i32 %31)
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %12, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %34 = icmp eq %struct.TYPE_3__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 -1, i32* %6, align 4
  br label %92

36:                                               ; preds = %29
  %37 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %13, align 8
  %40 = alloca i64, i64 %38, align 16
  store i64 %38, i64* %14, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %45 = call i32 @memcpy(i64* %40, i64* %43, i32 %44)
  %46 = call i64 @get_nonce_uint16(i64* %40)
  store i64 %46, i64* %15, align 8
  %47 = load i64*, i64** %10, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  %49 = call i32 @memcpy(i64* %16, i64* %48, i32 8)
  %50 = load i64, i64* %16, align 8
  %51 = call i64 @ntohs(i64 %50)
  store i64 %51, i64* %16, align 8
  %52 = load i64, i64* %16, align 8
  %53 = load i64, i64* %15, align 8
  %54 = sub nsw i64 %52, %53
  store i64 %54, i64* %17, align 8
  %55 = load i64, i64* %17, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @increment_nonce_number(i64* %40, i32 %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i64*, i64** %10, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 1
  %63 = getelementptr inbounds i64, i64* %62, i64 8
  %64 = load i64, i64* %11, align 8
  %65 = sub i64 %64, 9
  %66 = load i64*, i64** %9, align 8
  %67 = call i32 @decrypt_data_symmetric(i32 %60, i64* %40, i64* %63, i64 %65, i64* %66)
  store i32 %67, i32* %18, align 4
  %68 = load i32, i32* %18, align 4
  %69 = zext i32 %68 to i64
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* @crypto_box_MACBYTES, align 8
  %72 = add i64 9, %71
  %73 = sub i64 %70, %72
  %74 = icmp ne i64 %69, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %36
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %90

76:                                               ; preds = %36
  %77 = load i64, i64* %17, align 8
  %78 = load i32, i32* @DATA_NUM_THRESHOLD, align 4
  %79 = mul nsw i32 %78, 2
  %80 = sext i32 %79 to i64
  %81 = icmp sgt i64 %77, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* @DATA_NUM_THRESHOLD, align 4
  %87 = call i32 @increment_nonce_number(i64* %85, i32 %86)
  br label %88

88:                                               ; preds = %82, %76
  %89 = load i32, i32* %18, align 4
  store i32 %89, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %90

90:                                               ; preds = %88, %75
  %91 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %91)
  br label %92

92:                                               ; preds = %90, %35, %28
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local %struct.TYPE_3__* @get_crypto_connection(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i64 @get_nonce_uint16(i64*) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local i32 @increment_nonce_number(i64*, i32) #1

declare dso_local i32 @decrypt_data_symmetric(i32, i64*, i64*, i64, i64*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

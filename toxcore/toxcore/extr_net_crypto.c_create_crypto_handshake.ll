; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_create_crypto_handshake.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_create_crypto_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@crypto_box_NONCEBYTES = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@crypto_hash_sha512_BYTES = common dso_local global i32 0, align 4
@COOKIE_LENGTH = common dso_local global i32 0, align 4
@COOKIE_DATA_LENGTH = common dso_local global i32 0, align 4
@HANDSHAKE_PACKET_LENGTH = common dso_local global i32 0, align 4
@NET_PACKET_CRYPTO_HS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*, i32*, i32*, i32*, i32*)* @create_crypto_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_crypto_handshake(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %22 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* @crypto_hash_sha512_BYTES, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* @COOKIE_LENGTH, align 4
  %27 = add nsw i32 %25, %26
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %16, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %17, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %33 = call i32 @memcpy(i32* %30, i32* %31, i32 %32)
  %34 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %30, i64 %35
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %39 = call i32 @memcpy(i32* %36, i32* %37, i32 %38)
  %40 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %30, i64 %41
  %43 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* @COOKIE_LENGTH, align 4
  %48 = call i32 @crypto_hash_sha512(i32* %45, i32* %46, i32 %47)
  %49 = load i32, i32* @COOKIE_DATA_LENGTH, align 4
  %50 = zext i32 %49 to i64
  %51 = alloca i32, i64 %50, align 16
  store i64 %50, i64* %18, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %54 = call i32 @memcpy(i32* %51, i32* %52, i32 %53)
  %55 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  %58 = load i32*, i32** %15, align 8
  %59 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %60 = call i32 @memcpy(i32* %57, i32* %58, i32 %59)
  %61 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %30, i64 %62
  %64 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* @crypto_hash_sha512_BYTES, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @create_cookie(i32* %69, i32* %51, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %19, align 4
  br label %122

76:                                               ; preds = %7
  %77 = load i32*, i32** %10, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* @COOKIE_LENGTH, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = call i32 @new_nonce(i32* %81)
  %83 = load i32*, i32** %14, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* @COOKIE_LENGTH, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = mul nuw i64 4, %28
  %93 = trunc i64 %92 to i32
  %94 = load i32*, i32** %10, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* @COOKIE_LENGTH, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = call i32 @encrypt_data(i32* %83, i32 %86, i32* %91, i32* %30, i32 %93, i32* %101)
  store i32 %102, i32* %20, align 4
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* @HANDSHAKE_PACKET_LENGTH, align 4
  %105 = load i32, i32* @COOKIE_LENGTH, align 4
  %106 = add nsw i32 1, %105
  %107 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %108 = add nsw i32 %106, %107
  %109 = sub nsw i32 %104, %108
  %110 = icmp ne i32 %103, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %76
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %19, align 4
  br label %122

112:                                              ; preds = %76
  %113 = load i32, i32* @NET_PACKET_CRYPTO_HS, align 4
  %114 = load i32*, i32** %10, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  store i32 %113, i32* %115, align 4
  %116 = load i32*, i32** %10, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32*, i32** %11, align 8
  %119 = load i32, i32* @COOKIE_LENGTH, align 4
  %120 = call i32 @memcpy(i32* %117, i32* %118, i32 %119)
  %121 = load i32, i32* @HANDSHAKE_PACKET_LENGTH, align 4
  store i32 %121, i32* %8, align 4
  store i32 1, i32* %19, align 4
  br label %122

122:                                              ; preds = %112, %111, %75
  %123 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %123)
  %124 = load i32, i32* %8, align 4
  ret i32 %124
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @crypto_hash_sha512(i32*, i32*, i32) #2

declare dso_local i64 @create_cookie(i32*, i32*, i32) #2

declare dso_local i32 @new_nonce(i32*) #2

declare dso_local i32 @encrypt_data(i32*, i32, i32*, i32*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

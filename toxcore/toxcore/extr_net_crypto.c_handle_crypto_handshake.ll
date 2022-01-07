; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_handle_crypto_handshake.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_handle_crypto_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@HANDSHAKE_PACKET_LENGTH = common dso_local global i64 0, align 8
@COOKIE_DATA_LENGTH = common dso_local global i32 0, align 4
@crypto_hash_sha512_BYTES = common dso_local global i32 0, align 4
@COOKIE_LENGTH = common dso_local global i32 0, align 4
@crypto_box_NONCEBYTES = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*, i32*, i32*, i32*, i32*, i64, i32*)* @handle_crypto_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_crypto_handshake(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i64 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32* %8, i32** %19, align 8
  %26 = load i64, i64* %18, align 8
  %27 = load i64, i64* @HANDSHAKE_PACKET_LENGTH, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %9
  store i32 -1, i32* %10, align 4
  br label %142

30:                                               ; preds = %9
  %31 = load i32, i32* @COOKIE_DATA_LENGTH, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %20, align 8
  %34 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %21, align 8
  %35 = load i32*, i32** %17, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @open_cookie(i32* %34, i32* %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  store i32 -1, i32* %10, align 4
  store i32 1, i32* %22, align 4
  br label %140

43:                                               ; preds = %30
  %44 = load i32*, i32** %19, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32*, i32** %19, align 8
  %48 = call i64 @public_key_cmp(i32* %34, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 -1, i32* %10, align 4
  store i32 1, i32* %22, align 4
  br label %140

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %43
  %53 = load i32, i32* @crypto_hash_sha512_BYTES, align 4
  %54 = zext i32 %53 to i64
  %55 = alloca i32, i64 %54, align 16
  store i64 %54, i64* %23, align 8
  %56 = load i32*, i32** %17, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* @COOKIE_LENGTH, align 4
  %59 = call i32 @crypto_hash_sha512(i32* %55, i32* %57, i32 %58)
  %60 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %61 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* @crypto_hash_sha512_BYTES, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* @COOKIE_LENGTH, align 4
  %66 = add nsw i32 %64, %65
  %67 = zext i32 %66 to i64
  %68 = alloca i32, i64 %67, align 16
  store i64 %67, i64* %24, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %17, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* @COOKIE_LENGTH, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32*, i32** %17, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* @COOKIE_LENGTH, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i64, i64* @HANDSHAKE_PACKET_LENGTH, align 8
  %86 = load i32, i32* @COOKIE_LENGTH, align 4
  %87 = add nsw i32 1, %86
  %88 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = sub nsw i64 %85, %90
  %92 = call i32 @decrypt_data(i32* %34, i32 %71, i32* %76, i32* %84, i64 %91, i32* %68)
  store i32 %92, i32* %25, align 4
  %93 = load i32, i32* %25, align 4
  %94 = sext i32 %93 to i64
  %95 = mul nuw i64 4, %67
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %52
  store i32 -1, i32* %10, align 4
  store i32 1, i32* %22, align 4
  br label %140

98:                                               ; preds = %52
  %99 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %68, i64 %100
  %102 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* @crypto_hash_sha512_BYTES, align 4
  %106 = call i64 @sodium_memcmp(i32* %55, i32* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  store i32 -1, i32* %10, align 4
  store i32 1, i32* %22, align 4
  br label %140

109:                                              ; preds = %98
  %110 = load i32*, i32** %12, align 8
  %111 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %112 = call i32 @memcpy(i32* %110, i32* %68, i32 %111)
  %113 = load i32*, i32** %13, align 8
  %114 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %68, i64 %115
  %117 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %118 = call i32 @memcpy(i32* %113, i32* %116, i32 %117)
  %119 = load i32*, i32** %16, align 8
  %120 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %68, i64 %121
  %123 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* @crypto_hash_sha512_BYTES, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* @COOKIE_LENGTH, align 4
  %130 = call i32 @memcpy(i32* %119, i32* %128, i32 %129)
  %131 = load i32*, i32** %14, align 8
  %132 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %133 = call i32 @memcpy(i32* %131, i32* %34, i32 %132)
  %134 = load i32*, i32** %15, align 8
  %135 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %34, i64 %136
  %138 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %139 = call i32 @memcpy(i32* %134, i32* %137, i32 %138)
  store i32 0, i32* %10, align 4
  store i32 1, i32* %22, align 4
  br label %140

140:                                              ; preds = %109, %108, %97, %50, %42
  %141 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %141)
  br label %142

142:                                              ; preds = %140, %29
  %143 = load i32, i32* %10, align 4
  ret i32 %143
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @open_cookie(i32*, i32*, i32) #2

declare dso_local i64 @public_key_cmp(i32*, i32*) #2

declare dso_local i32 @crypto_hash_sha512(i32*, i32*, i32) #2

declare dso_local i32 @decrypt_data(i32*, i32, i32*, i32*, i64, i32*) #2

declare dso_local i64 @sodium_memcmp(i32*, i32*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

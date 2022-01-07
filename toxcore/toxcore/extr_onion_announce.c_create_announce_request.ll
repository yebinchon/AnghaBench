; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion_announce.c_create_announce_request.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion_announce.c_create_announce_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ONION_ANNOUNCE_REQUEST_SIZE = common dso_local global i64 0, align 8
@ONION_PING_ID_SIZE = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@ONION_ANNOUNCE_SENDBACK_DATA_LENGTH = common dso_local global i32 0, align 4
@NET_PACKET_ANNOUNCE_REQUEST = common dso_local global i32 0, align 4
@crypto_box_NONCEBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_announce_request(i32* %0, i64 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i64 %1, i64* %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* @ONION_ANNOUNCE_REQUEST_SIZE, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %9
  store i32 -1, i32* %10, align 4
  br label %111

28:                                               ; preds = %9
  %29 = load i32, i32* @ONION_PING_ID_SIZE, align 4
  %30 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* @ONION_ANNOUNCE_SENDBACK_DATA_LENGTH, align 4
  %35 = add nsw i32 %33, %34
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %20, align 8
  %38 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %21, align 8
  %39 = load i32*, i32** %16, align 8
  %40 = load i32, i32* @ONION_PING_ID_SIZE, align 4
  %41 = call i32 @memcpy(i32* %38, i32* %39, i32 %40)
  %42 = load i32, i32* @ONION_PING_ID_SIZE, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  %45 = load i32*, i32** %17, align 8
  %46 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %47 = call i32 @memcpy(i32* %44, i32* %45, i32 %46)
  %48 = load i32, i32* @ONION_PING_ID_SIZE, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %38, i64 %49
  %51 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32*, i32** %18, align 8
  %55 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %56 = call i32 @memcpy(i32* %53, i32* %54, i32 %55)
  %57 = load i32, i32* @ONION_PING_ID_SIZE, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %38, i64 %58
  %60 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = call i32 @memcpy(i32* %65, i32* %19, i32 4)
  %67 = load i32, i32* @NET_PACKET_ANNOUNCE_REQUEST, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %67, i32* %69, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = call i32 @random_nonce(i32* %71)
  %73 = load i32*, i32** %13, align 8
  %74 = load i32*, i32** %15, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = mul nuw i64 4, %36
  %78 = trunc i64 %77 to i32
  %79 = load i32*, i32** %11, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = call i32 @encrypt_data(i32* %73, i32* %74, i32* %76, i32* %38, i32 %78, i32* %86)
  store i32 %87, i32* %22, align 4
  %88 = load i32, i32* %22, align 4
  %89 = add nsw i32 %88, 1
  %90 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %91 = add nsw i32 %89, %90
  %92 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %93 = add nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* @ONION_ANNOUNCE_REQUEST_SIZE, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %28
  store i32 -1, i32* %10, align 4
  store i32 1, i32* %23, align 4
  br label %109

98:                                               ; preds = %28
  %99 = load i32*, i32** %11, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32*, i32** %14, align 8
  %105 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %106 = call i32 @memcpy(i32* %103, i32* %104, i32 %105)
  %107 = load i64, i64* @ONION_ANNOUNCE_REQUEST_SIZE, align 8
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %10, align 4
  store i32 1, i32* %23, align 4
  br label %109

109:                                              ; preds = %98, %97
  %110 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %110)
  br label %111

111:                                              ; preds = %109, %27
  %112 = load i32, i32* %10, align 4
  ret i32 %112
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @random_nonce(i32*) #2

declare dso_local i32 @encrypt_data(i32*, i32*, i32*, i32*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

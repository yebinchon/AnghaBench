; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_crypto_core.c_create_request.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_crypto_core.c_create_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_CRYPTO_REQUEST_SIZE = common dso_local global i64 0, align 8
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@crypto_box_NONCEBYTES = common dso_local global i64 0, align 8
@crypto_box_MACBYTES = common dso_local global i64 0, align 8
@NET_PACKET_CRYPTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_request(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %7
  %24 = load i32*, i32** %11, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32*, i32** %12, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32*, i32** %13, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29, %26, %23, %7
  store i32 -1, i32* %8, align 4
  br label %112

33:                                               ; preds = %29
  %34 = load i64, i64* @MAX_CRYPTO_REQUEST_SIZE, align 8
  %35 = load i64, i64* %14, align 8
  %36 = add nsw i64 %35, 1
  %37 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %38 = mul nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %36, %39
  %41 = load i64, i64* @crypto_box_NONCEBYTES, align 8
  %42 = add nsw i64 %40, %41
  %43 = add nsw i64 %42, 1
  %44 = load i64, i64* @crypto_box_MACBYTES, align 8
  %45 = add nsw i64 %43, %44
  %46 = icmp slt i64 %34, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  store i32 -1, i32* %8, align 4
  br label %112

48:                                               ; preds = %33
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %52 = mul nsw i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32* %54, i32** %16, align 8
  %55 = load i32*, i32** %16, align 8
  %56 = call i32 @new_nonce(i32* %55)
  %57 = load i64, i64* @MAX_CRYPTO_REQUEST_SIZE, align 8
  %58 = call i8* @llvm.stacksave()
  store i8* %58, i8** %17, align 8
  %59 = alloca i32, i64 %57, align 16
  store i64 %57, i64* %18, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32*, i32** %13, align 8
  %62 = load i64, i64* %14, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @memcpy(i32* %60, i32* %61, i32 %63)
  %65 = load i32, i32* %15, align 4
  %66 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %65, i32* %66, align 16
  %67 = load i32*, i32** %12, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = load i64, i64* %14, align 8
  %71 = add nsw i64 %70, 1
  %72 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %73 = mul nsw i32 %72, 2
  %74 = add nsw i32 1, %73
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* @crypto_box_NONCEBYTES, align 8
  %77 = add nsw i64 %75, %76
  %78 = load i32*, i32** %11, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 %77
  %80 = call i32 @encrypt_data(i32* %67, i32* %68, i32* %69, i32* %59, i64 %71, i32* %79)
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* %19, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %84

83:                                               ; preds = %48
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %110

84:                                               ; preds = %48
  %85 = load i32, i32* @NET_PACKET_CRYPTO, align 4
  %86 = load i32*, i32** %11, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %85, i32* %87, align 4
  %88 = load i32*, i32** %11, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %92 = call i32 @memcpy(i32* %89, i32* %90, i32 %91)
  %93 = load i32*, i32** %11, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %100 = call i32 @memcpy(i32* %97, i32* %98, i32 %99)
  %101 = load i32, i32* %19, align 4
  %102 = add nsw i32 %101, 1
  %103 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %104 = mul nsw i32 %103, 2
  %105 = add nsw i32 %102, %104
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* @crypto_box_NONCEBYTES, align 8
  %108 = add nsw i64 %106, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %110

110:                                              ; preds = %84, %83
  %111 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %111)
  br label %112

112:                                              ; preds = %110, %47, %32
  %113 = load i32, i32* %8, align 4
  ret i32 %113
}

declare dso_local i32 @new_nonce(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @encrypt_data(i32*, i32*, i32*, i32*, i64, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

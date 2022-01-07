; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_create_cookie_response.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_create_cookie_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@COOKIE_DATA_LENGTH = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@COOKIE_LENGTH = common dso_local global i32 0, align 4
@NET_PACKET_COOKIE_RESPONSE = common dso_local global i32 0, align 4
@crypto_box_NONCEBYTES = common dso_local global i32 0, align 4
@COOKIE_RESPONSE_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*, i32*, i32*)* @create_cookie_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_cookie_response(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* @COOKIE_DATA_LENGTH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %23 = call i32 @memcpy(i32* %20, i32* %21, i32 %22)
  %24 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %20, i64 %25
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %29 = call i32 @memcpy(i32* %26, i32* %27, i32 %28)
  %30 = load i32, i32* @COOKIE_LENGTH, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, 4
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %14, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @create_cookie(i32* %33, i32* %20, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %75

40:                                               ; preds = %5
  %41 = load i32, i32* @COOKIE_LENGTH, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %33, i64 %42
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* @COOKIE_DATA_LENGTH, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @memcpy(i32* %43, i32* %47, i32 4)
  %49 = load i32, i32* @NET_PACKET_COOKIE_RESPONSE, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %49, i32* %51, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = call i32 @new_nonce(i32* %53)
  %55 = load i32*, i32** %10, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = mul nuw i64 4, %32
  %59 = trunc i64 %58 to i32
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = call i32 @encrypt_data_symmetric(i32* %55, i32* %57, i32* %33, i32 %59, i32* %64)
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* @COOKIE_RESPONSE_LENGTH, align 4
  %68 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %69 = add nsw i32 1, %68
  %70 = sub nsw i32 %67, %69
  %71 = icmp ne i32 %66, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %40
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %75

73:                                               ; preds = %40
  %74 = load i32, i32* @COOKIE_RESPONSE_LENGTH, align 4
  store i32 %74, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %75

75:                                               ; preds = %73, %72, %39
  %76 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i64 @create_cookie(i32*, i32*, i32) #2

declare dso_local i32 @new_nonce(i32*) #2

declare dso_local i32 @encrypt_data_symmetric(i32*, i32*, i32*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

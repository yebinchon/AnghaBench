; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_tcp_oob_handle_cookie_request.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_tcp_oob_handle_cookie_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@COOKIE_REQUEST_PLAIN_LENGTH = common dso_local global i32 0, align 4
@crypto_box_BEFORENMBYTES = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@COOKIE_RESPONSE_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32*, i32*, i32)* @tcp_oob_handle_cookie_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_oob_handle_cookie_request(%struct.TYPE_5__* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* @COOKIE_REQUEST_PLAIN_LENGTH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i32, i32* @crypto_box_BEFORENMBYTES, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  %26 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %15, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i64 @handle_cookie_request(%struct.TYPE_5__* %29, i32* %22, i32* %25, i32* %28, i32* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %61

35:                                               ; preds = %5
  %36 = load i32*, i32** %9, align 8
  %37 = call i64 @public_key_cmp(i32* %36, i32* %28)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %61

40:                                               ; preds = %35
  %41 = load i32, i32* @COOKIE_RESPONSE_LENGTH, align 4
  %42 = zext i32 %41 to i64
  %43 = alloca i32, i64 %42, align 16
  store i64 %42, i64* %17, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @create_cookie_response(%struct.TYPE_5__* %44, i32* %43, i32* %22, i32* %25, i32* %45)
  %47 = sext i32 %46 to i64
  %48 = mul nuw i64 4, %42
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %61

51:                                               ; preds = %40
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = mul nuw i64 4, %42
  %58 = trunc i64 %57 to i32
  %59 = call i32 @tcp_send_oob_packet(i32 %54, i32 %55, i32* %56, i32* %43, i32 %58)
  store i32 %59, i32* %18, align 4
  %60 = load i32, i32* %18, align 4
  store i32 %60, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %61

61:                                               ; preds = %51, %50, %39, %34
  %62 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @handle_cookie_request(%struct.TYPE_5__*, i32*, i32*, i32*, i32*, i32) #2

declare dso_local i64 @public_key_cmp(i32*, i32*) #2

declare dso_local i32 @create_cookie_response(%struct.TYPE_5__*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @tcp_send_oob_packet(i32, i32, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

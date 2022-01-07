; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_handle_cookie_response.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_handle_cookie_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COOKIE_RESPONSE_LENGTH = common dso_local global i64 0, align 8
@COOKIE_LENGTH = common dso_local global i32 0, align 4
@crypto_box_NONCEBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i64, i32*)* @handle_cookie_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_cookie_response(i32* %0, i32* %1, i32* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* @COOKIE_RESPONSE_LENGTH, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %57

20:                                               ; preds = %5
  %21 = load i32, i32* @COOKIE_LENGTH, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %22, 4
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %12, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %36 = add nsw i32 1, %35
  %37 = sext i32 %36 to i64
  %38 = sub nsw i64 %34, %37
  %39 = call i32 @decrypt_data_symmetric(i32* %26, i32* %28, i32* %33, i64 %38, i32* %25)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = mul nuw i64 4, %23
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %20
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %55

45:                                               ; preds = %20
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* @COOKIE_LENGTH, align 4
  %48 = call i32 @memcpy(i32* %46, i32* %25, i32 %47)
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* @COOKIE_LENGTH, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %25, i64 %51
  %53 = call i32 @memcpy(i32* %49, i32* %52, i32 4)
  %54 = load i32, i32* @COOKIE_LENGTH, align 4
  store i32 %54, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %55

55:                                               ; preds = %45, %44
  %56 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %56)
  br label %57

57:                                               ; preds = %55, %19
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @decrypt_data_symmetric(i32*, i32*, i32*, i64, i32*) #2

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

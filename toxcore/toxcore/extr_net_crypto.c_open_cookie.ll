; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_open_cookie.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_open_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COOKIE_CONTENTS_LENGTH = common dso_local global i32 0, align 4
@crypto_box_NONCEBYTES = common dso_local global i32 0, align 4
@COOKIE_LENGTH = common dso_local global i32 0, align 4
@COOKIE_TIMEOUT = common dso_local global i64 0, align 8
@COOKIE_DATA_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i64*)* @open_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_cookie(i64* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load i32, i32* @COOKIE_CONTENTS_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = load i64*, i64** %6, align 8
  %21 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i32, i32* @COOKIE_LENGTH, align 4
  %25 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %26 = sub nsw i32 %24, %25
  %27 = call i32 @decrypt_data_symmetric(i64* %18, i64* %19, i64* %23, i32 %26, i64* %17)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = mul nuw i64 8, %15
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %51

33:                                               ; preds = %3
  %34 = call i32 @memcpy(i64* %12, i64* %17, i32 8)
  %35 = call i64 (...) @unix_time()
  store i64 %35, i64* %13, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* @COOKIE_TIMEOUT, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i64, i64* %13, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %33
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %51

46:                                               ; preds = %41
  %47 = load i64*, i64** %5, align 8
  %48 = getelementptr inbounds i64, i64* %17, i64 8
  %49 = load i32, i32* @COOKIE_DATA_LENGTH, align 4
  %50 = call i32 @memcpy(i64* %47, i64* %48, i32 %49)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %51

51:                                               ; preds = %46, %45, %32
  %52 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @decrypt_data_symmetric(i64*, i64*, i64*, i32, i64*) #2

declare dso_local i32 @memcpy(i64*, i64*, i32) #2

declare dso_local i64 @unix_time(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

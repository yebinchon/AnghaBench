; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_crypto_core.c_decrypt_data_symmetric.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_crypto_core.c_decrypt_data_symmetric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_box_BOXZEROBYTES = common dso_local global i64 0, align 8
@crypto_box_ZEROBYTES = common dso_local global i64 0, align 8
@crypto_box_MACBYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decrypt_data_symmetric(i32* %0, i32* %1, i32* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* @crypto_box_BOXZEROBYTES, align 8
  %18 = icmp sle i64 %16, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %5
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32*, i32** %9, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32*, i32** %11, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %25, %22, %19, %5
  store i32 -1, i32* %6, align 4
  br label %71

32:                                               ; preds = %28
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @crypto_box_ZEROBYTES, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %12, align 8
  %37 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %13, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @crypto_box_BOXZEROBYTES, align 8
  %40 = add nsw i64 %38, %39
  %41 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %14, align 8
  %42 = load i64, i64* @crypto_box_BOXZEROBYTES, align 8
  %43 = call i32 @memset(i32* %41, i32 0, i64 %42)
  %44 = load i64, i64* @crypto_box_BOXZEROBYTES, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32*, i32** %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @memcpy(i32* %45, i32* %46, i64 %47)
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @crypto_box_BOXZEROBYTES, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i64 @crypto_box_open_afternm(i32* %37, i32* %41, i64 %51, i32* %52, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %32
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %69

57:                                               ; preds = %32
  %58 = load i32*, i32** %11, align 8
  %59 = load i64, i64* @crypto_box_ZEROBYTES, align 8
  %60 = getelementptr inbounds i32, i32* %37, i64 %59
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* @crypto_box_MACBYTES, align 8
  %63 = sub nsw i64 %61, %62
  %64 = call i32 @memcpy(i32* %58, i32* %60, i64 %63)
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @crypto_box_MACBYTES, align 8
  %67 = sub nsw i64 %65, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %69

69:                                               ; preds = %57, %56
  %70 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %70)
  br label %71

71:                                               ; preds = %69, %31
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i64) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

declare dso_local i64 @crypto_box_open_afternm(i32*, i32*, i64, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

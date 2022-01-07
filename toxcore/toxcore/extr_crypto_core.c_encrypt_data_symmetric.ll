; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_crypto_core.c_encrypt_data_symmetric.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_crypto_core.c_encrypt_data_symmetric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_box_ZEROBYTES = common dso_local global i64 0, align 8
@crypto_box_MACBYTES = common dso_local global i64 0, align 8
@crypto_box_BOXZEROBYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @encrypt_data_symmetric(i32* %0, i32* %1, i32* %2, i64 %3, i32* %4) #0 {
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
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %5
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32*, i32** %11, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27, %24, %21, %18, %5
  store i32 -1, i32* %6, align 4
  br label %72

31:                                               ; preds = %27
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @crypto_box_ZEROBYTES, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %12, align 8
  %36 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %13, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @crypto_box_MACBYTES, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i64, i64* @crypto_box_BOXZEROBYTES, align 8
  %41 = add nsw i64 %39, %40
  %42 = alloca i32, i64 %41, align 16
  store i64 %41, i64* %14, align 8
  %43 = load i64, i64* @crypto_box_ZEROBYTES, align 8
  %44 = call i32 @memset(i32* %36, i32 0, i64 %43)
  %45 = load i64, i64* @crypto_box_ZEROBYTES, align 8
  %46 = getelementptr inbounds i32, i32* %36, i64 %45
  %47 = load i32*, i32** %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @memcpy(i32* %46, i32* %47, i64 %48)
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* @crypto_box_ZEROBYTES, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i64 @crypto_box_afternm(i32* %42, i32* %36, i64 %52, i32* %53, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %31
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %70

58:                                               ; preds = %31
  %59 = load i32*, i32** %11, align 8
  %60 = load i64, i64* @crypto_box_BOXZEROBYTES, align 8
  %61 = getelementptr inbounds i32, i32* %42, i64 %60
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @crypto_box_MACBYTES, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @memcpy(i32* %59, i32* %61, i64 %64)
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @crypto_box_MACBYTES, align 8
  %68 = add nsw i64 %66, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %70

70:                                               ; preds = %58, %57
  %71 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %71)
  br label %72

72:                                               ; preds = %70, %30
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i64) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

declare dso_local i64 @crypto_box_afternm(i32*, i32*, i64, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

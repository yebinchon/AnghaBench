; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_crypt-aes.c_fz_aes_crypt_cfb.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_crypt-aes.c_fz_aes_crypt_cfb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FZ_AES_DECRYPT = common dso_local global i32 0, align 4
@FZ_AES_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_aes_crypt_cfb(i32* %0, i32 %1, i32 %2, i32* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @FZ_AES_DECRYPT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %62

22:                                               ; preds = %7
  br label %23

23:                                               ; preds = %36, %22
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %10, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %27, label %61

27:                                               ; preds = %23
  %28 = load i32, i32* %16, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* @FZ_AES_ENCRYPT, align 4
  %33 = load i8*, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @fz_aes_crypt_ecb(i32* %31, i32 %32, i8* %33, i8* %34)
  br label %36

36:                                               ; preds = %30, %27
  %37 = load i8*, i8** %13, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %13, align 8
  %39 = load i8, i8* %37, align 1
  %40 = zext i8 %39 to i32
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i8*, i8** %12, align 8
  %43 = load i32, i32* %16, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = xor i32 %41, %47
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %14, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %14, align 8
  store i8 %49, i8* %50, align 1
  %52 = load i32, i32* %15, align 4
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %12, align 8
  %55 = load i32, i32* %16, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8 %53, i8* %57, align 1
  %58 = load i32, i32* %16, align 4
  %59 = add nsw i32 %58, 1
  %60 = and i32 %59, 15
  store i32 %60, i32* %16, align 4
  br label %23

61:                                               ; preds = %23
  br label %99

62:                                               ; preds = %7
  br label %63

63:                                               ; preds = %76, %62
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %10, align 4
  %66 = icmp ne i32 %64, 0
  br i1 %66, label %67, label %98

67:                                               ; preds = %63
  %68 = load i32, i32* %16, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* @FZ_AES_ENCRYPT, align 4
  %73 = load i8*, i8** %12, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = call i32 @fz_aes_crypt_ecb(i32* %71, i32 %72, i8* %73, i8* %74)
  br label %76

76:                                               ; preds = %70, %67
  %77 = load i8*, i8** %12, align 8
  %78 = load i32, i32* %16, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8*, i8** %13, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %13, align 8
  %85 = load i8, i8* %83, align 1
  %86 = zext i8 %85 to i32
  %87 = xor i32 %82, %86
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %14, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %14, align 8
  store i8 %88, i8* %89, align 1
  %91 = load i8*, i8** %12, align 8
  %92 = load i32, i32* %16, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  store i8 %88, i8* %94, align 1
  %95 = load i32, i32* %16, align 4
  %96 = add nsw i32 %95, 1
  %97 = and i32 %96, 15
  store i32 %97, i32* %16, align 4
  br label %63

98:                                               ; preds = %63
  br label %99

99:                                               ; preds = %98, %61
  %100 = load i32, i32* %16, align 4
  %101 = load i32*, i32** %11, align 8
  store i32 %100, i32* %101, align 4
  ret void
}

declare dso_local i32 @fz_aes_crypt_ecb(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

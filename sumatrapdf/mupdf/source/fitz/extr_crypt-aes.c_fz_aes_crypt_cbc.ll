; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_crypt-aes.c_fz_aes_crypt_cbc.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_crypt-aes.c_fz_aes_crypt_cbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FZ_AES_DECRYPT = common dso_local global i32 0, align 4
@PADLOCK_ACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_aes_crypt_cbc(i32* %0, i32 %1, i64 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [16 x i8], align 16
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @FZ_AES_DECRYPT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %67

18:                                               ; preds = %6
  br label %19

19:                                               ; preds = %56, %18
  %20 = load i64, i64* %9, align 8
  %21 = icmp ugt i64 %20, 0
  br i1 %21, label %22, label %66

22:                                               ; preds = %19
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %24 = load i8*, i8** %11, align 8
  %25 = call i32 @memcpy(i8* %23, i8* %24, i32 16)
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i8*, i8** %11, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = call i32 @fz_aes_crypt_ecb(i32* %26, i32 %27, i8* %28, i8* %29)
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %53, %22
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 16
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = load i8*, i8** %12, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = xor i32 %40, %46
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %12, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 %48, i8* %52, align 1
  br label %53

53:                                               ; preds = %34
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %31

56:                                               ; preds = %31
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %59 = call i32 @memcpy(i8* %57, i8* %58, i32 16)
  %60 = load i8*, i8** %11, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 16
  store i8* %61, i8** %11, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 16
  store i8* %63, i8** %12, align 8
  %64 = load i64, i64* %9, align 8
  %65 = sub i64 %64, 16
  store i64 %65, i64* %9, align 8
  br label %19

66:                                               ; preds = %19
  br label %113

67:                                               ; preds = %6
  br label %68

68:                                               ; preds = %97, %67
  %69 = load i64, i64* %9, align 8
  %70 = icmp ugt i64 %69, 0
  br i1 %70, label %71, label %112

71:                                               ; preds = %68
  store i32 0, i32* %13, align 4
  br label %72

72:                                               ; preds = %94, %71
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %73, 16
  br i1 %74, label %75, label %97

75:                                               ; preds = %72
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8*, i8** %10, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = xor i32 %81, %87
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %12, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  store i8 %89, i8* %93, align 1
  br label %94

94:                                               ; preds = %75
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %72

97:                                               ; preds = %72
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i8*, i8** %12, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = call i32 @fz_aes_crypt_ecb(i32* %98, i32 %99, i8* %100, i8* %101)
  %103 = load i8*, i8** %10, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = call i32 @memcpy(i8* %103, i8* %104, i32 16)
  %106 = load i8*, i8** %11, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 16
  store i8* %107, i8** %11, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 16
  store i8* %109, i8** %12, align 8
  %110 = load i64, i64* %9, align 8
  %111 = sub i64 %110, 16
  store i64 %111, i64* %9, align 8
  br label %68

112:                                              ; preds = %68
  br label %113

113:                                              ; preds = %112, %66
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fz_aes_crypt_ecb(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

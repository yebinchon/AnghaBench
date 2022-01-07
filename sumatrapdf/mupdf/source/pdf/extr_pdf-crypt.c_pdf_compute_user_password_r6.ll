; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-crypt.c_pdf_compute_user_password_r6.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-crypt.c_pdf_compute_user_password_r6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"AES key init failed (keylen=256)\00", align 1
@FZ_AES_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i8*, i64, i8*, i8*)* @pdf_compute_user_password_r6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_compute_user_password_r6(i32* %0, %struct.TYPE_3__* %1, i8* %2, i64 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [8 x i8], align 1
  %14 = alloca [8 x i8], align 1
  %15 = alloca [32 x i8], align 16
  %16 = alloca [16 x i8], align 16
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %21 = call i32 @nelem(i8* %20)
  %22 = call i32 @fz_memrnd(i32* %18, i8* %19, i32 %21)
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %25 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %26 = call i32 @nelem(i8* %25)
  %27 = call i32 @fz_memrnd(i32* %23, i8* %24, i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 @pdf_compute_hardened_hash_r6(i32* %28, i8* %29, i64 %30, i8* %31, i32* null, i8* %32)
  %34 = load i8*, i8** %11, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 32
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %37 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %38 = call i32 @nelem(i8* %37)
  %39 = call i32 @memcpy(i8* %35, i8* %36, i32 %38)
  %40 = load i8*, i8** %11, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 40
  %42 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %43 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %44 = call i32 @nelem(i8* %43)
  %45 = call i32 @memcpy(i8* %41, i8* %42, i32 %44)
  %46 = load i32*, i32** %7, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %50 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %51 = call i32 @pdf_compute_hardened_hash_r6(i32* %46, i8* %47, i64 %48, i8* %49, i32* null, i8* %50)
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %53 = call i32 @memset(i8* %52, i32 0, i32 16)
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %55 = call i64 @fz_aes_setkey_enc(i32* %17, i8* %54, i32 256)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %6
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %60 = call i32 @fz_throw(i32* %58, i32 %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %6
  %62 = load i32, i32* @FZ_AES_ENCRYPT, align 4
  %63 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %12, align 8
  %68 = call i32 @fz_aes_crypt_cbc(i32* %17, i32 %62, i32 32, i8* %63, i32 %66, i8* %67)
  ret void
}

declare dso_local i32 @fz_memrnd(i32*, i8*, i32) #1

declare dso_local i32 @nelem(i8*) #1

declare dso_local i32 @pdf_compute_hardened_hash_r6(i32*, i8*, i64, i8*, i32*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @fz_aes_setkey_enc(i32*, i8*, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @fz_aes_crypt_cbc(i32*, i32, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-crypt.c_pdf_compute_permissions_r6.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-crypt.c_pdf_compute_permissions_r6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"AES key init failed (keylen=256)\00", align 1
@FZ_AES_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i8*)* @pdf_compute_permissions_r6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_compute_permissions_r6(i32* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca [16 x i8], align 16
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = bitcast i32* %12 to i8*
  %14 = call i32 @memcpy(i8* %10, i8* %13, i32 4)
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 4
  %16 = call i32 @memset(i8* %15, i32 255, i32 4)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 84, i32 70
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 8
  store i8 %23, i8* %24, align 8
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 9
  store i8 97, i8* %25, align 1
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 10
  store i8 100, i8* %26, align 2
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 11
  store i8 98, i8* %27, align 1
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 12
  %30 = call i32 @fz_memrnd(i32* %28, i8* %29, i32 4)
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %32 = call i32 @memset(i8* %31, i32 0, i32 16)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @fz_aes_setkey_enc(i32* %9, i32 %35, i32 256)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %3
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %41 = call i32 @fz_throw(i32* %39, i32 %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %38, %3
  %43 = load i32, i32* @FZ_AES_ENCRYPT, align 4
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @fz_aes_crypt_cbc(i32* %9, i32 %43, i32 16, i8* %44, i8* %45, i8* %46)
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fz_memrnd(i32*, i8*, i32) #1

declare dso_local i64 @fz_aes_setkey_enc(i32*, i32, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @fz_aes_crypt_cbc(i32*, i32, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

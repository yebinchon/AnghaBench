; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-crypt.c_pdf_compute_encryption_key_r6.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-crypt.c_pdf_compute_encryption_key_r6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32*, i32* }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"AES key init failed (keylen=256)\00", align 1
@FZ_AES_DECRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i8*, i64, i32, i8*)* @pdf_compute_encryption_key_r6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_compute_encryption_key_r6(i32* %0, %struct.TYPE_3__* %1, i8* %2, i64 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [32 x i8], align 16
  %14 = alloca [16 x i8], align 16
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp ugt i64 %16, 127
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i64 127, i64* %10, align 8
  br label %19

19:                                               ; preds = %18, %6
  %20 = load i32*, i32** %7, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  br label %33

29:                                               ; preds = %19
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i32* [ %28, %25 ], [ %32, %29 ]
  %35 = getelementptr inbounds i32, i32* %34, i64 32
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  br label %43

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i32* [ %41, %38 ], [ null, %42 ]
  %45 = load i8*, i8** %12, align 8
  %46 = call i32 @pdf_compute_hardened_hash_r6(i32* %20, i8* %21, i64 %22, i32* %35, i32* %44, i8* %45)
  %47 = load i32*, i32** %7, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  br label %60

56:                                               ; preds = %43
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i32* [ %55, %52 ], [ %59, %56 ]
  %62 = getelementptr inbounds i32, i32* %61, i64 40
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  br label %70

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %65
  %71 = phi i32* [ %68, %65 ], [ null, %69 ]
  %72 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %73 = call i32 @pdf_compute_hardened_hash_r6(i32* %47, i8* %48, i64 %49, i32* %62, i32* %71, i8* %72)
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %75 = call i32 @memset(i8* %74, i32 0, i32 16)
  %76 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %77 = call i64 @fz_aes_setkey_dec(i32* %15, i8* %76, i32 256)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %82 = call i32 @fz_throw(i32* %80, i32 %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %79, %70
  %84 = load i32, i32* @FZ_AES_DECRYPT, align 4
  %85 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  br label %96

92:                                               ; preds = %83
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  br label %96

96:                                               ; preds = %92, %88
  %97 = phi i32 [ %91, %88 ], [ %95, %92 ]
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @fz_aes_crypt_cbc(i32* %15, i32 %84, i32 32, i8* %85, i32 %97, i32 %100)
  ret void
}

declare dso_local i32 @pdf_compute_hardened_hash_r6(i32*, i8*, i64, i32*, i32*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @fz_aes_setkey_dec(i32*, i8*, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @fz_aes_crypt_cbc(i32*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

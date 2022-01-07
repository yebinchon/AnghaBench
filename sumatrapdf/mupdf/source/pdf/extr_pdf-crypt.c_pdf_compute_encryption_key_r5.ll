; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-crypt.c_pdf_compute_encryption_key_r5.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-crypt.c_pdf_compute_encryption_key_r5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32, i32, i32, i32 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"AES key init failed (keylen=%d)\00", align 1
@FZ_AES_DECRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i8*, i64, i32, i8*)* @pdf_compute_encryption_key_r5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_compute_encryption_key_r5(i32* %0, %struct.TYPE_3__* %1, i8* %2, i64 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [184 x i8], align 16
  %14 = alloca i32, align 4
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
  %20 = getelementptr inbounds [184 x i8], [184 x i8]* %13, i64 0, i64 0
  %21 = load i8*, i8** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memcpy(i8* %20, i8* %21, i32 %23)
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %19
  %28 = getelementptr inbounds [184 x i8], [184 x i8]* %13, i64 0, i64 0
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 32
  %35 = call i32 @memcpy(i8* %30, i8* %34, i32 8)
  %36 = getelementptr inbounds [184 x i8], [184 x i8]* %13, i64 0, i64 0
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = getelementptr inbounds i8, i8* %38, i64 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @memcpy(i8* %39, i8* %42, i32 48)
  br label %53

44:                                               ; preds = %19
  %45 = getelementptr inbounds [184 x i8], [184 x i8]* %13, i64 0, i64 0
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 32
  %52 = call i32 @memcpy(i8* %47, i8* %51, i32 8)
  br label %53

53:                                               ; preds = %44, %27
  %54 = call i32 @fz_sha256_init(i32* %14)
  %55 = getelementptr inbounds [184 x i8], [184 x i8]* %13, i64 0, i64 0
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, 8
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 48, i32 0
  %62 = sext i32 %61 to i64
  %63 = add i64 %57, %62
  %64 = call i32 @fz_sha256_update(i32* %14, i8* %55, i64 %63)
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 @fz_sha256_final(i32* %14, i8* %65)
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %53
  %70 = getelementptr inbounds [184 x i8], [184 x i8]* %13, i64 0, i64 0
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 40
  %77 = call i32 @memcpy(i8* %72, i8* %76, i32 8)
  %78 = getelementptr inbounds [184 x i8], [184 x i8]* %13, i64 0, i64 0
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = getelementptr inbounds i8, i8* %80, i64 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @memcpy(i8* %81, i8* %84, i32 48)
  br label %95

86:                                               ; preds = %53
  %87 = getelementptr inbounds [184 x i8], [184 x i8]* %13, i64 0, i64 0
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 40
  %94 = call i32 @memcpy(i8* %89, i8* %93, i32 8)
  br label %95

95:                                               ; preds = %86, %69
  %96 = call i32 @fz_sha256_init(i32* %14)
  %97 = getelementptr inbounds [184 x i8], [184 x i8]* %13, i64 0, i64 0
  %98 = load i64, i64* %10, align 8
  %99 = add i64 %98, 8
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 48, i32 0
  %104 = sext i32 %103 to i64
  %105 = add i64 %99, %104
  %106 = call i32 @fz_sha256_update(i32* %14, i8* %97, i64 %105)
  %107 = getelementptr inbounds [184 x i8], [184 x i8]* %13, i64 0, i64 0
  %108 = call i32 @fz_sha256_final(i32* %14, i8* %107)
  %109 = getelementptr inbounds [184 x i8], [184 x i8]* %13, i64 0, i64 0
  %110 = getelementptr inbounds i8, i8* %109, i64 32
  %111 = call i32 @memset(i8* %110, i32 0, i32 152)
  %112 = getelementptr inbounds [184 x i8], [184 x i8]* %13, i64 0, i64 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @fz_aes_setkey_dec(i32* %15, i8* %112, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %95
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @fz_throw(i32* %119, i32 %120, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %118, %95
  %126 = load i32, i32* @FZ_AES_DECRYPT, align 4
  %127 = getelementptr inbounds [184 x i8], [184 x i8]* %13, i64 0, i64 0
  %128 = getelementptr inbounds i8, i8* %127, i64 32
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  br label %139

135:                                              ; preds = %125
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  br label %139

139:                                              ; preds = %135, %131
  %140 = phi i32 [ %134, %131 ], [ %138, %135 ]
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @fz_aes_crypt_cbc(i32* %15, i32 %126, i32 32, i8* %128, i32 %140, i32 %143)
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fz_sha256_init(i32*) #1

declare dso_local i32 @fz_sha256_update(i32*, i8*, i64) #1

declare dso_local i32 @fz_sha256_final(i32*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @fz_aes_setkey_dec(i32*, i8*, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, i32) #1

declare dso_local i32 @fz_aes_crypt_cbc(i32*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

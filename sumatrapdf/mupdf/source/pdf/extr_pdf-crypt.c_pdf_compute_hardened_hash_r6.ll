; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-crypt.c_pdf_compute_hardened_hash_r6.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-crypt.c_pdf_compute_hardened_hash_r6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"AES key init failed (keylen=%d)\00", align 1
@FZ_AES_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64, i8*, i8*, i8*)* @pdf_compute_hardened_hash_r6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_compute_hardened_hash_r6(i32* %0, i8* %1, i64 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [15360 x i8], align 16
  %14 = alloca [64 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  store i32 32, i32* %15, align 4
  store i64 0, i64* %16, align 8
  %24 = call i32 @fz_sha256_init(i32* %20)
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @fz_sha256_update(i32* %20, i8* %25, i64 %26)
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @fz_sha256_update(i32* %20, i8* %28, i64 8)
  %30 = load i8*, i8** %11, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %6
  %33 = load i8*, i8** %11, align 8
  %34 = call i32 @fz_sha256_update(i32* %20, i8* %33, i64 48)
  br label %35

35:                                               ; preds = %32, %6
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %37 = call i32 @fz_sha256_final(i32* %20, i8* %36)
  store i32 0, i32* %17, align 4
  br label %38

38:                                               ; preds = %166, %35
  %39 = load i32, i32* %17, align 4
  %40 = icmp slt i32 %39, 64
  br i1 %40, label %51, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %17, align 4
  %43 = load i64, i64* %16, align 8
  %44 = mul i64 %43, 64
  %45 = sub i64 %44, 1
  %46 = getelementptr inbounds [15360 x i8], [15360 x i8]* %13, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = add nsw i32 %48, 32
  %50 = icmp slt i32 %42, %49
  br label %51

51:                                               ; preds = %41, %38
  %52 = phi i1 [ true, %38 ], [ %50, %41 ]
  br i1 %52, label %53, label %169

53:                                               ; preds = %51
  %54 = getelementptr inbounds [15360 x i8], [15360 x i8]* %13, i64 0, i64 0
  %55 = load i8*, i8** %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @memcpy(i8* %54, i8* %55, i32 %57)
  %59 = getelementptr inbounds [15360 x i8], [15360 x i8]* %13, i64 0, i64 0
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @memcpy(i8* %61, i8* %62, i32 %63)
  %65 = load i8*, i8** %11, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %53
  %68 = getelementptr inbounds [15360 x i8], [15360 x i8]* %13, i64 0, i64 0
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8*, i8** %11, align 8
  %75 = call i32 @memcpy(i8* %73, i8* %74, i32 48)
  br label %76

76:                                               ; preds = %67, %53
  %77 = load i64, i64* %9, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 %77, %79
  %81 = load i8*, i8** %11, align 8
  %82 = icmp ne i8* %81, null
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 48, i32 0
  %85 = sext i32 %84 to i64
  %86 = add i64 %80, %85
  store i64 %86, i64* %16, align 8
  store i32 1, i32* %18, align 4
  br label %87

87:                                               ; preds = %101, %76
  %88 = load i32, i32* %18, align 4
  %89 = icmp slt i32 %88, 64
  br i1 %89, label %90, label %104

90:                                               ; preds = %87
  %91 = getelementptr inbounds [15360 x i8], [15360 x i8]* %13, i64 0, i64 0
  %92 = load i32, i32* %18, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %16, align 8
  %95 = mul i64 %93, %94
  %96 = getelementptr inbounds i8, i8* %91, i64 %95
  %97 = getelementptr inbounds [15360 x i8], [15360 x i8]* %13, i64 0, i64 0
  %98 = load i64, i64* %16, align 8
  %99 = trunc i64 %98 to i32
  %100 = call i32 @memcpy(i8* %96, i8* %97, i32 %99)
  br label %101

101:                                              ; preds = %90
  %102 = load i32, i32* %18, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %18, align 4
  br label %87

104:                                              ; preds = %87
  %105 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %106 = call i64 @fz_aes_setkey_enc(i32* %23, i8* %105, i32 128)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %111 = call i32 @fz_throw(i32* %109, i32 %110, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 128)
  br label %112

112:                                              ; preds = %108, %104
  %113 = load i32, i32* @FZ_AES_ENCRYPT, align 4
  %114 = load i64, i64* %16, align 8
  %115 = mul i64 %114, 64
  %116 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %117 = getelementptr inbounds i8, i8* %116, i64 16
  %118 = getelementptr inbounds [15360 x i8], [15360 x i8]* %13, i64 0, i64 0
  %119 = getelementptr inbounds [15360 x i8], [15360 x i8]* %13, i64 0, i64 0
  %120 = call i32 @fz_aes_crypt_cbc(i32* %23, i32 %113, i64 %115, i8* %117, i8* %118, i8* %119)
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %121

121:                                              ; preds = %132, %112
  %122 = load i32, i32* %18, align 4
  %123 = icmp slt i32 %122, 16
  br i1 %123, label %124, label %135

124:                                              ; preds = %121
  %125 = load i32, i32* %18, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [15360 x i8], [15360 x i8]* %13, i64 0, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = load i32, i32* %19, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %19, align 4
  br label %132

132:                                              ; preds = %124
  %133 = load i32, i32* %18, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %18, align 4
  br label %121

135:                                              ; preds = %121
  %136 = load i32, i32* %19, align 4
  %137 = srem i32 %136, 3
  %138 = mul nsw i32 %137, 16
  %139 = add nsw i32 32, %138
  store i32 %139, i32* %15, align 4
  %140 = load i32, i32* %15, align 4
  switch i32 %140, label %165 [
    i32 32, label %141
    i32 48, label %149
    i32 64, label %157
  ]

141:                                              ; preds = %135
  %142 = call i32 @fz_sha256_init(i32* %20)
  %143 = getelementptr inbounds [15360 x i8], [15360 x i8]* %13, i64 0, i64 0
  %144 = load i64, i64* %16, align 8
  %145 = mul i64 %144, 64
  %146 = call i32 @fz_sha256_update(i32* %20, i8* %143, i64 %145)
  %147 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %148 = call i32 @fz_sha256_final(i32* %20, i8* %147)
  br label %165

149:                                              ; preds = %135
  %150 = call i32 @fz_sha384_init(i32* %21)
  %151 = getelementptr inbounds [15360 x i8], [15360 x i8]* %13, i64 0, i64 0
  %152 = load i64, i64* %16, align 8
  %153 = mul i64 %152, 64
  %154 = call i32 @fz_sha384_update(i32* %21, i8* %151, i64 %153)
  %155 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %156 = call i32 @fz_sha384_final(i32* %21, i8* %155)
  br label %165

157:                                              ; preds = %135
  %158 = call i32 @fz_sha512_init(i32* %22)
  %159 = getelementptr inbounds [15360 x i8], [15360 x i8]* %13, i64 0, i64 0
  %160 = load i64, i64* %16, align 8
  %161 = mul i64 %160, 64
  %162 = call i32 @fz_sha512_update(i32* %22, i8* %159, i64 %161)
  %163 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %164 = call i32 @fz_sha512_final(i32* %22, i8* %163)
  br label %165

165:                                              ; preds = %135, %157, %149, %141
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %17, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %17, align 4
  br label %38

169:                                              ; preds = %51
  %170 = getelementptr inbounds [15360 x i8], [15360 x i8]* %13, i64 0, i64 0
  %171 = call i32 @memset(i8* %170, i32 0, i32 15360)
  %172 = load i8*, i8** %12, align 8
  %173 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %174 = call i32 @memcpy(i8* %172, i8* %173, i32 32)
  ret void
}

declare dso_local i32 @fz_sha256_init(i32*) #1

declare dso_local i32 @fz_sha256_update(i32*, i8*, i64) #1

declare dso_local i32 @fz_sha256_final(i32*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @fz_aes_setkey_enc(i32*, i8*, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, i32) #1

declare dso_local i32 @fz_aes_crypt_cbc(i32*, i32, i64, i8*, i8*, i8*) #1

declare dso_local i32 @fz_sha384_init(i32*) #1

declare dso_local i32 @fz_sha384_update(i32*, i8*, i64) #1

declare dso_local i32 @fz_sha384_final(i32*, i8*) #1

declare dso_local i32 @fz_sha512_init(i32*) #1

declare dso_local i32 @fz_sha512_update(i32*, i8*, i64) #1

declare dso_local i32 @fz_sha512_final(i32*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-crypt.c_pdf_encrypt_data.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-crypt.c_pdf_encrypt_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@PDF_CRYPT_RC4 = common dso_local global i64 0, align 8
@PDF_CRYPT_AESV2 = common dso_local global i64 0, align 8
@PDF_CRYPT_AESV3 = common dso_local global i64 0, align 8
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"AES key init failed (keylen=%d)\00", align 1
@FZ_AES_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_encrypt_data(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3, void (i32*, i8*, i8*, i32)* %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca void (i32*, i8*, i8*, i32)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [256 x i8], align 16
  %18 = alloca [32 x i8], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [16 x i8], align 16
  %24 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store void (i32*, i8*, i8*, i32)* %4, void (i32*, i8*, i8*, i32)** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %26 = icmp eq %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %8
  %28 = load void (i32*, i8*, i8*, i32)*, void (i32*, i8*, i8*, i32)** %13, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = load i8*, i8** %15, align 8
  %32 = load i32, i32* %16, align 4
  call void %28(i32* %29, i8* %30, i8* %31, i32 %32)
  br label %179

33:                                               ; preds = %8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %40 = call i32 @pdf_compute_object_key(%struct.TYPE_5__* %34, %struct.TYPE_6__* %36, i32 %37, i32 %38, i8* %39, i32 32)
  store i32 %40, i32* %19, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PDF_CRYPT_RC4, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %33
  %48 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %49 = load i32, i32* %19, align 4
  %50 = call i32 @fz_arc4_init(i32* %20, i8* %48, i32 %49)
  br label %51

51:                                               ; preds = %59, %47
  %52 = load i32, i32* %16, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %51
  %55 = load i32, i32* %16, align 4
  store i32 %55, i32* %21, align 4
  %56 = load i32, i32* %21, align 4
  %57 = icmp sgt i32 %56, 256
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 256, i32* %21, align 4
  br label %59

59:                                               ; preds = %58, %54
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %61 = load i8*, i8** %15, align 8
  %62 = load i32, i32* %21, align 4
  %63 = call i32 @fz_arc4_encrypt(i32* %20, i8* %60, i8* %61, i32 %62)
  %64 = load void (i32*, i8*, i8*, i32)*, void (i32*, i8*, i8*, i32)** %13, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %68 = load i32, i32* %21, align 4
  call void %64(i32* %65, i8* %66, i8* %67, i32 %68)
  %69 = load i32, i32* %21, align 4
  %70 = load i8*, i8** %15, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %15, align 8
  %73 = load i32, i32* %21, align 4
  %74 = load i32, i32* %16, align 4
  %75 = sub nsw i32 %74, %73
  store i32 %75, i32* %16, align 4
  br label %51

76:                                               ; preds = %51
  br label %179

77:                                               ; preds = %33
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @PDF_CRYPT_AESV2, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %91, label %84

84:                                               ; preds = %77
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @PDF_CRYPT_AESV3, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %173

91:                                               ; preds = %84, %77
  %92 = load i32, i32* %16, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %179

95:                                               ; preds = %91
  %96 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %97 = load i32, i32* %19, align 4
  %98 = mul nsw i32 %97, 8
  %99 = call i64 @fz_aes_setkey_enc(i32* %22, i8* %96, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %104 = load i32, i32* %19, align 4
  %105 = mul nsw i32 %104, 8
  %106 = call i32 @fz_throw(i32* %102, i32 %103, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %101, %95
  %108 = load i32*, i32** %9, align 8
  %109 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 0
  %110 = call i32 @fz_memrnd(i32* %108, i8* %109, i32 16)
  %111 = load void (i32*, i8*, i8*, i32)*, void (i32*, i8*, i8*, i32)** %13, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = load i8*, i8** %14, align 8
  %114 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 0
  call void %111(i32* %112, i8* %113, i8* %114, i32 16)
  br label %115

115:                                              ; preds = %139, %107
  %116 = load i32, i32* %16, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %155

118:                                              ; preds = %115
  %119 = load i32, i32* %16, align 4
  store i32 %119, i32* %24, align 4
  %120 = load i32, i32* %24, align 4
  %121 = icmp sgt i32 %120, 16
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i32 16, i32* %24, align 4
  br label %123

123:                                              ; preds = %122, %118
  %124 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %125 = load i8*, i8** %15, align 8
  %126 = load i32, i32* %24, align 4
  %127 = call i32 @memcpy(i8* %124, i8* %125, i32 %126)
  %128 = load i32, i32* %24, align 4
  %129 = icmp ne i32 %128, 16
  br i1 %129, label %130, label %139

130:                                              ; preds = %123
  %131 = load i32, i32* %24, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 %132
  %134 = load i32, i32* %24, align 4
  %135 = sub nsw i32 16, %134
  %136 = load i32, i32* %24, align 4
  %137 = sub nsw i32 16, %136
  %138 = call i32 @memset(i8* %133, i32 %135, i32 %137)
  br label %139

139:                                              ; preds = %130, %123
  %140 = load i32, i32* @FZ_AES_ENCRYPT, align 4
  %141 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 0
  %142 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %143 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %144 = getelementptr inbounds i8, i8* %143, i64 16
  %145 = call i32 @fz_aes_crypt_cbc(i32* %22, i32 %140, i32 16, i8* %141, i8* %142, i8* %144)
  %146 = load void (i32*, i8*, i8*, i32)*, void (i32*, i8*, i8*, i32)** %13, align 8
  %147 = load i32*, i32** %9, align 8
  %148 = load i8*, i8** %14, align 8
  %149 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %150 = getelementptr inbounds i8, i8* %149, i64 16
  call void %146(i32* %147, i8* %148, i8* %150, i32 16)
  %151 = load i8*, i8** %15, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 16
  store i8* %152, i8** %15, align 8
  %153 = load i32, i32* %16, align 4
  %154 = sub nsw i32 %153, 16
  store i32 %154, i32* %16, align 4
  br label %115

155:                                              ; preds = %115
  %156 = load i32, i32* %16, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %155
  %159 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %160 = call i32 @memset(i8* %159, i32 16, i32 16)
  %161 = load i32, i32* @FZ_AES_ENCRYPT, align 4
  %162 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 0
  %163 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %164 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %165 = getelementptr inbounds i8, i8* %164, i64 16
  %166 = call i32 @fz_aes_crypt_cbc(i32* %22, i32 %161, i32 16, i8* %162, i8* %163, i8* %165)
  %167 = load void (i32*, i8*, i8*, i32)*, void (i32*, i8*, i8*, i32)** %13, align 8
  %168 = load i32*, i32** %9, align 8
  %169 = load i8*, i8** %14, align 8
  %170 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %171 = getelementptr inbounds i8, i8* %170, i64 16
  call void %167(i32* %168, i8* %169, i8* %171, i32 16)
  br label %172

172:                                              ; preds = %158, %155
  br label %179

173:                                              ; preds = %84
  %174 = load void (i32*, i8*, i8*, i32)*, void (i32*, i8*, i8*, i32)** %13, align 8
  %175 = load i32*, i32** %9, align 8
  %176 = load i8*, i8** %14, align 8
  %177 = load i8*, i8** %15, align 8
  %178 = load i32, i32* %16, align 4
  call void %174(i32* %175, i8* %176, i8* %177, i32 %178)
  br label %179

179:                                              ; preds = %173, %172, %94, %76, %27
  ret void
}

declare dso_local i32 @pdf_compute_object_key(%struct.TYPE_5__*, %struct.TYPE_6__*, i32, i32, i8*, i32) #1

declare dso_local i32 @fz_arc4_init(i32*, i8*, i32) #1

declare dso_local i32 @fz_arc4_encrypt(i32*, i8*, i8*, i32) #1

declare dso_local i64 @fz_aes_setkey_enc(i32*, i8*, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, i32) #1

declare dso_local i32 @fz_memrnd(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fz_aes_crypt_cbc(i32*, i32, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

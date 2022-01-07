; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-crypt.c_pdf_crypt_obj_imp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-crypt.c_pdf_crypt_obj_imp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@PDF_CRYPT_RC4 = common dso_local global i64 0, align 8
@PDF_CRYPT_AESV2 = common dso_local global i64 0, align 8
@PDF_CRYPT_AESV3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"invalid string length for aes encryption\00", align 1
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"AES key init failed (keylen=%d)\00", align 1
@FZ_AES_DECRYPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"aes padding out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32*, i8*, i32)* @pdf_crypt_obj_imp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_crypt_obj_imp(i32* %0, %struct.TYPE_5__* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [16 x i8], align 16
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i64 @pdf_is_indirect(i32* %17, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  br label %193

22:                                               ; preds = %5
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i64 @pdf_is_string(i32* %23, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %139

27:                                               ; preds = %22
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i64 @pdf_to_str_buf(i32* %28, i32* %29)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %11, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @pdf_to_str_len(i32* %32, i32* %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PDF_CRYPT_RC4, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %27
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @fz_arc4_init(i32* %14, i8* %42, i32 %43)
  %45 = load i8*, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @fz_arc4_encrypt(i32* %14, i8* %45, i8* %46, i32 %47)
  br label %49

49:                                               ; preds = %41, %27
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PDF_CRYPT_AESV2, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %63, label %56

56:                                               ; preds = %49
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PDF_CRYPT_AESV3, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %138

63:                                               ; preds = %56, %49
  %64 = load i32, i32* %13, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %137

67:                                               ; preds = %63
  %68 = load i32, i32* %13, align 4
  %69 = and i32 %68, 15
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 32
  br i1 %73, label %74, label %77

74:                                               ; preds = %71, %67
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @fz_warn(i32* %75, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %136

77:                                               ; preds = %71
  %78 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %79 = load i8*, i8** %11, align 8
  %80 = call i32 @memcpy(i8* %78, i8* %79, i32 16)
  %81 = load i8*, i8** %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = mul nsw i32 %82, 8
  %84 = call i64 @fz_aes_setkey_dec(i32* %16, i8* %81, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %77
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %89 = load i32, i32* %10, align 4
  %90 = mul nsw i32 %89, 8
  %91 = call i32 @fz_throw(i32* %87, i32 %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %86, %77
  %93 = load i32, i32* @FZ_AES_DECRYPT, align 4
  %94 = load i32, i32* %13, align 4
  %95 = sub nsw i32 %94, 16
  %96 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 16
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 @fz_aes_crypt_cbc(i32* %16, i32 %93, i32 %95, i8* %96, i8* %98, i8* %99)
  %101 = load i8*, i8** %11, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sub nsw i32 %102, 17
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp slt i32 %107, 1
  br i1 %108, label %118, label %109

109:                                              ; preds = %92
  %110 = load i8*, i8** %11, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sub nsw i32 %111, 17
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp sgt i32 %116, 16
  br i1 %117, label %118, label %121

118:                                              ; preds = %109, %92
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @fz_warn(i32* %119, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %135

121:                                              ; preds = %109
  %122 = load i32*, i32** %6, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sub nsw i32 %124, 16
  %126 = load i8*, i8** %11, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sub nsw i32 %127, 17
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %126, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = sub nsw i32 %125, %132
  %134 = call i32 @pdf_set_str_len(i32* %122, i32* %123, i32 %133)
  br label %135

135:                                              ; preds = %121, %118
  br label %136

136:                                              ; preds = %135, %74
  br label %137

137:                                              ; preds = %136, %66
  br label %138

138:                                              ; preds = %137, %56
  br label %193

139:                                              ; preds = %22
  %140 = load i32*, i32** %6, align 8
  %141 = load i32*, i32** %8, align 8
  %142 = call i64 @pdf_is_array(i32* %140, i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %165

144:                                              ; preds = %139
  %145 = load i32*, i32** %6, align 8
  %146 = load i32*, i32** %8, align 8
  %147 = call i32 @pdf_array_len(i32* %145, i32* %146)
  store i32 %147, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %148

148:                                              ; preds = %161, %144
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %164

152:                                              ; preds = %148
  %153 = load i32*, i32** %6, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %155 = load i32*, i32** %6, align 8
  %156 = load i32*, i32** %8, align 8
  %157 = load i32, i32* %12, align 4
  %158 = call i32* @pdf_array_get(i32* %155, i32* %156, i32 %157)
  %159 = load i8*, i8** %9, align 8
  %160 = load i32, i32* %10, align 4
  call void @pdf_crypt_obj_imp(i32* %153, %struct.TYPE_5__* %154, i32* %158, i8* %159, i32 %160)
  br label %161

161:                                              ; preds = %152
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %12, align 4
  br label %148

164:                                              ; preds = %148
  br label %192

165:                                              ; preds = %139
  %166 = load i32*, i32** %6, align 8
  %167 = load i32*, i32** %8, align 8
  %168 = call i64 @pdf_is_dict(i32* %166, i32* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %191

170:                                              ; preds = %165
  %171 = load i32*, i32** %6, align 8
  %172 = load i32*, i32** %8, align 8
  %173 = call i32 @pdf_dict_len(i32* %171, i32* %172)
  store i32 %173, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %174

174:                                              ; preds = %187, %170
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* %13, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %190

178:                                              ; preds = %174
  %179 = load i32*, i32** %6, align 8
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %181 = load i32*, i32** %6, align 8
  %182 = load i32*, i32** %8, align 8
  %183 = load i32, i32* %12, align 4
  %184 = call i32* @pdf_dict_get_val(i32* %181, i32* %182, i32 %183)
  %185 = load i8*, i8** %9, align 8
  %186 = load i32, i32* %10, align 4
  call void @pdf_crypt_obj_imp(i32* %179, %struct.TYPE_5__* %180, i32* %184, i8* %185, i32 %186)
  br label %187

187:                                              ; preds = %178
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %12, align 4
  br label %174

190:                                              ; preds = %174
  br label %191

191:                                              ; preds = %190, %165
  br label %192

192:                                              ; preds = %191, %164
  br label %193

193:                                              ; preds = %21, %192, %138
  ret void
}

declare dso_local i64 @pdf_is_indirect(i32*, i32*) #1

declare dso_local i64 @pdf_is_string(i32*, i32*) #1

declare dso_local i64 @pdf_to_str_buf(i32*, i32*) #1

declare dso_local i32 @pdf_to_str_len(i32*, i32*) #1

declare dso_local i32 @fz_arc4_init(i32*, i8*, i32) #1

declare dso_local i32 @fz_arc4_encrypt(i32*, i8*, i8*, i32) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @fz_aes_setkey_dec(i32*, i8*, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, i32) #1

declare dso_local i32 @fz_aes_crypt_cbc(i32*, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @pdf_set_str_len(i32*, i32*, i32) #1

declare dso_local i64 @pdf_is_array(i32*, i32*) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local i32* @pdf_array_get(i32*, i32*, i32) #1

declare dso_local i64 @pdf_is_dict(i32*, i32*) #1

declare dso_local i32 @pdf_dict_len(i32*, i32*) #1

declare dso_local i32* @pdf_dict_get_val(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-crypt.c_pdf_parse_crypt_filter.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-crypt.c_pdf_parse_crypt_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }
%struct.TYPE_6__ = type { i32, i32, i32* }

@Identity = common dso_local global i32 0, align 4
@StdCF = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Crypt Filter not Identity or StdCF (%d 0 R)\00", align 1
@PDF_CRYPT_NONE = common dso_local global i8* null, align 8
@PDF_CRYPT_RC4 = common dso_local global i8* null, align 8
@CFM = common dso_local global i32 0, align 4
@None = common dso_local global i32 0, align 4
@V2 = common dso_local global i32 0, align 4
@AESV2 = common dso_local global i32 0, align 4
@PDF_CRYPT_AESV2 = common dso_local global i8* null, align 8
@AESV3 = common dso_local global i32 0, align 4
@PDF_CRYPT_AESV3 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"unknown encryption method: %s\00", align 1
@Length = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"cannot parse crypt filter (%d 0 R)\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"invalid key length: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, %struct.TYPE_6__*, i32*)* @pdf_parse_crypt_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_parse_crypt_filter(i32* %0, %struct.TYPE_5__* %1, %struct.TYPE_6__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* @Identity, align 4
  %16 = call i32* @PDF_NAME(i32 %15)
  %17 = call i32 @pdf_name_eq(i32* %13, i32* %14, i32* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* @StdCF, align 4
  %24 = call i32* @PDF_NAME(i32 %23)
  %25 = call i32 @pdf_name_eq(i32* %21, i32* %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %20, %4
  %28 = phi i1 [ false, %4 ], [ %26, %20 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @pdf_to_num(i32* %38, i32* %41)
  %43 = call i32 @fz_throw(i32* %36, i32 %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %35, %32, %27
  %45 = load i8*, i8** @PDF_CRYPT_NONE, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %68, label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i8*, i8** @PDF_CRYPT_NONE, align 8
  br label %64

62:                                               ; preds = %57
  %63 = load i8*, i8** @PDF_CRYPT_RC4, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i8* [ %61, %60 ], [ %63, %62 ]
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  br label %257

68:                                               ; preds = %44
  %69 = load i32*, i32** %5, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = call i32* @pdf_dict_get(i32* %69, i32* %72, i32* %73)
  store i32* %74, i32** %10, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = call i64 @pdf_is_dict(i32* %75, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %160

79:                                               ; preds = %68
  %80 = load i32*, i32** %5, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* @CFM, align 4
  %83 = call i32* @PDF_NAME(i32 %82)
  %84 = call i32* @pdf_dict_get(i32* %80, i32* %81, i32* %83)
  store i32* %84, i32** %9, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = call i64 @pdf_is_name(i32* %85, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %143

89:                                               ; preds = %79
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* @None, align 4
  %92 = call i32* @PDF_NAME(i32 %91)
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @pdf_name_eq(i32* %90, i32* %92, i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load i8*, i8** @PDF_CRYPT_NONE, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  br label %142

100:                                              ; preds = %89
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* @V2, align 4
  %103 = call i32* @PDF_NAME(i32 %102)
  %104 = load i32*, i32** %9, align 8
  %105 = call i32 @pdf_name_eq(i32* %101, i32* %103, i32* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load i8*, i8** @PDF_CRYPT_RC4, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  br label %141

111:                                              ; preds = %100
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* @AESV2, align 4
  %114 = call i32* @PDF_NAME(i32 %113)
  %115 = load i32*, i32** %9, align 8
  %116 = call i32 @pdf_name_eq(i32* %112, i32* %114, i32* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = load i8*, i8** @PDF_CRYPT_AESV2, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  br label %140

122:                                              ; preds = %111
  %123 = load i32*, i32** %5, align 8
  %124 = load i32, i32* @AESV3, align 4
  %125 = call i32* @PDF_NAME(i32 %124)
  %126 = load i32*, i32** %9, align 8
  %127 = call i32 @pdf_name_eq(i32* %123, i32* %125, i32* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %122
  %130 = load i8*, i8** @PDF_CRYPT_AESV3, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  br label %139

133:                                              ; preds = %122
  %134 = load i32*, i32** %5, align 8
  %135 = load i32*, i32** %5, align 8
  %136 = load i32*, i32** %9, align 8
  %137 = call i32 @pdf_to_name(i32* %135, i32* %136)
  %138 = call i32 @fz_warn(i32* %134, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %133, %129
  br label %140

140:                                              ; preds = %139, %118
  br label %141

141:                                              ; preds = %140, %107
  br label %142

142:                                              ; preds = %141, %96
  br label %143

143:                                              ; preds = %142, %79
  %144 = load i32*, i32** %5, align 8
  %145 = load i32*, i32** %10, align 8
  %146 = load i32, i32* @Length, align 4
  %147 = call i32* @PDF_NAME(i32 %146)
  %148 = call i32* @pdf_dict_get(i32* %144, i32* %145, i32* %147)
  store i32* %148, i32** %9, align 8
  %149 = load i32*, i32** %5, align 8
  %150 = load i32*, i32** %9, align 8
  %151 = call i64 @pdf_is_int(i32* %149, i32* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %143
  %154 = load i32*, i32** %5, align 8
  %155 = load i32*, i32** %9, align 8
  %156 = call i32 @pdf_to_int(i32* %154, i32* %155)
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  br label %159

159:                                              ; preds = %153, %143
  br label %173

160:                                              ; preds = %68
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %172, label %163

163:                                              ; preds = %160
  %164 = load i32*, i32** %5, align 8
  %165 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %166 = load i32*, i32** %5, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @pdf_to_num(i32* %166, i32* %169)
  %171 = call i32 @fz_throw(i32* %164, i32 %165, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %170)
  br label %172

172:                                              ; preds = %163, %160
  br label %173

173:                                              ; preds = %172, %159
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp slt i32 %176, 40
  br i1 %177, label %178, label %185

178:                                              ; preds = %173
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = mul nsw i32 %181, 8
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  br label %185

185:                                              ; preds = %178, %173
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = srem i32 %188, 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %185
  %192 = load i32*, i32** %5, align 8
  %193 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @fz_throw(i32* %192, i32 %193, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %196)
  br label %198

198:                                              ; preds = %191, %185
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %218, label %203

203:                                              ; preds = %198
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 2
  br i1 %207, label %218, label %208

208:                                              ; preds = %203
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %211, 3
  br i1 %212, label %218, label %213

213:                                              ; preds = %208
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 4
  br i1 %217, label %218, label %235

218:                                              ; preds = %213, %208, %203, %198
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp slt i32 %221, 40
  br i1 %222, label %228, label %223

223:                                              ; preds = %218
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp sgt i32 %226, 128
  br i1 %227, label %228, label %235

228:                                              ; preds = %223, %218
  %229 = load i32*, i32** %5, align 8
  %230 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @fz_throw(i32* %229, i32 %230, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %233)
  br label %235

235:                                              ; preds = %228, %223, %213
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = icmp eq i32 %238, 5
  br i1 %239, label %245, label %240

240:                                              ; preds = %235
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = icmp eq i32 %243, 6
  br i1 %244, label %245, label %257

245:                                              ; preds = %240, %235
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %248, 256
  br i1 %249, label %250, label %257

250:                                              ; preds = %245
  %251 = load i32*, i32** %5, align 8
  %252 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @fz_throw(i32* %251, i32 %252, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %255)
  br label %257

257:                                              ; preds = %64, %250, %245, %240
  ret void
}

declare dso_local i32 @pdf_name_eq(i32*, i32*, i32*) #1

declare dso_local i32* @PDF_NAME(i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, i32) #1

declare dso_local i32 @pdf_to_num(i32*, i32*) #1

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32*) #1

declare dso_local i64 @pdf_is_dict(i32*, i32*) #1

declare dso_local i64 @pdf_is_name(i32*, i32*) #1

declare dso_local i32 @fz_warn(i32*, i8*, i32) #1

declare dso_local i32 @pdf_to_name(i32*, i32*) #1

declare dso_local i64 @pdf_is_int(i32*, i32*) #1

declare dso_local i32 @pdf_to_int(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

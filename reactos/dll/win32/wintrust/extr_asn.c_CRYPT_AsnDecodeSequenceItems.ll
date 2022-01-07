; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wintrust/extr_asn.c_CRYPT_AsnDecodeSequenceItems.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wintrust/extr_asn.c_CRYPT_AsnDecodeSequenceItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AsnDecodeSequenceItem = type { i32, i32, i32 (i32, i32*, i32*, i32, i32, i32*, i64*)*, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [34 x i8] c"%p, %d, %p, %d, %08x, %p, %p, %p\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Setting next pointer to %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"decoding item %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"sizing item %d\0A\00", align 1
@CRYPT_DECODE_ALLOC_FLAG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"item %d size: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"item %d: decoded %d bytes\0A\00", align 1
@CRYPT_E_ASN1_BADTAG = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"skipping optional item %d\0A\00", align 1
@NOERROR = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"item %d failed: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"item %d: tag %02x doesn't match expected %02x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"missing optional item %d, skipping\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"not enough bytes for item %d, failing\0A\00", align 1
@CRYPT_E_ASN1_CORRUPT = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"returning %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.AsnDecodeSequenceItem*, i32, i32*, i32, i32, i8*, i32*, i32*)* @CRYPT_AsnDecodeSequenceItems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CRYPT_AsnDecodeSequenceItems(i32 %0, %struct.AsnDecodeSequenceItem* %1, i32 %2, i32* %3, i32 %4, i32 %5, i8* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.AsnDecodeSequenceItem*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store %struct.AsnDecodeSequenceItem* %1, %struct.AsnDecodeSequenceItem** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  store i32 0, i32* %21, align 4
  %25 = load i32*, i32** %13, align 8
  store i32* %25, i32** %22, align 8
  %26 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i32*, i32** %13, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i8*, i8** %16, align 8
  %32 = load i32*, i32** %17, align 8
  %33 = load i32*, i32** %18, align 8
  %34 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.AsnDecodeSequenceItem* %26, i32 %27, i32* %28, i32 %29, i32 %30, i8* %31, i32* %32, i32* %33)
  store i32 0, i32* %20, align 4
  %35 = load i32, i32* @TRUE, align 4
  store i32 %35, i32* %19, align 4
  br label %36

36:                                               ; preds = %440, %9
  %37 = load i32, i32* %19, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %20, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %40, %41
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi i1 [ false, %36 ], [ %42, %39 ]
  br i1 %44, label %45, label %443

45:                                               ; preds = %43
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = load i32*, i32** %22, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = ptrtoint i32* %48 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = sub nsw i64 %47, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %410

56:                                               ; preds = %45
  %57 = load i32*, i32** %22, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = load i32*, i32** %22, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = ptrtoint i32* %60 to i64
  %63 = ptrtoint i32* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 4
  %66 = sub nsw i64 %59, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @CRYPT_GetLen(i32* %57, i32 %67, i32* %23)
  store i32 %68, i32* %19, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %409

70:                                               ; preds = %56
  %71 = load i32*, i32** %22, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @GET_LEN_BYTES(i32 %73)
  store i32 %74, i32* %24, align 4
  %75 = load i32*, i32** %22, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %79 = load i32, i32* %20, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %78, i64 %80
  %82 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %77, %83
  br i1 %84, label %93, label %85

85:                                               ; preds = %70
  %86 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %87 = load i32, i32* %20, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %86, i64 %88
  %90 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %370, label %93

93:                                               ; preds = %85, %70
  %94 = load i32*, i32** %17, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %122

96:                                               ; preds = %93
  %97 = load i8*, i8** %16, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %122

99:                                               ; preds = %96
  %100 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %101 = load i32, i32* %20, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %100, i64 %102
  %104 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %103, i32 0, i32 7
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %99
  %108 = load i32*, i32** %17, align 8
  %109 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32* %108)
  %110 = load i32*, i32** %17, align 8
  %111 = load i8*, i8** %16, align 8
  %112 = bitcast i8* %111 to i32*
  %113 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %114 = load i32, i32* %20, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %113, i64 %115
  %117 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %112, i64 %119
  %121 = bitcast i32* %120 to i32**
  store i32* %110, i32** %121, align 8
  br label %122

122:                                              ; preds = %107, %99, %96, %93
  %123 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %124 = load i32, i32* %20, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %123, i64 %125
  %127 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %126, i32 0, i32 2
  %128 = load i32 (i32, i32*, i32*, i32, i32, i32*, i64*)*, i32 (i32, i32*, i32*, i32, i32, i32*, i64*)** %127, align 8
  %129 = icmp ne i32 (i32, i32*, i32*, i32, i32, i32*, i64*)* %128, null
  br i1 %129, label %130, label %338

130:                                              ; preds = %122
  %131 = load i8*, i8** %16, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, i32* %20, align 4
  %135 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  br label %139

136:                                              ; preds = %130
  %137 = load i32, i32* %20, align 4
  %138 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %136, %133
  %140 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %141 = load i32, i32* %20, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %140, i64 %142
  %144 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %143, i32 0, i32 2
  %145 = load i32 (i32, i32*, i32*, i32, i32, i32*, i64*)*, i32 (i32, i32*, i32*, i32, i32, i32*, i64*)** %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load i32*, i32** %22, align 8
  %148 = load i32, i32* %24, align 4
  %149 = add nsw i32 1, %148
  %150 = load i32, i32* %23, align 4
  %151 = add nsw i32 %149, %150
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %154 = xor i32 %153, -1
  %155 = and i32 %152, %154
  %156 = load i8*, i8** %16, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %169

158:                                              ; preds = %139
  %159 = load i8*, i8** %16, align 8
  %160 = bitcast i8* %159 to i32*
  %161 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %162 = load i32, i32* %20, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %161, i64 %163
  %165 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %160, i64 %167
  br label %170

169:                                              ; preds = %139
  br label %170

170:                                              ; preds = %169, %158
  %171 = phi i32* [ %168, %158 ], [ null, %169 ]
  %172 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %173 = load i32, i32* %20, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %172, i64 %174
  %176 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %175, i32 0, i32 4
  %177 = call i32 %145(i32 %146, i32* null, i32* %147, i32 %151, i32 %155, i32* %171, i64* %176)
  store i32 %177, i32* %19, align 4
  %178 = load i32, i32* %19, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %303

180:                                              ; preds = %170
  %181 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %182 = load i32, i32* %20, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %181, i64 %183
  %185 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %184, i32 0, i32 4
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %188 = load i32, i32* %20, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %187, i64 %189
  %191 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %190, i32 0, i32 5
  %192 = load i64, i64* %191, align 8
  %193 = icmp slt i64 %186, %192
  br i1 %193, label %194, label %206

194:                                              ; preds = %180
  %195 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %196 = load i32, i32* %20, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %195, i64 %197
  %199 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %198, i32 0, i32 5
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %202 = load i32, i32* %20, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %201, i64 %203
  %205 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %204, i32 0, i32 4
  store i64 %200, i64* %205, align 8
  br label %234

206:                                              ; preds = %180
  %207 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %208 = load i32, i32* %20, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %207, i64 %209
  %211 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %214 = load i32, i32* %20, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %213, i64 %215
  %217 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %216, i32 0, i32 5
  %218 = load i64, i64* %217, align 8
  %219 = icmp sgt i64 %212, %218
  br i1 %219, label %220, label %233

220:                                              ; preds = %206
  %221 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %222 = load i32, i32* %20, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %221, i64 %223
  %225 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %224, i32 0, i32 4
  %226 = load i64, i64* %225, align 8
  %227 = call i64 @ALIGN_DWORD_PTR(i64 %226)
  %228 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %229 = load i32, i32* %20, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %228, i64 %230
  %232 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %231, i32 0, i32 4
  store i64 %227, i64* %232, align 8
  br label %233

233:                                              ; preds = %220, %206
  br label %234

234:                                              ; preds = %233, %194
  %235 = load i32, i32* %20, align 4
  %236 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %237 = load i32, i32* %20, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %236, i64 %238
  %240 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %239, i32 0, i32 4
  %241 = load i64, i64* %240, align 8
  %242 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %235, i64 %241)
  %243 = load i32*, i32** %17, align 8
  %244 = icmp ne i32* %243, null
  br i1 %244, label %245, label %283

245:                                              ; preds = %234
  %246 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %247 = load i32, i32* %20, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %246, i64 %248
  %250 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %249, i32 0, i32 7
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %283

253:                                              ; preds = %245
  %254 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %255 = load i32, i32* %20, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %254, i64 %256
  %258 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %257, i32 0, i32 4
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %261 = load i32, i32* %20, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %260, i64 %262
  %264 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %263, i32 0, i32 5
  %265 = load i64, i64* %264, align 8
  %266 = icmp sgt i64 %259, %265
  br i1 %266, label %267, label %283

267:                                              ; preds = %253
  %268 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %269 = load i32, i32* %20, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %268, i64 %270
  %272 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %271, i32 0, i32 4
  %273 = load i64, i64* %272, align 8
  %274 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %275 = load i32, i32* %20, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %274, i64 %276
  %278 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %277, i32 0, i32 5
  %279 = load i64, i64* %278, align 8
  %280 = sub nsw i64 %273, %279
  %281 = load i32*, i32** %17, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 %280
  store i32* %282, i32** %17, align 8
  br label %283

283:                                              ; preds = %267, %253, %245, %234
  %284 = load i32, i32* %24, align 4
  %285 = add nsw i32 1, %284
  %286 = load i32, i32* %23, align 4
  %287 = add nsw i32 %285, %286
  %288 = load i32*, i32** %22, align 8
  %289 = sext i32 %287 to i64
  %290 = getelementptr inbounds i32, i32* %288, i64 %289
  store i32* %290, i32** %22, align 8
  %291 = load i32, i32* %24, align 4
  %292 = add nsw i32 1, %291
  %293 = load i32, i32* %23, align 4
  %294 = add nsw i32 %292, %293
  %295 = load i32, i32* %21, align 4
  %296 = add nsw i32 %295, %294
  store i32 %296, i32* %21, align 4
  %297 = load i32, i32* %20, align 4
  %298 = load i32, i32* %24, align 4
  %299 = add nsw i32 1, %298
  %300 = load i32, i32* %23, align 4
  %301 = add nsw i32 %299, %300
  %302 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %297, i32 %301)
  br label %337

303:                                              ; preds = %170
  %304 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %305 = load i32, i32* %20, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %304, i64 %306
  %308 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %307, i32 0, i32 6
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %332

311:                                              ; preds = %303
  %312 = call i64 (...) @GetLastError()
  %313 = load i64, i64* @CRYPT_E_ASN1_BADTAG, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %332

315:                                              ; preds = %311
  %316 = load i32, i32* %20, align 4
  %317 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %316)
  %318 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %319 = load i32, i32* %20, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %318, i64 %320
  %322 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %321, i32 0, i32 5
  %323 = load i64, i64* %322, align 8
  %324 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %325 = load i32, i32* %20, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %324, i64 %326
  %328 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %327, i32 0, i32 4
  store i64 %323, i64* %328, align 8
  %329 = load i64, i64* @NOERROR, align 8
  %330 = call i32 @SetLastError(i64 %329)
  %331 = load i32, i32* @TRUE, align 4
  store i32 %331, i32* %19, align 4
  br label %336

332:                                              ; preds = %311, %303
  %333 = load i32, i32* %20, align 4
  %334 = call i64 (...) @GetLastError()
  %335 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %333, i64 %334)
  br label %336

336:                                              ; preds = %332, %315
  br label %337

337:                                              ; preds = %336, %283
  br label %369

338:                                              ; preds = %122
  %339 = load i32, i32* %20, align 4
  %340 = load i32, i32* %24, align 4
  %341 = add nsw i32 1, %340
  %342 = load i32, i32* %23, align 4
  %343 = add nsw i32 %341, %342
  %344 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %339, i32 %343)
  %345 = load i32, i32* %24, align 4
  %346 = add nsw i32 1, %345
  %347 = load i32, i32* %23, align 4
  %348 = add nsw i32 %346, %347
  %349 = load i32*, i32** %22, align 8
  %350 = sext i32 %348 to i64
  %351 = getelementptr inbounds i32, i32* %349, i64 %350
  store i32* %351, i32** %22, align 8
  %352 = load i32, i32* %24, align 4
  %353 = add nsw i32 1, %352
  %354 = load i32, i32* %23, align 4
  %355 = add nsw i32 %353, %354
  %356 = load i32, i32* %21, align 4
  %357 = add nsw i32 %356, %355
  store i32 %357, i32* %21, align 4
  %358 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %359 = load i32, i32* %20, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %358, i64 %360
  %362 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %361, i32 0, i32 5
  %363 = load i64, i64* %362, align 8
  %364 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %365 = load i32, i32* %20, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %364, i64 %366
  %368 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %367, i32 0, i32 4
  store i64 %363, i64* %368, align 8
  br label %369

369:                                              ; preds = %338, %337
  br label %408

370:                                              ; preds = %85
  %371 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %372 = load i32, i32* %20, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %371, i64 %373
  %375 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %374, i32 0, i32 6
  %376 = load i64, i64* %375, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %392

378:                                              ; preds = %370
  %379 = load i32, i32* %20, align 4
  %380 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %379)
  %381 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %382 = load i32, i32* %20, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %381, i64 %383
  %385 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %384, i32 0, i32 5
  %386 = load i64, i64* %385, align 8
  %387 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %388 = load i32, i32* %20, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %387, i64 %389
  %391 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %390, i32 0, i32 4
  store i64 %386, i64* %391, align 8
  br label %407

392:                                              ; preds = %370
  %393 = load i32, i32* %20, align 4
  %394 = load i32*, i32** %22, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 0
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %398 = load i32, i32* %20, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %397, i64 %399
  %401 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 %393, i32 %396, i32 %402)
  %404 = load i64, i64* @CRYPT_E_ASN1_BADTAG, align 8
  %405 = call i32 @SetLastError(i64 %404)
  %406 = load i32, i32* @FALSE, align 4
  store i32 %406, i32* %19, align 4
  br label %407

407:                                              ; preds = %392, %378
  br label %408

408:                                              ; preds = %407, %369
  br label %409

409:                                              ; preds = %408, %56
  br label %439

410:                                              ; preds = %45
  %411 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %412 = load i32, i32* %20, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %411, i64 %413
  %415 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %414, i32 0, i32 6
  %416 = load i64, i64* %415, align 8
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %432

418:                                              ; preds = %410
  %419 = load i32, i32* %20, align 4
  %420 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %419)
  %421 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %422 = load i32, i32* %20, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %421, i64 %423
  %425 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %424, i32 0, i32 5
  %426 = load i64, i64* %425, align 8
  %427 = load %struct.AsnDecodeSequenceItem*, %struct.AsnDecodeSequenceItem** %11, align 8
  %428 = load i32, i32* %20, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %427, i64 %429
  %431 = getelementptr inbounds %struct.AsnDecodeSequenceItem, %struct.AsnDecodeSequenceItem* %430, i32 0, i32 4
  store i64 %426, i64* %431, align 8
  br label %438

432:                                              ; preds = %410
  %433 = load i32, i32* %20, align 4
  %434 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i32 %433)
  %435 = load i64, i64* @CRYPT_E_ASN1_CORRUPT, align 8
  %436 = call i32 @SetLastError(i64 %435)
  %437 = load i32, i32* @FALSE, align 4
  store i32 %437, i32* %19, align 4
  br label %438

438:                                              ; preds = %432, %418
  br label %439

439:                                              ; preds = %438, %409
  br label %440

440:                                              ; preds = %439
  %441 = load i32, i32* %20, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %20, align 4
  br label %36

443:                                              ; preds = %43
  %444 = load i32, i32* %19, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %449

446:                                              ; preds = %443
  %447 = load i32, i32* %21, align 4
  %448 = load i32*, i32** %18, align 8
  store i32 %447, i32* %448, align 4
  br label %449

449:                                              ; preds = %446, %443
  %450 = load i32, i32* %19, align 4
  %451 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %450)
  %452 = load i32, i32* %19, align 4
  ret i32 %452
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @CRYPT_GetLen(i32*, i32, i32*) #1

declare dso_local i32 @GET_LEN_BYTES(i32) #1

declare dso_local i64 @ALIGN_DWORD_PTR(i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @SetLastError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

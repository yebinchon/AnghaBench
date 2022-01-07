; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/pcf/extr_pcfread.c_pcf_get_encodings.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/pcf/extr_pcfread.c_pcf_get_encodings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32* }
%struct.TYPE_15__ = type { i32, i32*, %struct.TYPE_14__, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32* }
%struct.TYPE_13__ = type { i32 }

@PCF_BDF_ENCODINGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"pcf_get_encodings:\0A  format: 0x%lX (%s)\0A\00", align 1
@MSBFirst = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"MSB\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"LSB\00", align 1
@PCF_DEFAULT_FORMAT = common dso_local global i32 0, align 4
@Invalid_File_Format = common dso_local global i32 0, align 4
@pcf_enc_msb_header = common dso_local global i32 0, align 4
@pcf_enc_header = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [80 x i8] c"  firstCol 0x%X, lastCol 0x%X\0A  firstRow 0x%X, lastRow 0x%X\0A  defaultChar 0x%X\0A\00", align 1
@Invalid_Table = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"pcf_get_encodings: Invalid default character set to %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [79 x i8] c"pcf_get_encodings: Invalid glyph index for default character, setting to zero\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*, %struct.TYPE_15__*)* @pcf_get_encodings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pcf_get_encodings(%struct.TYPE_17__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = call %struct.TYPE_13__* @FT_FACE(%struct.TYPE_15__* %21)
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 3
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %10, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PCF_BDF_ENCODINGS, align 4
  %37 = call i64 @pcf_seek_to_table_type(%struct.TYPE_17__* %27, i32 %31, i32 %35, i32 %36, i32* %8, i32* %9)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  br label %361

41:                                               ; preds = %2
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @FT_READ_ULONG_LE(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %361

46:                                               ; preds = %41
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @PCF_BYTE_ORDER(i32 %48)
  %50 = load i64, i64* @MSBFirst, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %54 = call i32 @FT_TRACE4(i8* %53)
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @PCF_DEFAULT_FORMAT, align 4
  %57 = call i32 @PCF_FORMAT_MATCH(i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %46
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @PCF_BDF_ENCODINGS, align 4
  %62 = call i32 @PCF_FORMAT_MATCH(i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @Invalid_File_Format, align 4
  %66 = call i64 @FT_THROW(i32 %65)
  store i64 %66, i64* %3, align 8
  br label %363

67:                                               ; preds = %59, %46
  %68 = load i32, i32* %8, align 4
  %69 = call i64 @PCF_BYTE_ORDER(i32 %68)
  %70 = load i64, i64* @MSBFirst, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load i32, i32* @pcf_enc_msb_header, align 4
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %75 = call i64 @FT_STREAM_READ_FIELDS(i32 %73, %struct.TYPE_16__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %361

78:                                               ; preds = %72
  br label %86

79:                                               ; preds = %67
  %80 = load i32, i32* @pcf_enc_header, align 4
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %82 = call i64 @FT_STREAM_READ_FIELDS(i32 %80, %struct.TYPE_16__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %361

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85, %78
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i8*
  %104 = call i32 @FT_TRACE4(i8* %103)
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp sgt i32 %107, %110
  br i1 %111, label %130, label %112

112:                                              ; preds = %86
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp sgt i32 %115, 255
  br i1 %116, label %130, label %117

117:                                              ; preds = %112
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = icmp sgt i32 %120, %123
  br i1 %124, label %130, label %125

125:                                              ; preds = %117
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = icmp sgt i32 %128, 255
  br i1 %129, label %130, label %133

130:                                              ; preds = %125, %117, %112, %86
  %131 = load i32, i32* @Invalid_Table, align 4
  %132 = call i64 @FT_THROW(i32 %131)
  store i64 %132, i64* %3, align 8
  br label %363

133:                                              ; preds = %125
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %136, %139
  %141 = add nsw i32 %140, 1
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = sub nsw i32 %144, %147
  %149 = add nsw i32 %148, 1
  %150 = mul nsw i32 %141, %149
  store i32 %150, i32* %11, align 4
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 5
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = call i64 @FT_NEW_ARRAY(i32* %153, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %133
  br label %361

158:                                              ; preds = %133
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %160 = load i32, i32* %11, align 4
  %161 = mul nsw i32 2, %160
  %162 = call i64 @FT_Stream_EnterFrame(%struct.TYPE_17__* %159, i32 %161)
  store i64 %162, i64* %6, align 8
  %163 = load i64, i64* %6, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  br label %356

166:                                              ; preds = %158
  %167 = call i32 @FT_TRACE5(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = ashr i32 %170, 8
  store i32 %171, i32* %13, align 4
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = and i32 %174, 255
  store i32 %175, i32* %14, align 4
  %176 = load i32, i32* %13, align 4
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %199, label %181

181:                                              ; preds = %166
  %182 = load i32, i32* %13, align 4
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = icmp sgt i32 %182, %185
  br i1 %186, label %199, label %187

187:                                              ; preds = %181
  %188 = load i32, i32* %14, align 4
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp slt i32 %188, %191
  br i1 %192, label %199, label %193

193:                                              ; preds = %187
  %194 = load i32, i32* %14, align 4
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp sgt i32 %194, %197
  br i1 %198, label %199, label %222

199:                                              ; preds = %193, %187, %181, %166
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = mul i32 %202, 256
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = add i32 %203, %206
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 4
  store i32 %207, i32* %209, align 8
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  %213 = sext i32 %212 to i64
  %214 = inttoptr i64 %213 to i8*
  %215 = call i32 @FT_TRACE0(i8* %214)
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  store i32 %218, i32* %13, align 4
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  store i32 %221, i32* %14, align 4
  br label %222

222:                                              ; preds = %199, %193
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %13, align 4
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = sub nsw i32 %226, %229
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = sub nsw i32 %233, %236
  %238 = add nsw i32 %237, 1
  %239 = mul nsw i32 %230, %238
  %240 = load i32, i32* %14, align 4
  %241 = add nsw i32 %239, %240
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = sub nsw i32 %241, %244
  %246 = mul nsw i32 2, %245
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %225, i64 %247
  store i32* %248, i32** %19, align 8
  %249 = load i32, i32* %8, align 4
  %250 = call i64 @PCF_BYTE_ORDER(i32 %249)
  %251 = load i64, i64* @MSBFirst, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %222
  %254 = load i32*, i32** %19, align 8
  %255 = call i32 @FT_PEEK_USHORT(i32* %254)
  store i32 %255, i32* %16, align 4
  br label %259

256:                                              ; preds = %222
  %257 = load i32*, i32** %19, align 8
  %258 = call i32 @FT_PEEK_USHORT_LE(i32* %257)
  store i32 %258, i32* %16, align 4
  br label %259

259:                                              ; preds = %256, %253
  %260 = load i32, i32* %16, align 4
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp sge i32 %260, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %259
  %266 = call i32 @FT_TRACE0(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %267

267:                                              ; preds = %265, %259
  %268 = load i32, i32* %16, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %294

270:                                              ; preds = %267
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %16, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = load i32, i32* %276, align 4
  store i32 %277, i32* %20, align 4
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 1
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 0
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 1
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %16, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  store i32 %282, i32* %288, align 4
  %289 = load i32, i32* %20, align 4
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 1
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 0
  store i32 %289, i32* %293, align 4
  br label %294

294:                                              ; preds = %270, %267
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 5
  %297 = load i32*, i32** %296, align 8
  store i32* %297, i32** %12, align 8
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  store i32 %300, i32* %17, align 4
  br label %301

301:                                              ; preds = %349, %294
  %302 = load i32, i32* %17, align 4
  %303 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = icmp sle i32 %302, %305
  br i1 %306, label %307, label %352

307:                                              ; preds = %301
  %308 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  store i32 %310, i32* %18, align 4
  br label %311

311:                                              ; preds = %345, %307
  %312 = load i32, i32* %18, align 4
  %313 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = icmp sle i32 %312, %315
  br i1 %316, label %317, label %348

317:                                              ; preds = %311
  %318 = load i32, i32* %8, align 4
  %319 = call i64 @PCF_BYTE_ORDER(i32 %318)
  %320 = load i64, i64* @MSBFirst, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %322, label %324

322:                                              ; preds = %317
  %323 = call i32 (...) @FT_GET_USHORT()
  store i32 %323, i32* %15, align 4
  br label %326

324:                                              ; preds = %317
  %325 = call i32 (...) @FT_GET_USHORT_LE()
  store i32 %325, i32* %15, align 4
  br label %326

326:                                              ; preds = %324, %322
  %327 = load i32, i32* %15, align 4
  %328 = icmp ne i32 %327, 65535
  br i1 %328, label %329, label %341

329:                                              ; preds = %326
  %330 = load i32, i32* %15, align 4
  %331 = load i32, i32* %16, align 4
  %332 = icmp eq i32 %330, %331
  br i1 %332, label %333, label %334

333:                                              ; preds = %329
  store i32 0, i32* %15, align 4
  br label %340

334:                                              ; preds = %329
  %335 = load i32, i32* %15, align 4
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %334
  %338 = load i32, i32* %16, align 4
  store i32 %338, i32* %15, align 4
  br label %339

339:                                              ; preds = %337, %334
  br label %340

340:                                              ; preds = %339, %333
  br label %341

341:                                              ; preds = %340, %326
  %342 = load i32, i32* %15, align 4
  %343 = load i32*, i32** %12, align 8
  %344 = getelementptr inbounds i32, i32* %343, i32 1
  store i32* %344, i32** %12, align 8
  store i32 %342, i32* %343, align 4
  br label %345

345:                                              ; preds = %341
  %346 = load i32, i32* %18, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %18, align 4
  br label %311

348:                                              ; preds = %311
  br label %349

349:                                              ; preds = %348
  %350 = load i32, i32* %17, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %17, align 4
  br label %301

352:                                              ; preds = %301
  %353 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %354 = call i32 @FT_Stream_ExitFrame(%struct.TYPE_17__* %353)
  %355 = load i64, i64* %6, align 8
  store i64 %355, i64* %3, align 8
  br label %363

356:                                              ; preds = %165
  %357 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %358 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %357, i32 0, i32 5
  %359 = load i32*, i32** %358, align 8
  %360 = call i32 @FT_FREE(i32* %359)
  br label %361

361:                                              ; preds = %356, %157, %84, %77, %45, %40
  %362 = load i64, i64* %6, align 8
  store i64 %362, i64* %3, align 8
  br label %363

363:                                              ; preds = %361, %352, %130, %64
  %364 = load i64, i64* %3, align 8
  ret i64 %364
}

declare dso_local %struct.TYPE_13__* @FT_FACE(%struct.TYPE_15__*) #1

declare dso_local i64 @pcf_seek_to_table_type(%struct.TYPE_17__*, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @FT_READ_ULONG_LE(i32) #1

declare dso_local i32 @FT_TRACE4(i8*) #1

declare dso_local i64 @PCF_BYTE_ORDER(i32) #1

declare dso_local i32 @PCF_FORMAT_MATCH(i32, i32) #1

declare dso_local i64 @FT_THROW(i32) #1

declare dso_local i64 @FT_STREAM_READ_FIELDS(i32, %struct.TYPE_16__*) #1

declare dso_local i64 @FT_NEW_ARRAY(i32*, i32) #1

declare dso_local i64 @FT_Stream_EnterFrame(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @FT_TRACE5(i8*) #1

declare dso_local i32 @FT_TRACE0(i8*) #1

declare dso_local i32 @FT_PEEK_USHORT(i32*) #1

declare dso_local i32 @FT_PEEK_USHORT_LE(i32*) #1

declare dso_local i32 @FT_GET_USHORT(...) #1

declare dso_local i32 @FT_GET_USHORT_LE(...) #1

declare dso_local i32 @FT_Stream_ExitFrame(%struct.TYPE_17__*) #1

declare dso_local i32 @FT_FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

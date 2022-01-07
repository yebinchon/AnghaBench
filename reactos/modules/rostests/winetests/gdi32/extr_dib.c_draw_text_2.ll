; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_dib.c_draw_text_2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_dib.c_draw_text_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i64, i64, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32 }

@draw_text_2.identity = internal constant %struct.TYPE_32__ { %struct.TYPE_27__ { i32 0, i32 1 }, %struct.TYPE_26__ zeroinitializer, %struct.TYPE_25__ zeroinitializer, %struct.TYPE_24__ { i32 0, i32 1 } }, align 4
@draw_text_2.str = internal constant [11 x i8] c"Hello Wine\00", align 1
@draw_text_2.vals = internal constant [4 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"Tahoma\00", align 1
@ANTIALIASED_QUALITY = common dso_local global i32 0, align 4
@NONANTIALIASED_QUALITY = common dso_local global i32 0, align 4
@TMPF_VECTOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"skipping as a bitmap font has been selected for Tahoma.\0A\00", align 1
@TA_BASELINE = common dso_local global i32 0, align 4
@TRANSPARENT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@GGO_GRAY4_BITMAP = common dso_local global i32 0, align 4
@GGO_BITMAP = common dso_local global i32 0, align 4
@GDI_ERROR = common dso_local global i32 0, align 4
@masks = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"hash mismatch - aa %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_23__*, i32*, i32)* @draw_text_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_text_2(i32 %0, %struct.TYPE_23__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_22__, align 8
  %14 = alloca [10000 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_31__, align 4
  %22 = alloca %struct.TYPE_31__, align 4
  %23 = alloca %struct.TYPE_30__, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %30 = call i32 @get_dib_size(%struct.TYPE_23__* %29)
  store i32 %30, i32* %9, align 4
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i32 0, i32* %15, align 4
  br label %31

31:                                               ; preds = %45, %4
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load i32, i32* %15, align 4
  %37 = srem i32 %36, 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* @draw_text_2.vals, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %15, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %15, align 4
  br label %31

48:                                               ; preds = %31
  %49 = call i32 @memset(%struct.TYPE_21__* %11, i32 0, i32 12)
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @strcpy(i32 %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  store i32 24, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @ANTIALIASED_QUALITY, align 4
  br label %60

58:                                               ; preds = %48
  %59 = load i32, i32* @NONANTIALIASED_QUALITY, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = call i32 @CreateFontIndirectA(%struct.TYPE_21__* %11)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @SelectObject(i32 %64, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @GetTextMetricsA(i32 %67, %struct.TYPE_30__* %23)
  %69 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %23, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @TMPF_VECTOR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %60
  %75 = call i32 @skip(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @SelectObject(i32 %76, i32 %77)
  %79 = call i32 @DeleteObject(i32 %78)
  br label %365

80:                                               ; preds = %60
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @RGB(i32 255, i32 0, i32 0)
  %83 = call i32 @SetTextColor(i32 %81, i32 %82)
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @TA_BASELINE, align 4
  %86 = call i32 @SetTextAlign(i32 %84, i32 %85)
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @TRANSPARENT, align 4
  %89 = call i32 @SetBkMode(i32 %87, i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %21, i32 0, i32 0
  store i32 10, i32* %90, align 4
  %91 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %21, i32 0, i32 1
  store i32 100, i32* %91, align 4
  %92 = load i32, i32* %5, align 4
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %21, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %21, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @draw_text_2.str, i64 0, i64 0))
  %98 = call i32 @ExtTextOutA(i32 %92, i32 %94, i32 %96, i32 0, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @draw_text_2.str, i64 0, i64 0), i32 %97, i32* null)
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = call i8* @hash_dib(%struct.TYPE_23__* %99, i32* %100)
  store i8* %101, i8** %19, align 8
  store i32 0, i32* %15, align 4
  br label %102

102:                                              ; preds = %116, %80
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %102
  %107 = load i32, i32* %15, align 4
  %108 = srem i32 %107, 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* @draw_text_2.vals, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %111, i32* %115, align 4
  br label %116

116:                                              ; preds = %106
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %15, align 4
  br label %102

119:                                              ; preds = %102
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp sle i32 %123, 8
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i32, i32* @FALSE, align 4
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %125, %119
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @GetTextColor(i32 %128)
  store i32 %129, i32* %24, align 4
  store i32 0, i32* %15, align 4
  br label %130

130:                                              ; preds = %339, %127
  %131 = load i32, i32* %15, align 4
  %132 = call i32 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @draw_text_2.str, i64 0, i64 0))
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %342

134:                                              ; preds = %130
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = load i32, i32* @GGO_GRAY4_BITMAP, align 4
  br label %141

139:                                              ; preds = %134
  %140 = load i32, i32* @GGO_BITMAP, align 4
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi i32 [ %138, %137 ], [ %140, %139 ]
  store i32 %142, i32* %25, align 4
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [11 x i8], [11 x i8]* @draw_text_2.str, i64 0, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = load i32, i32* %25, align 4
  %149 = call i32 @GetGlyphOutlineA(i32 %143, i8 signext %147, i32 %148, %struct.TYPE_22__* %13, i32 0, i32* null, %struct.TYPE_32__* @draw_text_2.identity)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* @GDI_ERROR, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %141
  br label %339

154:                                              ; preds = %141
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %154
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* %15, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [11 x i8], [11 x i8]* @draw_text_2.str, i64 0, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = load i32, i32* %25, align 4
  %164 = getelementptr inbounds [10000 x i32], [10000 x i32]* %14, i64 0, i64 0
  %165 = call i32 @GetGlyphOutlineA(i32 %158, i8 signext %162, i32 %163, %struct.TYPE_22__* %13, i32 40000, i32* %164, %struct.TYPE_32__* @draw_text_2.identity)
  br label %166

166:                                              ; preds = %157, %154
  %167 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %21, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %168, %171
  %173 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %22, i32 0, i32 0
  store i32 %172, i32* %173, align 4
  %174 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %21, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 %175, %178
  %180 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %22, i32 0, i32 1
  store i32 %179, i32* %180, align 4
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %21, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %185, %182
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %183, align 4
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %21, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %192, %189
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %190, align 4
  %195 = load i32, i32* %10, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %166
  br label %339

198:                                              ; preds = %166
  %199 = load i32, i32* %8, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %279

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 %203, 3
  %205 = and i32 %204, -4
  store i32 %205, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %206

206:                                              ; preds = %275, %201
  %207 = load i32, i32* %18, align 4
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp slt i32 %207, %209
  br i1 %210, label %211, label %278

211:                                              ; preds = %206
  %212 = getelementptr inbounds [10000 x i32], [10000 x i32]* %14, i64 0, i64 0
  %213 = load i32, i32* %18, align 4
  %214 = load i32, i32* %16, align 4
  %215 = mul nsw i32 %213, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %212, i64 %216
  store i32* %217, i32** %26, align 8
  store i32 0, i32* %17, align 4
  br label %218

218:                                              ; preds = %271, %211
  %219 = load i32, i32* %17, align 4
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp slt i32 %219, %221
  br i1 %222, label %223, label %274

223:                                              ; preds = %218
  %224 = load i32*, i32** %26, align 8
  %225 = load i32, i32* %17, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = icmp sle i32 %228, 1
  br i1 %229, label %230, label %231

230:                                              ; preds = %223
  br label %271

231:                                              ; preds = %223
  %232 = load i32*, i32** %26, align 8
  %233 = load i32, i32* %17, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = icmp sge i32 %236, 16
  br i1 %237, label %238, label %240

238:                                              ; preds = %231
  %239 = load i32, i32* %24, align 4
  store i32 %239, i32* %27, align 4
  br label %259

240:                                              ; preds = %231
  %241 = load i32, i32* %5, align 4
  %242 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %22, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %17, align 4
  %245 = add nsw i32 %243, %244
  %246 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %22, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %18, align 4
  %249 = add nsw i32 %247, %248
  %250 = call i32 @GetPixel(i32 %241, i32 %245, i32 %249)
  store i32 %250, i32* %27, align 4
  %251 = load i32, i32* %27, align 4
  %252 = load i32, i32* %24, align 4
  %253 = load i32*, i32** %26, align 8
  %254 = load i32, i32* %17, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @aa_colorref(i32 %251, i32 %252, i32 %257)
  store i32 %258, i32* %27, align 4
  br label %259

259:                                              ; preds = %240, %238
  %260 = load i32, i32* %5, align 4
  %261 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %22, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %17, align 4
  %264 = add nsw i32 %262, %263
  %265 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %22, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %18, align 4
  %268 = add nsw i32 %266, %267
  %269 = load i32, i32* %27, align 4
  %270 = call i32 @SetPixel(i32 %260, i32 %264, i32 %268, i32 %269)
  br label %271

271:                                              ; preds = %259, %230
  %272 = load i32, i32* %17, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %17, align 4
  br label %218

274:                                              ; preds = %218
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %18, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %18, align 4
  br label %206

278:                                              ; preds = %206
  br label %338

279:                                              ; preds = %198
  %280 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = add nsw i32 %281, 31
  %283 = ashr i32 %282, 3
  %284 = and i32 %283, -4
  store i32 %284, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %285

285:                                              ; preds = %334, %279
  %286 = load i32, i32* %18, align 4
  %287 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = icmp slt i32 %286, %288
  br i1 %289, label %290, label %337

290:                                              ; preds = %285
  %291 = getelementptr inbounds [10000 x i32], [10000 x i32]* %14, i64 0, i64 0
  %292 = load i32, i32* %18, align 4
  %293 = load i32, i32* %16, align 4
  %294 = mul nsw i32 %292, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %291, i64 %295
  store i32* %296, i32** %28, align 8
  store i32 0, i32* %17, align 4
  br label %297

297:                                              ; preds = %330, %290
  %298 = load i32, i32* %17, align 4
  %299 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = icmp slt i32 %298, %300
  br i1 %301, label %302, label %333

302:                                              ; preds = %297
  %303 = load i32*, i32** %28, align 8
  %304 = load i32, i32* %17, align 4
  %305 = sdiv i32 %304, 8
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %303, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = load i32*, i32** @masks, align 8
  %310 = load i32, i32* %17, align 4
  %311 = srem i32 %310, 8
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %309, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = and i32 %308, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %329

317:                                              ; preds = %302
  %318 = load i32, i32* %5, align 4
  %319 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %22, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* %17, align 4
  %322 = add nsw i32 %320, %321
  %323 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %22, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* %18, align 4
  %326 = add nsw i32 %324, %325
  %327 = load i32, i32* %24, align 4
  %328 = call i32 @SetPixel(i32 %318, i32 %322, i32 %326, i32 %327)
  br label %329

329:                                              ; preds = %317, %302
  br label %330

330:                                              ; preds = %329
  %331 = load i32, i32* %17, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %17, align 4
  br label %297

333:                                              ; preds = %297
  br label %334

334:                                              ; preds = %333
  %335 = load i32, i32* %18, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %18, align 4
  br label %285

337:                                              ; preds = %285
  br label %338

338:                                              ; preds = %337, %278
  br label %339

339:                                              ; preds = %338, %197, %153
  %340 = load i32, i32* %15, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %15, align 4
  br label %130

342:                                              ; preds = %130
  %343 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %344 = load i32*, i32** %7, align 8
  %345 = call i8* @hash_dib(%struct.TYPE_23__* %343, i32* %344)
  store i8* %345, i8** %20, align 8
  %346 = load i8*, i8** %19, align 8
  %347 = load i8*, i8** %20, align 8
  %348 = call i32 @strcmp(i8* %346, i8* %347)
  %349 = icmp ne i32 %348, 0
  %350 = xor i1 %349, true
  %351 = zext i1 %350 to i32
  %352 = load i32, i32* %8, align 4
  %353 = call i32 @ok(i32 %351, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %352)
  %354 = call i32 (...) @GetProcessHeap()
  %355 = load i8*, i8** %20, align 8
  %356 = call i32 @HeapFree(i32 %354, i32 0, i8* %355)
  %357 = call i32 (...) @GetProcessHeap()
  %358 = load i8*, i8** %19, align 8
  %359 = call i32 @HeapFree(i32 %357, i32 0, i8* %358)
  %360 = load i32, i32* %5, align 4
  %361 = load i32, i32* %12, align 4
  %362 = call i32 @SelectObject(i32 %360, i32 %361)
  store i32 %362, i32* %12, align 4
  %363 = load i32, i32* %12, align 4
  %364 = call i32 @DeleteObject(i32 %363)
  br label %365

365:                                              ; preds = %342, %74
  ret void
}

declare dso_local i32 @get_dib_size(%struct.TYPE_23__*) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @CreateFontIndirectA(%struct.TYPE_21__*) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @GetTextMetricsA(i32, %struct.TYPE_30__*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @SetTextAlign(i32, i32) #1

declare dso_local i32 @SetBkMode(i32, i32) #1

declare dso_local i32 @ExtTextOutA(i32, i32, i32, i32, i32*, i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @hash_dib(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @GetTextColor(i32) #1

declare dso_local i32 @GetGlyphOutlineA(i32, i8 signext, i32, %struct.TYPE_22__*, i32, i32*, %struct.TYPE_32__*) #1

declare dso_local i32 @GetPixel(i32, i32, i32) #1

declare dso_local i32 @aa_colorref(i32, i32, i32) #1

declare dso_local i32 @SetPixel(i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

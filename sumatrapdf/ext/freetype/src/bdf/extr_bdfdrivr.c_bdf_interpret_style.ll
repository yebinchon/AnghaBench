; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/bdf/extr_bdfdrivr.c_bdf_interpret_style.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/bdf/extr_bdfdrivr.c_bdf_interpret_style.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i8*, i32, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }

@FT_Err_Ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"SLANT\00", align 1
@BDF_ATOM = common dso_local global i64 0, align 8
@FT_STYLE_FLAG_ITALIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Oblique\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Italic\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"WEIGHT_NAME\00", align 1
@FT_STYLE_FLAG_BOLD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"Bold\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"SETWIDTH_NAME\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"ADD_STYLE_NAME\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Regular\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @bdf_interpret_style to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdf_interpret_style(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca [4 x i8*], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [4 x i64], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %16 = load i32, i32* @FT_Err_Ok, align 4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = call %struct.TYPE_11__* @FT_FACE(%struct.TYPE_12__* %17)
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %5, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %7, align 8
  %25 = bitcast [4 x i8*]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 32, i1 false)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  store i32 0, i32* %27, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call %struct.TYPE_10__* @bdf_get_font_property(i32* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %8, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %31 = icmp ne %struct.TYPE_10__* %30, null
  br i1 %31, label %32, label %102

32:                                               ; preds = %1
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BDF_ATOM, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %102

38:                                               ; preds = %32
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %102

44:                                               ; preds = %38
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 79
  br i1 %51, label %76, label %52

52:                                               ; preds = %44
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 111
  br i1 %59, label %76, label %60

60:                                               ; preds = %52
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 73
  br i1 %67, label %76, label %68

68:                                               ; preds = %60
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 105
  br i1 %75, label %76, label %102

76:                                               ; preds = %68, %60, %52, %44
  %77 = load i32, i32* @FT_STYLE_FLAG_ITALIC, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 79
  br i1 %88, label %97, label %89

89:                                               ; preds = %76
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 111
  br label %97

97:                                               ; preds = %89, %76
  %98 = phi i1 [ true, %76 ], [ %96, %89 ]
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %101 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 2
  store i8* %100, i8** %101, align 16
  br label %102

102:                                              ; preds = %97, %68, %38, %32, %1
  %103 = load i32*, i32** %7, align 8
  %104 = call %struct.TYPE_10__* @bdf_get_font_property(i32* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_10__* %104, %struct.TYPE_10__** %8, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %106 = icmp ne %struct.TYPE_10__* %105, null
  br i1 %106, label %107, label %142

107:                                              ; preds = %102
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @BDF_ATOM, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %142

113:                                              ; preds = %107
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %142

119:                                              ; preds = %113
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 66
  br i1 %126, label %135, label %127

127:                                              ; preds = %119
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 98
  br i1 %134, label %135, label %142

135:                                              ; preds = %127, %119
  %136 = load i32, i32* @FT_STYLE_FLAG_BOLD, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  %141 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %141, align 8
  br label %142

142:                                              ; preds = %135, %127, %113, %107, %102
  %143 = load i32*, i32** %7, align 8
  %144 = call %struct.TYPE_10__* @bdf_get_font_property(i32* %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_10__* %144, %struct.TYPE_10__** %8, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %146 = icmp ne %struct.TYPE_10__* %145, null
  br i1 %146, label %147, label %189

147:                                              ; preds = %142
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @BDF_ATOM, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %189

153:                                              ; preds = %147
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %189

159:                                              ; preds = %153
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %189

167:                                              ; preds = %159
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 78
  br i1 %174, label %189, label %175

175:                                              ; preds = %167
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 110
  br i1 %182, label %189, label %183

183:                                              ; preds = %175
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 3
  store i8* %187, i8** %188, align 8
  br label %189

189:                                              ; preds = %183, %175, %167, %159, %153, %147, %142
  %190 = load i32*, i32** %7, align 8
  %191 = call %struct.TYPE_10__* @bdf_get_font_property(i32* %190, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  store %struct.TYPE_10__* %191, %struct.TYPE_10__** %8, align 8
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %193 = icmp ne %struct.TYPE_10__* %192, null
  br i1 %193, label %194, label %236

194:                                              ; preds = %189
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @BDF_ATOM, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %236

200:                                              ; preds = %194
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %236

206:                                              ; preds = %200
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %236

214:                                              ; preds = %206
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp eq i32 %220, 78
  br i1 %221, label %236, label %222

222:                                              ; preds = %214
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp eq i32 %228, 110
  br i1 %229, label %236, label %230

230:                                              ; preds = %222
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 0
  store i8* %234, i8** %235, align 16
  br label %236

236:                                              ; preds = %230, %222, %214, %206, %200, %194, %189
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %237

237:                                              ; preds = %261, %236
  %238 = load i64, i64* %10, align 8
  %239 = icmp ult i64 %238, 4
  br i1 %239, label %240, label %264

240:                                              ; preds = %237
  %241 = load i64, i64* %10, align 8
  %242 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 %241
  store i64 0, i64* %242, align 8
  %243 = load i64, i64* %10, align 8
  %244 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 %243
  %245 = load i8*, i8** %244, align 8
  %246 = icmp ne i8* %245, null
  br i1 %246, label %247, label %260

247:                                              ; preds = %240
  %248 = load i64, i64* %10, align 8
  %249 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 %248
  %250 = load i8*, i8** %249, align 8
  %251 = call i64 @ft_strlen(i8* %250)
  %252 = load i64, i64* %10, align 8
  %253 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 %252
  store i64 %251, i64* %253, align 8
  %254 = load i64, i64* %10, align 8
  %255 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 %254
  %256 = load i64, i64* %255, align 8
  %257 = add i64 %256, 1
  %258 = load i64, i64* %11, align 8
  %259 = add i64 %258, %257
  store i64 %259, i64* %11, align 8
  br label %260

260:                                              ; preds = %247, %240
  br label %261

261:                                              ; preds = %260
  %262 = load i64, i64* %10, align 8
  %263 = add i64 %262, 1
  store i64 %263, i64* %10, align 8
  br label %237

264:                                              ; preds = %237
  %265 = load i64, i64* %11, align 8
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %276

267:                                              ; preds = %264
  %268 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %268, align 16
  %269 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 0
  %270 = load i8*, i8** %269, align 16
  %271 = call i64 @ft_strlen(i8* %270)
  %272 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %271, i64* %272, align 16
  %273 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %274 = load i64, i64* %273, align 16
  %275 = add i64 %274, 1
  store i64 %275, i64* %11, align 8
  br label %276

276:                                              ; preds = %267, %264
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 0
  %279 = load i8*, i8** %278, align 8
  %280 = load i64, i64* %11, align 8
  %281 = call i64 @FT_ALLOC(i8* %279, i64 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %276
  %284 = load i32, i32* %4, align 4
  store i32 %284, i32* %2, align 4
  br label %352

285:                                              ; preds = %276
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 0
  %288 = load i8*, i8** %287, align 8
  store i8* %288, i8** %13, align 8
  store i64 0, i64* %10, align 8
  br label %289

289:                                              ; preds = %346, %285
  %290 = load i64, i64* %10, align 8
  %291 = icmp ult i64 %290, 4
  br i1 %291, label %292, label %349

292:                                              ; preds = %289
  %293 = load i64, i64* %10, align 8
  %294 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 %293
  %295 = load i8*, i8** %294, align 8
  store i8* %295, i8** %14, align 8
  %296 = load i64, i64* %10, align 8
  %297 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 %296
  %298 = load i64, i64* %297, align 8
  store i64 %298, i64* %11, align 8
  %299 = load i8*, i8** %14, align 8
  %300 = icmp ne i8* %299, null
  br i1 %300, label %302, label %301

301:                                              ; preds = %292
  br label %346

302:                                              ; preds = %292
  %303 = load i8*, i8** %13, align 8
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = icmp ne i8* %303, %306
  br i1 %307, label %308, label %311

308:                                              ; preds = %302
  %309 = load i8*, i8** %13, align 8
  %310 = getelementptr inbounds i8, i8* %309, i32 1
  store i8* %310, i8** %13, align 8
  store i8 32, i8* %309, align 1
  br label %311

311:                                              ; preds = %308, %302
  %312 = load i8*, i8** %13, align 8
  %313 = load i8*, i8** %14, align 8
  %314 = load i64, i64* %11, align 8
  %315 = call i32 @ft_memcpy(i8* %312, i8* %313, i64 %314)
  %316 = load i64, i64* %10, align 8
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %321, label %318

318:                                              ; preds = %311
  %319 = load i64, i64* %10, align 8
  %320 = icmp eq i64 %319, 3
  br i1 %320, label %321, label %342

321:                                              ; preds = %318, %311
  store i64 0, i64* %15, align 8
  br label %322

322:                                              ; preds = %338, %321
  %323 = load i64, i64* %15, align 8
  %324 = load i64, i64* %11, align 8
  %325 = icmp ult i64 %323, %324
  br i1 %325, label %326, label %341

326:                                              ; preds = %322
  %327 = load i8*, i8** %13, align 8
  %328 = load i64, i64* %15, align 8
  %329 = getelementptr inbounds i8, i8* %327, i64 %328
  %330 = load i8, i8* %329, align 1
  %331 = sext i8 %330 to i32
  %332 = icmp eq i32 %331, 32
  br i1 %332, label %333, label %337

333:                                              ; preds = %326
  %334 = load i8*, i8** %13, align 8
  %335 = load i64, i64* %15, align 8
  %336 = getelementptr inbounds i8, i8* %334, i64 %335
  store i8 45, i8* %336, align 1
  br label %337

337:                                              ; preds = %333, %326
  br label %338

338:                                              ; preds = %337
  %339 = load i64, i64* %15, align 8
  %340 = add i64 %339, 1
  store i64 %340, i64* %15, align 8
  br label %322

341:                                              ; preds = %322
  br label %342

342:                                              ; preds = %341, %318
  %343 = load i64, i64* %11, align 8
  %344 = load i8*, i8** %13, align 8
  %345 = getelementptr inbounds i8, i8* %344, i64 %343
  store i8* %345, i8** %13, align 8
  br label %346

346:                                              ; preds = %342, %301
  %347 = load i64, i64* %10, align 8
  %348 = add i64 %347, 1
  store i64 %348, i64* %10, align 8
  br label %289

349:                                              ; preds = %289
  %350 = load i8*, i8** %13, align 8
  store i8 0, i8* %350, align 1
  %351 = load i32, i32* %4, align 4
  store i32 %351, i32* %2, align 4
  br label %352

352:                                              ; preds = %349, %283
  %353 = load i32, i32* %2, align 4
  ret i32 %353
}

declare dso_local %struct.TYPE_11__* @FT_FACE(%struct.TYPE_12__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.TYPE_10__* @bdf_get_font_property(i32*, i8*) #1

declare dso_local i64 @ft_strlen(i8*) #1

declare dso_local i64 @FT_ALLOC(i8*, i64) #1

declare dso_local i32 @ft_memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckNamedColorList.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckNamedColorList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsMAX_PATH = common dso_local global i32 0, align 4
@cmsMAXCHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"#%d\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Invalid PCS\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Invalid Colorant\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Invalid Name\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"namedcol.icc\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@cmsSigNamedColor2Tag = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Invalid count\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"#123\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Invalid index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckNamedColorList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckNamedColorList() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [3 x i64], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [3 x i64], align 16
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32 1, i32* %6, align 4
  %16 = load i32, i32* @cmsMAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load i32, i32* @cmsMAXCHANNELS, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i64, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %23 = load i32, i32* @cmsMAX_PATH, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %26 = load i32, i32* @cmsMAXCHANNELS, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i64, i64 %27, align 16
  store i64 %27, i64* %13, align 8
  %29 = call i32 (...) @DbgThread()
  %30 = call i32* @cmsAllocNamedColorList(i32 %29, i32 0, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32* %30, i32** %2, align 8
  %31 = load i32*, i32** %2, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  store i32 1, i32* %15, align 4
  br label %269

34:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %60, %34
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 4096
  br i1 %37, label %38, label %63

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 2
  store i64 %40, i64* %41, align 16
  %42 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 1
  store i64 %40, i64* %42, align 8
  %43 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  store i64 %40, i64* %43, align 16
  %44 = load i32, i32* %4, align 4
  %45 = sub nsw i32 4096, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %22, i64 3
  store i64 %46, i64* %47, align 8
  %48 = getelementptr inbounds i64, i64* %22, i64 2
  store i64 %46, i64* %48, align 16
  %49 = getelementptr inbounds i64, i64* %22, i64 1
  store i64 %46, i64* %49, align 8
  %50 = getelementptr inbounds i64, i64* %22, i64 0
  store i64 %46, i64* %50, align 16
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = call i32 (...) @DbgThread()
  %54 = load i32*, i32** %2, align 8
  %55 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %56 = call i32 @cmsAppendNamedColor(i32 %53, i32* %54, i8* %19, i64* %55, i64* %22)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %63

59:                                               ; preds = %38
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %35

63:                                               ; preds = %58, %35
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %135, %63
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %65, 4096
  br i1 %66, label %67, label %138

67:                                               ; preds = %64
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 2
  store i64 %69, i64* %70, align 16
  %71 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 1
  store i64 %69, i64* %71, align 8
  %72 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  store i64 %69, i64* %72, align 16
  %73 = load i32, i32* %4, align 4
  %74 = sub nsw i32 4096, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %28, i64 3
  store i64 %75, i64* %76, align 8
  %77 = getelementptr inbounds i64, i64* %28, i64 2
  store i64 %75, i64* %77, align 16
  %78 = getelementptr inbounds i64, i64* %28, i64 1
  store i64 %75, i64* %78, align 8
  %79 = getelementptr inbounds i64, i64* %28, i64 0
  store i64 %75, i64* %79, align 16
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = call i32 (...) @DbgThread()
  %83 = load i32*, i32** %2, align 8
  %84 = load i32, i32* %4, align 4
  %85 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %86 = call i32 @cmsNamedColorInfo(i32 %82, i32* %83, i32 %84, i8* %19, i32* null, i32* null, i64* %85, i64* %22)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %67
  store i32 0, i32* %6, align 4
  br label %260

89:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %106, %89
  %91 = load i32, i32* %5, align 4
  %92 = icmp slt i32 %91, 3
  br i1 %92, label %93, label %109

93:                                               ; preds = %90
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %97, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  store i32 0, i32* %6, align 4
  %104 = call i32 @Fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %260

105:                                              ; preds = %93
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %90

109:                                              ; preds = %90
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %126, %109
  %111 = load i32, i32* %5, align 4
  %112 = icmp slt i32 %111, 4
  br i1 %112, label %113, label %129

113:                                              ; preds = %110
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %28, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %22, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %117, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %113
  store i32 0, i32* %6, align 4
  %124 = call i32 @Fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %260

125:                                              ; preds = %113
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %5, align 4
  br label %110

129:                                              ; preds = %110
  %130 = call i64 @strcmp(i8* %19, i8* %25)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  store i32 0, i32* %6, align 4
  %133 = call i32 @Fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %260

134:                                              ; preds = %129
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %4, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %4, align 4
  br label %64

138:                                              ; preds = %64
  %139 = call i32 (...) @DbgThread()
  %140 = call i32* @cmsOpenProfileFromFile(i32 %139, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %140, i32** %14, align 8
  %141 = load i32*, i32** %14, align 8
  %142 = icmp eq i32* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i32 0, i32* %1, align 4
  store i32 1, i32* %15, align 4
  br label %269

144:                                              ; preds = %138
  %145 = call i32 (...) @DbgThread()
  %146 = load i32*, i32** %14, align 8
  %147 = load i32, i32* @cmsSigNamedColor2Tag, align 4
  %148 = load i32*, i32** %2, align 8
  %149 = call i32 @cmsWriteTag(i32 %145, i32* %146, i32 %147, i32* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %144
  store i32 0, i32* %1, align 4
  store i32 1, i32* %15, align 4
  br label %269

152:                                              ; preds = %144
  %153 = call i32 (...) @DbgThread()
  %154 = load i32*, i32** %14, align 8
  %155 = call i32 @cmsCloseProfile(i32 %153, i32* %154)
  %156 = call i32 (...) @DbgThread()
  %157 = load i32*, i32** %2, align 8
  %158 = call i32 @cmsFreeNamedColorList(i32 %156, i32* %157)
  store i32* null, i32** %2, align 8
  %159 = call i32 (...) @DbgThread()
  %160 = call i32* @cmsOpenProfileFromFile(i32 %159, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32* %160, i32** %14, align 8
  %161 = call i32 (...) @DbgThread()
  %162 = load i32*, i32** %14, align 8
  %163 = load i32, i32* @cmsSigNamedColor2Tag, align 4
  %164 = call i64 @cmsReadTag(i32 %161, i32* %162, i32 %163)
  %165 = inttoptr i64 %164 to i32*
  store i32* %165, i32** %3, align 8
  %166 = call i32 (...) @DbgThread()
  %167 = load i32*, i32** %3, align 8
  %168 = call i32 @cmsNamedColorCount(i32 %166, i32* %167)
  %169 = icmp ne i32 %168, 4096
  br i1 %169, label %170, label %172

170:                                              ; preds = %152
  store i32 0, i32* %6, align 4
  %171 = call i32 @Fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %260

172:                                              ; preds = %152
  %173 = call i32 (...) @DbgThread()
  %174 = load i32*, i32** %3, align 8
  %175 = call i32 @cmsNamedColorIndex(i32 %173, i32* %174, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  store i32 %175, i32* %4, align 4
  %176 = load i32, i32* %4, align 4
  %177 = icmp ne i32 %176, 123
  br i1 %177, label %178, label %180

178:                                              ; preds = %172
  store i32 0, i32* %6, align 4
  %179 = call i32 @Fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  br label %260

180:                                              ; preds = %172
  store i32 0, i32* %4, align 4
  br label %181

181:                                              ; preds = %252, %180
  %182 = load i32, i32* %4, align 4
  %183 = icmp slt i32 %182, 4096
  br i1 %183, label %184, label %255

184:                                              ; preds = %181
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 2
  store i64 %186, i64* %187, align 16
  %188 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 1
  store i64 %186, i64* %188, align 8
  %189 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  store i64 %186, i64* %189, align 16
  %190 = load i32, i32* %4, align 4
  %191 = sub nsw i32 4096, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %28, i64 3
  store i64 %192, i64* %193, align 8
  %194 = getelementptr inbounds i64, i64* %28, i64 2
  store i64 %192, i64* %194, align 16
  %195 = getelementptr inbounds i64, i64* %28, i64 1
  store i64 %192, i64* %195, align 8
  %196 = getelementptr inbounds i64, i64* %28, i64 0
  store i64 %192, i64* %196, align 16
  %197 = load i32, i32* %4, align 4
  %198 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %197)
  %199 = call i32 (...) @DbgThread()
  %200 = load i32*, i32** %3, align 8
  %201 = load i32, i32* %4, align 4
  %202 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %203 = call i32 @cmsNamedColorInfo(i32 %199, i32* %200, i32 %201, i8* %19, i32* null, i32* null, i64* %202, i64* %22)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %184
  store i32 0, i32* %6, align 4
  br label %260

206:                                              ; preds = %184
  store i32 0, i32* %5, align 4
  br label %207

207:                                              ; preds = %223, %206
  %208 = load i32, i32* %5, align 4
  %209 = icmp slt i32 %208, 3
  br i1 %209, label %210, label %226

210:                                              ; preds = %207
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %214, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %210
  store i32 0, i32* %6, align 4
  %221 = call i32 @Fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %260

222:                                              ; preds = %210
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %5, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %5, align 4
  br label %207

226:                                              ; preds = %207
  store i32 0, i32* %5, align 4
  br label %227

227:                                              ; preds = %243, %226
  %228 = load i32, i32* %5, align 4
  %229 = icmp slt i32 %228, 4
  br i1 %229, label %230, label %246

230:                                              ; preds = %227
  %231 = load i32, i32* %5, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64, i64* %28, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = load i32, i32* %5, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i64, i64* %22, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %234, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %230
  store i32 0, i32* %6, align 4
  %241 = call i32 @Fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %260

242:                                              ; preds = %230
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %5, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %5, align 4
  br label %227

246:                                              ; preds = %227
  %247 = call i64 @strcmp(i8* %19, i8* %25)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %246
  store i32 0, i32* %6, align 4
  %250 = call i32 @Fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %260

251:                                              ; preds = %246
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %4, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %4, align 4
  br label %181

255:                                              ; preds = %181
  %256 = call i32 (...) @DbgThread()
  %257 = load i32*, i32** %14, align 8
  %258 = call i32 @cmsCloseProfile(i32 %256, i32* %257)
  %259 = call i32 @remove(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %260

260:                                              ; preds = %255, %249, %240, %220, %205, %178, %170, %132, %123, %103, %88
  %261 = load i32*, i32** %2, align 8
  %262 = icmp ne i32* %261, null
  br i1 %262, label %263, label %267

263:                                              ; preds = %260
  %264 = call i32 (...) @DbgThread()
  %265 = load i32*, i32** %2, align 8
  %266 = call i32 @cmsFreeNamedColorList(i32 %264, i32* %265)
  br label %267

267:                                              ; preds = %263, %260
  %268 = load i32, i32* %6, align 4
  store i32 %268, i32* %1, align 4
  store i32 1, i32* %15, align 4
  br label %269

269:                                              ; preds = %267, %151, %143, %33
  %270 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %270)
  %271 = load i32, i32* %1, align 4
  ret i32 %271
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @cmsAllocNamedColorList(i32, i32, i32, i8*, i8*) #2

declare dso_local i32 @DbgThread(...) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @cmsAppendNamedColor(i32, i32*, i8*, i64*, i64*) #2

declare dso_local i32 @cmsNamedColorInfo(i32, i32*, i32, i8*, i32*, i32*, i64*, i64*) #2

declare dso_local i32 @Fail(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32* @cmsOpenProfileFromFile(i32, i8*, i8*) #2

declare dso_local i32 @cmsWriteTag(i32, i32*, i32, i32*) #2

declare dso_local i32 @cmsCloseProfile(i32, i32*) #2

declare dso_local i32 @cmsFreeNamedColorList(i32, i32*) #2

declare dso_local i64 @cmsReadTag(i32, i32*, i32) #2

declare dso_local i32 @cmsNamedColorCount(i32, i32*) #2

declare dso_local i32 @cmsNamedColorIndex(i32, i32*, i8*) #2

declare dso_local i32 @remove(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

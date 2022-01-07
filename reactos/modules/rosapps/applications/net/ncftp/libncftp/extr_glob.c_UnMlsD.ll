; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_UnMlsD.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_UnMlsD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i8*, i8*, i8, i32, i8*, i8*, i8*, i64, i32 }
%struct.TYPE_16__ = type { i64, i8, i32*, i64, i32, i32*, i32*, i32*, i32* }

@rwx = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"   %-8.8s %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"   \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UnMlsD(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca [32 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_16__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = call i32 @InitFileInfoList(%struct.TYPE_15__* %25)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %10, align 8
  br label %30

30:                                               ; preds = %243, %2
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %32 = icmp ne %struct.TYPE_13__* %31, null
  br i1 %32, label %33, label %247

33:                                               ; preds = %30
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %12, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @UnMlsT(i32 %38, %struct.TYPE_12__* %6)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %235

42:                                               ; preds = %33
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %13, align 4
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @strlen(i8* %46)
  store i64 %47, i64* %17, align 8
  %48 = load i64, i64* %17, align 8
  %49 = load i64, i64* %15, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i64, i64* %17, align 8
  store i64 %52, i64* %15, align 8
  br label %53

53:                                               ; preds = %51, %42
  %54 = load i64, i64* %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i64 %54, i64* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32* @StrDup(i8* %57)
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 8
  store i32* %58, i32** %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 7
  store i32* null, i32** %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 6
  store i32* null, i32** %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %53
  br label %73

69:                                               ; preds = %53
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32* @StrDup(i8* %71)
  br label %73

73:                                               ; preds = %69, %68
  %74 = phi i32* [ null, %68 ], [ %72, %69 ]
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 5
  store i32* %74, i32** %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 8
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 4
  store i32 %77, i32* %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 7
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 3
  store i64 %80, i64* %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  %83 = load i8, i8* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  store i8 %83, i8* %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  %86 = load i8, i8* %85, align 8
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  store i8 %86, i8* %87, align 16
  %88 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 1
  store i8 0, i8* %88, align 1
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, -1
  br i1 %91, label %92, label %104

92:                                               ; preds = %73
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 448
  %96 = ashr i32 %95, 6
  store i32 %96, i32* %19, align 4
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 56
  %100 = ashr i32 %99, 3
  store i32 %100, i32* %20, align 4
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 7
  store i32 %103, i32* %21, align 4
  br label %104

104:                                              ; preds = %92, %73
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 4
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %159

111:                                              ; preds = %104
  store i32 0, i32* %21, align 4
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %113 = load i8, i8* %112, align 8
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 100
  br i1 %115, label %116, label %141

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 4
  %118 = load i8*, i8** %117, align 8
  %119 = call i32* @strchr(i8* %118, i8 signext 101)
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* %21, align 4
  %123 = or i32 %122, 1
  store i32 %123, i32* %21, align 4
  br label %124

124:                                              ; preds = %121, %116
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 4
  %126 = load i8*, i8** %125, align 8
  %127 = call i32* @strchr(i8* %126, i8 signext 99)
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* %21, align 4
  %131 = or i32 %130, 2
  store i32 %131, i32* %21, align 4
  br label %132

132:                                              ; preds = %129, %124
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 4
  %134 = load i8*, i8** %133, align 8
  %135 = call i32* @strchr(i8* %134, i8 signext 108)
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* %21, align 4
  %139 = or i32 %138, 4
  store i32 %139, i32* %21, align 4
  br label %140

140:                                              ; preds = %137, %132
  br label %158

141:                                              ; preds = %111
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 4
  %143 = load i8*, i8** %142, align 8
  %144 = call i32* @strchr(i8* %143, i8 signext 119)
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load i32, i32* %21, align 4
  %148 = or i32 %147, 2
  store i32 %148, i32* %21, align 4
  br label %149

149:                                              ; preds = %146, %141
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 4
  %151 = load i8*, i8** %150, align 8
  %152 = call i32* @strchr(i8* %151, i8 signext 114)
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load i32, i32* %21, align 4
  %156 = or i32 %155, 4
  store i32 %156, i32* %21, align 4
  br label %157

157:                                              ; preds = %154, %149
  br label %158

158:                                              ; preds = %157, %140
  br label %159

159:                                              ; preds = %158, %104
  %160 = load i32, i32* %21, align 4
  %161 = icmp ne i32 %160, -1
  br i1 %161, label %162, label %184

162:                                              ; preds = %159
  %163 = load i8**, i8*** @rwx, align 8
  %164 = load i32, i32* %19, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  %167 = load i8*, i8** %166, align 8
  store i8* %167, i8** %22, align 8
  %168 = load i8**, i8*** @rwx, align 8
  %169 = load i32, i32* %20, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %168, i64 %170
  %172 = load i8*, i8** %171, align 8
  store i8* %172, i8** %23, align 8
  %173 = load i8**, i8*** @rwx, align 8
  %174 = load i32, i32* %21, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  %177 = load i8*, i8** %176, align 8
  store i8* %177, i8** %24, align 8
  %178 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %179 = getelementptr inbounds i8, i8* %178, i64 1
  %180 = load i8*, i8** %22, align 8
  %181 = load i8*, i8** %23, align 8
  %182 = load i8*, i8** %24, align 8
  %183 = call i8* (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %179, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %180, i8* %181, i8* %182)
  br label %184

184:                                              ; preds = %162, %159
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 5
  %186 = load i8*, i8** %185, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 0
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %216

191:                                              ; preds = %184
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 6
  %193 = load i8*, i8** %192, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 0
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %191
  %199 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 5
  %201 = load i8*, i8** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 6
  %203 = load i8*, i8** %202, align 8
  %204 = call i8* (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %199, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %201, i8* %203)
  %205 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %206 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %207 = call i32 @STRNCAT(i8* %205, i8* %206)
  br label %215

208:                                              ; preds = %191
  %209 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %210 = call i32 @STRNCAT(i8* %209, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %211 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 5
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @STRNCAT(i8* %211, i8* %213)
  br label %215

215:                                              ; preds = %208, %198
  br label %216

216:                                              ; preds = %215, %184
  %217 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %218 = call i32* @StrDup(i8* %217)
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 2
  store i32* %218, i32** %219, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %232

223:                                              ; preds = %216
  %224 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %225 = call i64 @strlen(i8* %224)
  store i64 %225, i64* %18, align 8
  %226 = load i64, i64* %18, align 8
  %227 = load i64, i64* %16, align 8
  %228 = icmp ugt i64 %226, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %223
  %230 = load i64, i64* %18, align 8
  store i64 %230, i64* %16, align 8
  br label %231

231:                                              ; preds = %229, %223
  br label %232

232:                                              ; preds = %231, %216
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %234 = call i32 @AddFileInfo(%struct.TYPE_15__* %233, %struct.TYPE_16__* %11)
  br label %242

235:                                              ; preds = %33
  %236 = load i32, i32* %9, align 4
  %237 = icmp eq i32 %236, -2
  br i1 %237, label %238, label %241

238:                                              ; preds = %235
  %239 = load i32, i32* %14, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %14, align 4
  br label %241

241:                                              ; preds = %238, %235
  br label %242

242:                                              ; preds = %241, %232
  br label %243

243:                                              ; preds = %242
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %245, align 8
  store %struct.TYPE_13__* %246, %struct.TYPE_13__** %10, align 8
  br label %30

247:                                              ; preds = %30
  %248 = load i64, i64* %15, align 8
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 0
  store i64 %248, i64* %250, align 8
  %251 = load i64, i64* %16, align 8
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 1
  store i64 %251, i64* %253, align 8
  %254 = load i32, i32* %12, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %247
  store i32 0, i32* %3, align 4
  br label %268

257:                                              ; preds = %247
  %258 = load i32, i32* %14, align 4
  %259 = load i32, i32* %13, align 4
  %260 = add nsw i32 %259, %258
  store i32 %260, i32* %13, align 4
  %261 = load i32, i32* %13, align 4
  %262 = icmp sgt i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %257
  %264 = load i32, i32* %13, align 4
  br label %266

265:                                              ; preds = %257
  br label %266

266:                                              ; preds = %265, %263
  %267 = phi i32 [ %264, %263 ], [ -1, %265 ]
  store i32 %267, i32* %3, align 4
  br label %268

268:                                              ; preds = %266, %256
  %269 = load i32, i32* %3, align 4
  ret i32 %269
}

declare dso_local i32 @InitFileInfoList(%struct.TYPE_15__*) #1

declare dso_local i32 @UnMlsT(i32, %struct.TYPE_12__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @StrDup(i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i8* @sprintf(i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @STRNCAT(i8*, i8*) #1

declare dso_local i32 @AddFileInfo(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

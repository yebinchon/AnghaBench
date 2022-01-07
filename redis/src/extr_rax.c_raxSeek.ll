; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rax.c_raxSeek.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rax.c_raxSeek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_23__*, i64, i64, i8*, %struct.TYPE_22__, %struct.TYPE_19__* }
%struct.TYPE_23__ = type { i32*, i32, i64, i64 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_20__**, i64 }
%struct.TYPE_20__ = type { i8*, i32, i64 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_23__* }

@RAX_ITER_JUST_SEEKED = common dso_local global i32 0, align 4
@RAX_ITER_EOF = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"After initial seek: i=%d len=%d key=%.*s\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Seek normal node on mismatch: %.*s\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Compressed mismatch: %.*s\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"No mismatch: %.*s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raxSeek(%struct.TYPE_21__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_20__*, align 8
  %19 = alloca %struct.TYPE_20__*, align 8
  %20 = alloca %struct.TYPE_20__**, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_20__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @RAX_ITER_JUST_SEEKED, align 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load i32, i32* @RAX_ITER_EOF, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 1
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %42, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 62
  br i1 %47, label %48, label %56

48:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 61
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 1, i32* %10, align 4
  br label %55

55:                                               ; preds = %54, %48
  br label %96

56:                                               ; preds = %4
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  store i32 1, i32* %11, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 61
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 1, i32* %10, align 4
  br label %69

69:                                               ; preds = %68, %62
  br label %95

70:                                               ; preds = %56
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 61
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 1, i32* %10, align 4
  br label %94

77:                                               ; preds = %70
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 94
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 1, i32* %13, align 4
  br label %93

84:                                               ; preds = %77
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 36
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 1, i32* %14, align 4
  br label %92

91:                                               ; preds = %84
  store i64 0, i64* @errno, align 8
  store i32 0, i32* %5, align 4
  br label %547

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %92, %83
  br label %94

94:                                               ; preds = %93, %76
  br label %95

95:                                               ; preds = %94, %69
  br label %96

96:                                               ; preds = %95, %55
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 6
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load i32, i32* @RAX_ITER_EOF, align 4
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  store i32 1, i32* %5, align 4
  br label %547

109:                                              ; preds = %96
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %114 = call i32 @raxSeek(%struct.TYPE_21__* %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* null, i64 0)
  store i32 %114, i32* %5, align 4
  br label %547

115:                                              ; preds = %109
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %143

118:                                              ; preds = %115
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 6
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %122, align 8
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 1
  store %struct.TYPE_23__* %123, %struct.TYPE_23__** %125, align 8
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %127 = call i32 @raxSeekGreatest(%struct.TYPE_21__* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %118
  store i32 0, i32* %5, align 4
  br label %547

130:                                              ; preds = %118
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @assert(i64 %135)
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %138, align 8
  %140 = call i8* @raxGetData(%struct.TYPE_23__* %139)
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 4
  store i8* %140, i8** %142, align 8
  store i32 1, i32* %5, align 4
  br label %547

143:                                              ; preds = %115
  store i32 0, i32* %15, align 4
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 6
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %145, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = load i64, i64* %9, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 5
  %153 = call i64 @raxLowWalk(%struct.TYPE_19__* %146, i8* %147, i64 %148, %struct.TYPE_23__** %150, i32* null, i32* %15, %struct.TYPE_22__* %152)
  store i64 %153, i64* %16, align 8
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %143
  store i32 0, i32* %5, align 4
  br label %547

160:                                              ; preds = %143
  %161 = load i32, i32* %10, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %199

163:                                              ; preds = %160
  %164 = load i64, i64* %16, align 8
  %165 = load i64, i64* %9, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %199

167:                                              ; preds = %163
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %167
  %175 = load i32, i32* %15, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %199

177:                                              ; preds = %174, %167
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %199

184:                                              ; preds = %177
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %186 = load i8*, i8** %8, align 8
  %187 = load i64, i64* %9, align 8
  %188 = trunc i64 %187 to i32
  %189 = call i32 @raxIteratorAddChars(%struct.TYPE_21__* %185, i8* %186, i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %184
  store i32 0, i32* %5, align 4
  br label %547

192:                                              ; preds = %184
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %194, align 8
  %196 = call i8* @raxGetData(%struct.TYPE_23__* %195)
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 4
  store i8* %196, i8** %198, align 8
  br label %546

199:                                              ; preds = %177, %174, %163, %160
  %200 = load i32, i32* %11, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %199
  %203 = load i32, i32* %12, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %539

205:                                              ; preds = %202, %199
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 5
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %209, align 8
  %211 = call i32 @raxStackPush(%struct.TYPE_22__* %207, %struct.TYPE_23__* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %205
  store i32 0, i32* %5, align 4
  br label %547

214:                                              ; preds = %205
  store i64 1, i64* %17, align 8
  br label %215

215:                                              ; preds = %280, %214
  %216 = load i64, i64* %17, align 8
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 5
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp ult i64 %216, %220
  br i1 %221, label %222, label %283

222:                                              ; preds = %215
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 5
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %225, align 8
  %227 = load i64, i64* %17, align 8
  %228 = sub i64 %227, 1
  %229 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %226, i64 %228
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %229, align 8
  store %struct.TYPE_20__* %230, %struct.TYPE_20__** %18, align 8
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 5
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %233, align 8
  %235 = load i64, i64* %17, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %234, i64 %235
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %236, align 8
  store %struct.TYPE_20__* %237, %struct.TYPE_20__** %19, align 8
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %254

242:                                              ; preds = %222
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %248 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @raxIteratorAddChars(%struct.TYPE_21__* %243, i8* %246, i32 %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %242
  store i32 0, i32* %5, align 4
  br label %547

253:                                              ; preds = %242
  br label %279

254:                                              ; preds = %222
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %256 = call %struct.TYPE_20__** @raxNodeFirstChildPtr(%struct.TYPE_20__* %255)
  store %struct.TYPE_20__** %256, %struct.TYPE_20__*** %20, align 8
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %257, i32 0, i32 0
  %259 = load i8*, i8** %258, align 8
  store i8* %259, i8** %21, align 8
  br label %260

260:                                              ; preds = %254, %267
  %261 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %20, align 8
  %262 = call i32 @memcpy(%struct.TYPE_20__** %22, %struct.TYPE_20__** %261, i32 8)
  %263 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %265 = icmp eq %struct.TYPE_20__* %263, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %260
  br label %272

267:                                              ; preds = %260
  %268 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %20, align 8
  %269 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %268, i32 1
  store %struct.TYPE_20__** %269, %struct.TYPE_20__*** %20, align 8
  %270 = load i8*, i8** %21, align 8
  %271 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %271, i8** %21, align 8
  br label %260

272:                                              ; preds = %266
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %274 = load i8*, i8** %21, align 8
  %275 = call i32 @raxIteratorAddChars(%struct.TYPE_21__* %273, i8* %274, i32 1)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %278, label %277

277:                                              ; preds = %272
  store i32 0, i32* %5, align 4
  br label %547

278:                                              ; preds = %272
  br label %279

279:                                              ; preds = %278, %253
  br label %280

280:                                              ; preds = %279
  %281 = load i64, i64* %17, align 8
  %282 = add i64 %281, 1
  store i64 %282, i64* %17, align 8
  br label %215

283:                                              ; preds = %215
  %284 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %284, i32 0, i32 5
  %286 = call i32 @raxStackPop(%struct.TYPE_22__* %285)
  %287 = load i64, i64* %16, align 8
  %288 = trunc i64 %287 to i32
  %289 = load i64, i64* %9, align 8
  %290 = trunc i64 %289 to i32
  %291 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %291, i32 0, i32 3
  %293 = load i64, i64* %292, align 8
  %294 = trunc i64 %293 to i32
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %295, i32 0, i32 2
  %297 = load i64, i64* %296, align 8
  %298 = call i32 (i8*, i32, ...) @debugf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %288, i32 %290, i32 %294, i64 %297)
  %299 = load i64, i64* %16, align 8
  %300 = load i64, i64* %9, align 8
  %301 = icmp ne i64 %299, %300
  br i1 %301, label %302, label %354

302:                                              ; preds = %283
  %303 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %303, i32 0, i32 1
  %305 = load %struct.TYPE_23__*, %struct.TYPE_23__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %305, i32 0, i32 3
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %354, label %309

309:                                              ; preds = %302
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %311 = load i8*, i8** %8, align 8
  %312 = load i64, i64* %16, align 8
  %313 = getelementptr inbounds i8, i8* %311, i64 %312
  %314 = call i32 @raxIteratorAddChars(%struct.TYPE_21__* %310, i8* %313, i32 1)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %317, label %316

316:                                              ; preds = %309
  store i32 0, i32* %5, align 4
  br label %547

317:                                              ; preds = %309
  %318 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %318, i32 0, i32 3
  %320 = load i64, i64* %319, align 8
  %321 = trunc i64 %320 to i32
  %322 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %322, i32 0, i32 2
  %324 = load i64, i64* %323, align 8
  %325 = inttoptr i64 %324 to i8*
  %326 = call i32 (i8*, i32, ...) @debugf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %321, i8* %325)
  %327 = load i32, i32* @RAX_ITER_JUST_SEEKED, align 4
  %328 = xor i32 %327, -1
  %329 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = and i32 %331, %328
  store i32 %332, i32* %330, align 8
  %333 = load i32, i32* %11, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %340

335:                                              ; preds = %317
  %336 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %337 = call i32 @raxIteratorPrevStep(%struct.TYPE_21__* %336, i32 1)
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %340, label %339

339:                                              ; preds = %335
  store i32 0, i32* %5, align 4
  br label %547

340:                                              ; preds = %335, %317
  %341 = load i32, i32* %12, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %348

343:                                              ; preds = %340
  %344 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %345 = call i32 @raxIteratorNextStep(%struct.TYPE_21__* %344, i32 1)
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %348, label %347

347:                                              ; preds = %343
  store i32 0, i32* %5, align 4
  br label %547

348:                                              ; preds = %343, %340
  %349 = load i32, i32* @RAX_ITER_JUST_SEEKED, align 4
  %350 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = or i32 %352, %349
  store i32 %353, i32* %351, align 8
  br label %538

354:                                              ; preds = %302, %283
  %355 = load i64, i64* %16, align 8
  %356 = load i64, i64* %9, align 8
  %357 = icmp ne i64 %355, %356
  br i1 %357, label %358, label %478

358:                                              ; preds = %354
  %359 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %360 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %359, i32 0, i32 1
  %361 = load %struct.TYPE_23__*, %struct.TYPE_23__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %361, i32 0, i32 3
  %363 = load i64, i64* %362, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %478

365:                                              ; preds = %358
  %366 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %366, i32 0, i32 3
  %368 = load i64, i64* %367, align 8
  %369 = trunc i64 %368 to i32
  %370 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %370, i32 0, i32 2
  %372 = load i64, i64* %371, align 8
  %373 = inttoptr i64 %372 to i8*
  %374 = call i32 (i8*, i32, ...) @debugf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %369, i8* %373)
  %375 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %376 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %375, i32 0, i32 1
  %377 = load %struct.TYPE_23__*, %struct.TYPE_23__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %377, i32 0, i32 0
  %379 = load i32*, i32** %378, align 8
  %380 = load i32, i32* %15, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %379, i64 %381
  %383 = load i32, i32* %382, align 4
  store i32 %383, i32* %23, align 4
  %384 = load i8*, i8** %8, align 8
  %385 = load i64, i64* %16, align 8
  %386 = getelementptr inbounds i8, i8* %384, i64 %385
  %387 = load i8, i8* %386, align 1
  %388 = zext i8 %387 to i32
  store i32 %388, i32* %24, align 4
  %389 = load i32, i32* @RAX_ITER_JUST_SEEKED, align 4
  %390 = xor i32 %389, -1
  %391 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = and i32 %393, %390
  store i32 %394, i32* %392, align 8
  %395 = load i32, i32* %12, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %430

397:                                              ; preds = %365
  %398 = load i32, i32* %23, align 4
  %399 = load i32, i32* %24, align 4
  %400 = icmp sgt i32 %398, %399
  br i1 %400, label %401, label %407

401:                                              ; preds = %397
  %402 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %403 = call i32 @raxIteratorNextStep(%struct.TYPE_21__* %402, i32 0)
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %406, label %405

405:                                              ; preds = %401
  store i32 0, i32* %5, align 4
  br label %547

406:                                              ; preds = %401
  br label %429

407:                                              ; preds = %397
  %408 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %409 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %410 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %409, i32 0, i32 1
  %411 = load %struct.TYPE_23__*, %struct.TYPE_23__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %411, i32 0, i32 0
  %413 = load i32*, i32** %412, align 8
  %414 = bitcast i32* %413 to i8*
  %415 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %415, i32 0, i32 1
  %417 = load %struct.TYPE_23__*, %struct.TYPE_23__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 8
  %420 = call i32 @raxIteratorAddChars(%struct.TYPE_21__* %408, i8* %414, i32 %419)
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %423, label %422

422:                                              ; preds = %407
  store i32 0, i32* %5, align 4
  br label %547

423:                                              ; preds = %407
  %424 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %425 = call i32 @raxIteratorNextStep(%struct.TYPE_21__* %424, i32 1)
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %428, label %427

427:                                              ; preds = %423
  store i32 0, i32* %5, align 4
  br label %547

428:                                              ; preds = %423
  br label %429

429:                                              ; preds = %428, %406
  br label %430

430:                                              ; preds = %429, %365
  %431 = load i32, i32* %11, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %472

433:                                              ; preds = %430
  %434 = load i32, i32* %23, align 4
  %435 = load i32, i32* %24, align 4
  %436 = icmp slt i32 %434, %435
  br i1 %436, label %437, label %449

437:                                              ; preds = %433
  %438 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %439 = call i32 @raxSeekGreatest(%struct.TYPE_21__* %438)
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %442, label %441

441:                                              ; preds = %437
  store i32 0, i32* %5, align 4
  br label %547

442:                                              ; preds = %437
  %443 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %444 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %443, i32 0, i32 1
  %445 = load %struct.TYPE_23__*, %struct.TYPE_23__** %444, align 8
  %446 = call i8* @raxGetData(%struct.TYPE_23__* %445)
  %447 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %448 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %447, i32 0, i32 4
  store i8* %446, i8** %448, align 8
  br label %471

449:                                              ; preds = %433
  %450 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %451 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %452 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %451, i32 0, i32 1
  %453 = load %struct.TYPE_23__*, %struct.TYPE_23__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %453, i32 0, i32 0
  %455 = load i32*, i32** %454, align 8
  %456 = bitcast i32* %455 to i8*
  %457 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %458 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %457, i32 0, i32 1
  %459 = load %struct.TYPE_23__*, %struct.TYPE_23__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 8
  %462 = call i32 @raxIteratorAddChars(%struct.TYPE_21__* %450, i8* %456, i32 %461)
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %465, label %464

464:                                              ; preds = %449
  store i32 0, i32* %5, align 4
  br label %547

465:                                              ; preds = %449
  %466 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %467 = call i32 @raxIteratorPrevStep(%struct.TYPE_21__* %466, i32 1)
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %470, label %469

469:                                              ; preds = %465
  store i32 0, i32* %5, align 4
  br label %547

470:                                              ; preds = %465
  br label %471

471:                                              ; preds = %470, %442
  br label %472

472:                                              ; preds = %471, %430
  %473 = load i32, i32* @RAX_ITER_JUST_SEEKED, align 4
  %474 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %475 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = or i32 %476, %473
  store i32 %477, i32* %475, align 8
  br label %537

478:                                              ; preds = %358, %354
  %479 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %480 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %479, i32 0, i32 3
  %481 = load i64, i64* %480, align 8
  %482 = trunc i64 %481 to i32
  %483 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %484 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %483, i32 0, i32 2
  %485 = load i64, i64* %484, align 8
  %486 = inttoptr i64 %485 to i8*
  %487 = call i32 (i8*, i32, ...) @debugf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %482, i8* %486)
  %488 = load i32, i32* @RAX_ITER_JUST_SEEKED, align 4
  %489 = xor i32 %488, -1
  %490 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %491 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 8
  %493 = and i32 %492, %489
  store i32 %493, i32* %491, align 8
  %494 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %495 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %494, i32 0, i32 1
  %496 = load %struct.TYPE_23__*, %struct.TYPE_23__** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %496, i32 0, i32 3
  %498 = load i64, i64* %497, align 8
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %500, label %514

500:                                              ; preds = %478
  %501 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %502 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %501, i32 0, i32 1
  %503 = load %struct.TYPE_23__*, %struct.TYPE_23__** %502, align 8
  %504 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %503, i32 0, i32 2
  %505 = load i64, i64* %504, align 8
  %506 = icmp ne i64 %505, 0
  br i1 %506, label %507, label %514

507:                                              ; preds = %500
  %508 = load i32, i32* %15, align 4
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %514

510:                                              ; preds = %507
  %511 = load i32, i32* %11, align 4
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %514

513:                                              ; preds = %510
  br label %531

514:                                              ; preds = %510, %507, %500, %478
  %515 = load i32, i32* %12, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %522

517:                                              ; preds = %514
  %518 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %519 = call i32 @raxIteratorNextStep(%struct.TYPE_21__* %518, i32 0)
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %522, label %521

521:                                              ; preds = %517
  store i32 0, i32* %5, align 4
  br label %547

522:                                              ; preds = %517, %514
  %523 = load i32, i32* %11, align 4
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %530

525:                                              ; preds = %522
  %526 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %527 = call i32 @raxIteratorPrevStep(%struct.TYPE_21__* %526, i32 0)
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %530, label %529

529:                                              ; preds = %525
  store i32 0, i32* %5, align 4
  br label %547

530:                                              ; preds = %525, %522
  br label %531

531:                                              ; preds = %530, %513
  %532 = load i32, i32* @RAX_ITER_JUST_SEEKED, align 4
  %533 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %534 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %533, i32 0, i32 0
  %535 = load i32, i32* %534, align 8
  %536 = or i32 %535, %532
  store i32 %536, i32* %534, align 8
  br label %537

537:                                              ; preds = %531, %472
  br label %538

538:                                              ; preds = %537, %348
  br label %545

539:                                              ; preds = %202
  %540 = load i32, i32* @RAX_ITER_EOF, align 4
  %541 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %542 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %541, i32 0, i32 0
  %543 = load i32, i32* %542, align 8
  %544 = or i32 %543, %540
  store i32 %544, i32* %542, align 8
  store i32 1, i32* %5, align 4
  br label %547

545:                                              ; preds = %538
  br label %546

546:                                              ; preds = %545, %192
  store i32 1, i32* %5, align 4
  br label %547

547:                                              ; preds = %546, %539, %529, %521, %469, %464, %441, %427, %422, %405, %347, %339, %316, %277, %252, %213, %191, %159, %130, %129, %112, %103, %91
  %548 = load i32, i32* %5, align 4
  ret i32 %548
}

declare dso_local i32 @raxSeekGreatest(%struct.TYPE_21__*) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i8* @raxGetData(%struct.TYPE_23__*) #1

declare dso_local i64 @raxLowWalk(%struct.TYPE_19__*, i8*, i64, %struct.TYPE_23__**, i32*, i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @raxIteratorAddChars(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i32 @raxStackPush(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_20__** @raxNodeFirstChildPtr(%struct.TYPE_20__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_20__**, %struct.TYPE_20__**, i32) #1

declare dso_local i32 @raxStackPop(%struct.TYPE_22__*) #1

declare dso_local i32 @debugf(i8*, i32, ...) #1

declare dso_local i32 @raxIteratorPrevStep(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @raxIteratorNextStep(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

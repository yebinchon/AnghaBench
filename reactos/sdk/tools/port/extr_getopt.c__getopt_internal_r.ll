; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/port/extr_getopt.c__getopt_internal_r.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/port/extr_getopt.c__getopt_internal_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }
%struct._getopt_data = type { i32, i8*, i32, i8*, i32, i32, i64, i8, i32 }

@PERMUTE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@REQUIRE_ORDER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: invalid option -- '%c'\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"%s: option requires an argument -- '%c'\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"-W \00", align 1
@NONOPTION_P = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_getopt_internal_r(i32 %0, i8** %1, i8* %2, %struct.option* %3, i32* %4, i32 %5, %struct._getopt_data* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.option*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct._getopt_data*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca i8*, align 8
  store i32 %0, i32* %10, align 4
  store i8** %1, i8*** %11, align 8
  store i8* %2, i8** %12, align 8
  store %struct.option* %3, %struct.option** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct._getopt_data* %6, %struct._getopt_data** %16, align 8
  store i32 %7, i32* %17, align 4
  %22 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %23 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %8
  store i32 -1, i32* %9, align 4
  br label %654

28:                                               ; preds = %8
  %29 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %30 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %29, i32 0, i32 1
  store i8* null, i8** %30, align 8
  %31 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %32 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %37 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %35, %28
  %41 = load i32, i32* %10, align 4
  %42 = load i8**, i8*** %11, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %45 = load i32, i32* %17, align 4
  %46 = call i8* @_getopt_initialize(i32 %41, i8** %42, i8* %43, %struct._getopt_data* %44, i32 %45)
  store i8* %46, i8** %12, align 8
  br label %63

47:                                               ; preds = %35
  %48 = load i8*, i8** %12, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 45
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load i8*, i8** %12, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 43
  br i1 %58, label %59, label %62

59:                                               ; preds = %53, %47
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %12, align 8
  br label %62

62:                                               ; preds = %59, %53
  br label %63

63:                                               ; preds = %62, %40
  %64 = load i8*, i8** %12, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 58
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 0, i32* %18, align 4
  br label %70

70:                                               ; preds = %69, %63
  %71 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %72 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %70
  %76 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %77 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %422

82:                                               ; preds = %75, %70
  %83 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %84 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %87 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp sgt i32 %85, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %82
  %91 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %92 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %95 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %90, %82
  %97 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %98 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %101 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp sgt i32 %99, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %96
  %105 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %106 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %109 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %104, %96
  %111 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %112 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %111, i32 0, i32 6
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @PERMUTE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %197

116:                                              ; preds = %110
  %117 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %118 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %121 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %119, %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %116
  %125 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %126 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %129 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %127, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %124
  %133 = load i8**, i8*** %11, align 8
  %134 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %135 = call i32 @exchange(i8** %133, %struct._getopt_data* %134)
  br label %151

136:                                              ; preds = %124, %116
  %137 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %138 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %141 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %139, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %136
  %145 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %146 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %149 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %148, i32 0, i32 5
  store i32 %147, i32* %149, align 4
  br label %150

150:                                              ; preds = %144, %136
  br label %151

151:                                              ; preds = %150, %132
  br label %152

152:                                              ; preds = %186, %151
  %153 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %154 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %184

158:                                              ; preds = %152
  %159 = load i8**, i8*** %11, align 8
  %160 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %161 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %159, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 0
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp ne i32 %168, 45
  br i1 %169, label %182, label %170

170:                                              ; preds = %158
  %171 = load i8**, i8*** %11, align 8
  %172 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %173 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %171, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 1
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 0
  br label %182

182:                                              ; preds = %170, %158
  %183 = phi i1 [ true, %158 ], [ %181, %170 ]
  br label %184

184:                                              ; preds = %182, %152
  %185 = phi i1 [ false, %152 ], [ %183, %182 ]
  br i1 %185, label %186, label %191

186:                                              ; preds = %184
  %187 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %188 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 8
  br label %152

191:                                              ; preds = %184
  %192 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %193 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %196 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %195, i32 0, i32 4
  store i32 %194, i32* %196, align 8
  br label %197

197:                                              ; preds = %191, %110
  %198 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %199 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* %10, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %259

203:                                              ; preds = %197
  %204 = load i8**, i8*** %11, align 8
  %205 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %206 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8*, i8** %204, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @strcmp(i8* %210, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %259, label %213

213:                                              ; preds = %203
  %214 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %215 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 8
  %218 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %219 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %222 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = icmp ne i32 %220, %223
  br i1 %224, label %225, label %237

225:                                              ; preds = %213
  %226 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %227 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %230 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = icmp ne i32 %228, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %225
  %234 = load i8**, i8*** %11, align 8
  %235 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %236 = call i32 @exchange(i8** %234, %struct._getopt_data* %235)
  br label %252

237:                                              ; preds = %225, %213
  %238 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %239 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 4
  %241 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %242 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = icmp eq i32 %240, %243
  br i1 %244, label %245, label %251

245:                                              ; preds = %237
  %246 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %247 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %250 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %249, i32 0, i32 5
  store i32 %248, i32* %250, align 4
  br label %251

251:                                              ; preds = %245, %237
  br label %252

252:                                              ; preds = %251, %233
  %253 = load i32, i32* %10, align 4
  %254 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %255 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %254, i32 0, i32 4
  store i32 %253, i32* %255, align 8
  %256 = load i32, i32* %10, align 4
  %257 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %258 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 8
  br label %259

259:                                              ; preds = %252, %203, %197
  %260 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %261 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* %10, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %280

265:                                              ; preds = %259
  %266 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %267 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 4
  %269 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %270 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = icmp ne i32 %268, %271
  br i1 %272, label %273, label %279

273:                                              ; preds = %265
  %274 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %275 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 4
  %277 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %278 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %277, i32 0, i32 2
  store i32 %276, i32* %278, align 8
  br label %279

279:                                              ; preds = %273, %265
  store i32 -1, i32* %9, align 4
  br label %654

280:                                              ; preds = %259
  %281 = load i8**, i8*** %11, align 8
  %282 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %283 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8*, i8** %281, i64 %285
  %287 = load i8*, i8** %286, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 0
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = icmp ne i32 %290, 45
  br i1 %291, label %304, label %292

292:                                              ; preds = %280
  %293 = load i8**, i8*** %11, align 8
  %294 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %295 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8*, i8** %293, i64 %297
  %299 = load i8*, i8** %298, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 1
  %301 = load i8, i8* %300, align 1
  %302 = sext i8 %301 to i32
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %322

304:                                              ; preds = %292, %280
  %305 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %306 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %305, i32 0, i32 6
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @REQUIRE_ORDER, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %310, label %311

310:                                              ; preds = %304
  store i32 -1, i32* %9, align 4
  br label %654

311:                                              ; preds = %304
  %312 = load i8**, i8*** %11, align 8
  %313 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %314 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %314, align 8
  %317 = sext i32 %315 to i64
  %318 = getelementptr inbounds i8*, i8** %312, i64 %317
  %319 = load i8*, i8** %318, align 8
  %320 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %321 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %320, i32 0, i32 1
  store i8* %319, i8** %321, align 8
  store i32 1, i32* %9, align 4
  br label %654

322:                                              ; preds = %292
  %323 = load %struct.option*, %struct.option** %13, align 8
  %324 = icmp ne %struct.option* %323, null
  br i1 %324, label %325, label %411

325:                                              ; preds = %322
  %326 = load i8**, i8*** %11, align 8
  %327 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %328 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i8*, i8** %326, i64 %330
  %332 = load i8*, i8** %331, align 8
  %333 = getelementptr inbounds i8, i8* %332, i64 1
  %334 = load i8, i8* %333, align 1
  %335 = sext i8 %334 to i32
  %336 = icmp eq i32 %335, 45
  br i1 %336, label %337, label %357

337:                                              ; preds = %325
  %338 = load i8**, i8*** %11, align 8
  %339 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %340 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8*, i8** %338, i64 %342
  %344 = load i8*, i8** %343, align 8
  %345 = getelementptr inbounds i8, i8* %344, i64 2
  %346 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %347 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %346, i32 0, i32 3
  store i8* %345, i8** %347, align 8
  %348 = load i32, i32* %10, align 4
  %349 = load i8**, i8*** %11, align 8
  %350 = load i8*, i8** %12, align 8
  %351 = load %struct.option*, %struct.option** %13, align 8
  %352 = load i32*, i32** %14, align 8
  %353 = load i32, i32* %15, align 4
  %354 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %355 = load i32, i32* %18, align 4
  %356 = call i32 @process_long_option(i32 %348, i8** %349, i8* %350, %struct.option* %351, i32* %352, i32 %353, %struct._getopt_data* %354, i32 %355, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %356, i32* %9, align 4
  br label %654

357:                                              ; preds = %325
  %358 = load i32, i32* %15, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %410

360:                                              ; preds = %357
  %361 = load i8**, i8*** %11, align 8
  %362 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %363 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i8*, i8** %361, i64 %365
  %367 = load i8*, i8** %366, align 8
  %368 = getelementptr inbounds i8, i8* %367, i64 2
  %369 = load i8, i8* %368, align 1
  %370 = sext i8 %369 to i32
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %385, label %372

372:                                              ; preds = %360
  %373 = load i8*, i8** %12, align 8
  %374 = load i8**, i8*** %11, align 8
  %375 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %376 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 8
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i8*, i8** %374, i64 %378
  %380 = load i8*, i8** %379, align 8
  %381 = getelementptr inbounds i8, i8* %380, i64 1
  %382 = load i8, i8* %381, align 1
  %383 = call i8* @strchr(i8* %373, i8 signext %382)
  %384 = icmp ne i8* %383, null
  br i1 %384, label %410, label %385

385:                                              ; preds = %372, %360
  %386 = load i8**, i8*** %11, align 8
  %387 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %388 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i8*, i8** %386, i64 %390
  %392 = load i8*, i8** %391, align 8
  %393 = getelementptr inbounds i8, i8* %392, i64 1
  %394 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %395 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %394, i32 0, i32 3
  store i8* %393, i8** %395, align 8
  %396 = load i32, i32* %10, align 4
  %397 = load i8**, i8*** %11, align 8
  %398 = load i8*, i8** %12, align 8
  %399 = load %struct.option*, %struct.option** %13, align 8
  %400 = load i32*, i32** %14, align 8
  %401 = load i32, i32* %15, align 4
  %402 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %403 = load i32, i32* %18, align 4
  %404 = call i32 @process_long_option(i32 %396, i8** %397, i8* %398, %struct.option* %399, i32* %400, i32 %401, %struct._getopt_data* %402, i32 %403, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %404, i32* %19, align 4
  %405 = load i32, i32* %19, align 4
  %406 = icmp ne i32 %405, -1
  br i1 %406, label %407, label %409

407:                                              ; preds = %385
  %408 = load i32, i32* %19, align 4
  store i32 %408, i32* %9, align 4
  br label %654

409:                                              ; preds = %385
  br label %410

410:                                              ; preds = %409, %372, %357
  br label %411

411:                                              ; preds = %410, %322
  %412 = load i8**, i8*** %11, align 8
  %413 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %414 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %413, i32 0, i32 2
  %415 = load i32, i32* %414, align 8
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i8*, i8** %412, i64 %416
  %418 = load i8*, i8** %417, align 8
  %419 = getelementptr inbounds i8, i8* %418, i64 1
  %420 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %421 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %420, i32 0, i32 3
  store i8* %419, i8** %421, align 8
  br label %422

422:                                              ; preds = %411, %75
  %423 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %424 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %423, i32 0, i32 3
  %425 = load i8*, i8** %424, align 8
  %426 = getelementptr inbounds i8, i8* %425, i32 1
  store i8* %426, i8** %424, align 8
  %427 = load i8, i8* %425, align 1
  store i8 %427, i8* %20, align 1
  %428 = load i8*, i8** %12, align 8
  %429 = load i8, i8* %20, align 1
  %430 = call i8* @strchr(i8* %428, i8 signext %429)
  store i8* %430, i8** %21, align 8
  %431 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %432 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %431, i32 0, i32 3
  %433 = load i8*, i8** %432, align 8
  %434 = load i8, i8* %433, align 1
  %435 = sext i8 %434 to i32
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %442

437:                                              ; preds = %422
  %438 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %439 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 8
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %439, align 8
  br label %442

442:                                              ; preds = %437, %422
  %443 = load i8*, i8** %21, align 8
  %444 = icmp eq i8* %443, null
  br i1 %444, label %453, label %445

445:                                              ; preds = %442
  %446 = load i8, i8* %20, align 1
  %447 = sext i8 %446 to i32
  %448 = icmp eq i32 %447, 58
  br i1 %448, label %453, label %449

449:                                              ; preds = %445
  %450 = load i8, i8* %20, align 1
  %451 = sext i8 %450 to i32
  %452 = icmp eq i32 %451, 59
  br i1 %452, label %453, label %468

453:                                              ; preds = %449, %445, %442
  %454 = load i32, i32* %18, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %464

456:                                              ; preds = %453
  %457 = load i32, i32* @stderr, align 4
  %458 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %459 = load i8**, i8*** %11, align 8
  %460 = getelementptr inbounds i8*, i8** %459, i64 0
  %461 = load i8*, i8** %460, align 8
  %462 = load i8, i8* %20, align 1
  %463 = call i32 @fprintf(i32 %457, i8* %458, i8* %461, i8 signext %462)
  br label %464

464:                                              ; preds = %456, %453
  %465 = load i8, i8* %20, align 1
  %466 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %467 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %466, i32 0, i32 7
  store i8 %465, i8* %467, align 8
  store i32 63, i32* %9, align 4
  br label %654

468:                                              ; preds = %449
  %469 = load i8*, i8** %21, align 8
  %470 = getelementptr inbounds i8, i8* %469, i64 0
  %471 = load i8, i8* %470, align 1
  %472 = sext i8 %471 to i32
  %473 = icmp eq i32 %472, 87
  br i1 %473, label %474, label %554

474:                                              ; preds = %468
  %475 = load i8*, i8** %21, align 8
  %476 = getelementptr inbounds i8, i8* %475, i64 1
  %477 = load i8, i8* %476, align 1
  %478 = sext i8 %477 to i32
  %479 = icmp eq i32 %478, 59
  br i1 %479, label %480, label %554

480:                                              ; preds = %474
  %481 = load %struct.option*, %struct.option** %13, align 8
  %482 = icmp ne %struct.option* %481, null
  br i1 %482, label %483, label %554

483:                                              ; preds = %480
  %484 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %485 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %484, i32 0, i32 3
  %486 = load i8*, i8** %485, align 8
  %487 = load i8, i8* %486, align 1
  %488 = sext i8 %487 to i32
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %496

490:                                              ; preds = %483
  %491 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %492 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %491, i32 0, i32 3
  %493 = load i8*, i8** %492, align 8
  %494 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %495 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %494, i32 0, i32 1
  store i8* %493, i8** %495, align 8
  br label %538

496:                                              ; preds = %483
  %497 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %498 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %497, i32 0, i32 2
  %499 = load i32, i32* %498, align 8
  %500 = load i32, i32* %10, align 4
  %501 = icmp eq i32 %499, %500
  br i1 %501, label %502, label %527

502:                                              ; preds = %496
  %503 = load i32, i32* %18, align 4
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %513

505:                                              ; preds = %502
  %506 = load i32, i32* @stderr, align 4
  %507 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %508 = load i8**, i8*** %11, align 8
  %509 = getelementptr inbounds i8*, i8** %508, i64 0
  %510 = load i8*, i8** %509, align 8
  %511 = load i8, i8* %20, align 1
  %512 = call i32 @fprintf(i32 %506, i8* %507, i8* %510, i8 signext %511)
  br label %513

513:                                              ; preds = %505, %502
  %514 = load i8, i8* %20, align 1
  %515 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %516 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %515, i32 0, i32 7
  store i8 %514, i8* %516, align 8
  %517 = load i8*, i8** %12, align 8
  %518 = getelementptr inbounds i8, i8* %517, i64 0
  %519 = load i8, i8* %518, align 1
  %520 = sext i8 %519 to i32
  %521 = icmp eq i32 %520, 58
  br i1 %521, label %522, label %523

522:                                              ; preds = %513
  store i8 58, i8* %20, align 1
  br label %524

523:                                              ; preds = %513
  store i8 63, i8* %20, align 1
  br label %524

524:                                              ; preds = %523, %522
  %525 = load i8, i8* %20, align 1
  %526 = sext i8 %525 to i32
  store i32 %526, i32* %9, align 4
  br label %654

527:                                              ; preds = %496
  %528 = load i8**, i8*** %11, align 8
  %529 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %530 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %529, i32 0, i32 2
  %531 = load i32, i32* %530, align 8
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i8*, i8** %528, i64 %532
  %534 = load i8*, i8** %533, align 8
  %535 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %536 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %535, i32 0, i32 1
  store i8* %534, i8** %536, align 8
  br label %537

537:                                              ; preds = %527
  br label %538

538:                                              ; preds = %537, %490
  %539 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %540 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %539, i32 0, i32 1
  %541 = load i8*, i8** %540, align 8
  %542 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %543 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %542, i32 0, i32 3
  store i8* %541, i8** %543, align 8
  %544 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %545 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %544, i32 0, i32 1
  store i8* null, i8** %545, align 8
  %546 = load i32, i32* %10, align 4
  %547 = load i8**, i8*** %11, align 8
  %548 = load i8*, i8** %12, align 8
  %549 = load %struct.option*, %struct.option** %13, align 8
  %550 = load i32*, i32** %14, align 8
  %551 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %552 = load i32, i32* %18, align 4
  %553 = call i32 @process_long_option(i32 %546, i8** %547, i8* %548, %struct.option* %549, i32* %550, i32 0, %struct._getopt_data* %551, i32 %552, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 %553, i32* %9, align 4
  br label %654

554:                                              ; preds = %480, %474, %468
  %555 = load i8*, i8** %21, align 8
  %556 = getelementptr inbounds i8, i8* %555, i64 1
  %557 = load i8, i8* %556, align 1
  %558 = sext i8 %557 to i32
  %559 = icmp eq i32 %558, 58
  br i1 %559, label %560, label %651

560:                                              ; preds = %554
  %561 = load i8*, i8** %21, align 8
  %562 = getelementptr inbounds i8, i8* %561, i64 2
  %563 = load i8, i8* %562, align 1
  %564 = sext i8 %563 to i32
  %565 = icmp eq i32 %564, 58
  br i1 %565, label %566, label %589

566:                                              ; preds = %560
  %567 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %568 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %567, i32 0, i32 3
  %569 = load i8*, i8** %568, align 8
  %570 = load i8, i8* %569, align 1
  %571 = sext i8 %570 to i32
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %573, label %583

573:                                              ; preds = %566
  %574 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %575 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %574, i32 0, i32 3
  %576 = load i8*, i8** %575, align 8
  %577 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %578 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %577, i32 0, i32 1
  store i8* %576, i8** %578, align 8
  %579 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %580 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %579, i32 0, i32 2
  %581 = load i32, i32* %580, align 8
  %582 = add nsw i32 %581, 1
  store i32 %582, i32* %580, align 8
  br label %586

583:                                              ; preds = %566
  %584 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %585 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %584, i32 0, i32 1
  store i8* null, i8** %585, align 8
  br label %586

586:                                              ; preds = %583, %573
  %587 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %588 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %587, i32 0, i32 3
  store i8* null, i8** %588, align 8
  br label %650

589:                                              ; preds = %560
  %590 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %591 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %590, i32 0, i32 3
  %592 = load i8*, i8** %591, align 8
  %593 = load i8, i8* %592, align 1
  %594 = sext i8 %593 to i32
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %596, label %606

596:                                              ; preds = %589
  %597 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %598 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %597, i32 0, i32 3
  %599 = load i8*, i8** %598, align 8
  %600 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %601 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %600, i32 0, i32 1
  store i8* %599, i8** %601, align 8
  %602 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %603 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %602, i32 0, i32 2
  %604 = load i32, i32* %603, align 8
  %605 = add nsw i32 %604, 1
  store i32 %605, i32* %603, align 8
  br label %647

606:                                              ; preds = %589
  %607 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %608 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %607, i32 0, i32 2
  %609 = load i32, i32* %608, align 8
  %610 = load i32, i32* %10, align 4
  %611 = icmp eq i32 %609, %610
  br i1 %611, label %612, label %635

612:                                              ; preds = %606
  %613 = load i32, i32* %18, align 4
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %615, label %623

615:                                              ; preds = %612
  %616 = load i32, i32* @stderr, align 4
  %617 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %618 = load i8**, i8*** %11, align 8
  %619 = getelementptr inbounds i8*, i8** %618, i64 0
  %620 = load i8*, i8** %619, align 8
  %621 = load i8, i8* %20, align 1
  %622 = call i32 @fprintf(i32 %616, i8* %617, i8* %620, i8 signext %621)
  br label %623

623:                                              ; preds = %615, %612
  %624 = load i8, i8* %20, align 1
  %625 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %626 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %625, i32 0, i32 7
  store i8 %624, i8* %626, align 8
  %627 = load i8*, i8** %12, align 8
  %628 = getelementptr inbounds i8, i8* %627, i64 0
  %629 = load i8, i8* %628, align 1
  %630 = sext i8 %629 to i32
  %631 = icmp eq i32 %630, 58
  br i1 %631, label %632, label %633

632:                                              ; preds = %623
  store i8 58, i8* %20, align 1
  br label %634

633:                                              ; preds = %623
  store i8 63, i8* %20, align 1
  br label %634

634:                                              ; preds = %633, %632
  br label %646

635:                                              ; preds = %606
  %636 = load i8**, i8*** %11, align 8
  %637 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %638 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %637, i32 0, i32 2
  %639 = load i32, i32* %638, align 8
  %640 = add nsw i32 %639, 1
  store i32 %640, i32* %638, align 8
  %641 = sext i32 %639 to i64
  %642 = getelementptr inbounds i8*, i8** %636, i64 %641
  %643 = load i8*, i8** %642, align 8
  %644 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %645 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %644, i32 0, i32 1
  store i8* %643, i8** %645, align 8
  br label %646

646:                                              ; preds = %635, %634
  br label %647

647:                                              ; preds = %646, %596
  %648 = load %struct._getopt_data*, %struct._getopt_data** %16, align 8
  %649 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %648, i32 0, i32 3
  store i8* null, i8** %649, align 8
  br label %650

650:                                              ; preds = %647, %586
  br label %651

651:                                              ; preds = %650, %554
  %652 = load i8, i8* %20, align 1
  %653 = sext i8 %652 to i32
  store i32 %653, i32* %9, align 4
  br label %654

654:                                              ; preds = %651, %538, %524, %464, %407, %337, %311, %310, %279, %27
  %655 = load i32, i32* %9, align 4
  ret i32 %655
}

declare dso_local i8* @_getopt_initialize(i32, i8**, i8*, %struct._getopt_data*, i32) #1

declare dso_local i32 @exchange(i8**, %struct._getopt_data*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @process_long_option(i32, i8**, i8*, %struct.option*, i32*, i32, %struct._getopt_data*, i32, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8 signext) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

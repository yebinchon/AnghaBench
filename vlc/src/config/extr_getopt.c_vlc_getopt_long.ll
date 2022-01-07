; ModuleID = '/home/carl/AnghaBench/vlc/src/config/extr_getopt.c_vlc_getopt_long.c'
source_filename = "/home/carl/AnghaBench/vlc/src/config/extr_getopt.c_vlc_getopt_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_option = type { i8*, i8, i8*, i64 }
%struct.TYPE_4__ = type { i8*, i32, i32, i32, i8*, i8 }

@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NONOPTION_P = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_getopt_long(i32 %0, i8** %1, i8* %2, %struct.vlc_option* noalias %3, i32* %4, %struct.TYPE_4__* noalias %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.vlc_option*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.vlc_option*, align 8
  %16 = alloca %struct.vlc_option*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.vlc_option*, align 8
  %25 = alloca %struct.vlc_option*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8** %1, i8*** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.vlc_option* %3, %struct.vlc_option** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %13, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i8* null, i8** %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %6
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32 1, i32* %38, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  store i32 1, i32* %40, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i32 1, i32* %42, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  store i8* null, i8** %44, align 8
  br label %45

45:                                               ; preds = %36, %6
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 4
  %48 = load i8*, i8** %47, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  %53 = load i8*, i8** %52, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %308

57:                                               ; preds = %50, %45
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %65, %57
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %74, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %79, %71
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %88, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %85
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %96, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %93
  %102 = load i8**, i8*** %9, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %104 = call i32 @exchange(i8** %102, %struct.TYPE_4__* %103)
  br label %120

105:                                              ; preds = %93, %85
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %108, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %105
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %113, %105
  br label %120

120:                                              ; preds = %119, %101
  br label %121

121:                                              ; preds = %155, %120
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %153

127:                                              ; preds = %121
  %128 = load i8**, i8*** %9, align 8
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %128, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 45
  br i1 %138, label %151, label %139

139:                                              ; preds = %127
  %140 = load i8**, i8*** %9, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %140, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 1
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 0
  br label %151

151:                                              ; preds = %139, %127
  %152 = phi i1 [ true, %127 ], [ %150, %139 ]
  br label %153

153:                                              ; preds = %151, %121
  %154 = phi i1 [ false, %121 ], [ %152, %151 ]
  br i1 %154, label %155, label %160

155:                                              ; preds = %153
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 8
  br label %121

160:                                              ; preds = %153
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 8
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %227

171:                                              ; preds = %160
  %172 = load i8**, i8*** %9, align 8
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %172, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @strcmp(i8* %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %227, label %181

181:                                              ; preds = %171
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 8
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %188, %191
  br i1 %192, label %193, label %205

193:                                              ; preds = %181
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %196, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %193
  %202 = load i8**, i8*** %9, align 8
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %204 = call i32 @exchange(i8** %202, %struct.TYPE_4__* %203)
  br label %220

205:                                              ; preds = %193, %181
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = icmp eq i32 %208, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %205
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 2
  store i32 %216, i32* %218, align 4
  br label %219

219:                                              ; preds = %213, %205
  br label %220

220:                                              ; preds = %219, %201
  %221 = load i32, i32* %8, align 4
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 3
  store i32 %221, i32* %223, align 8
  %224 = load i32, i32* %8, align 4
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 8
  br label %227

227:                                              ; preds = %220, %171, %160
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* %8, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %248

233:                                              ; preds = %227
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %236, %239
  br i1 %240, label %241, label %247

241:                                              ; preds = %233
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 1
  store i32 %244, i32* %246, align 8
  br label %247

247:                                              ; preds = %241, %233
  store i32 -1, i32* %7, align 4
  br label %897

248:                                              ; preds = %227
  %249 = load i8**, i8*** %9, align 8
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8*, i8** %249, i64 %253
  %255 = load i8*, i8** %254, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 0
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp ne i32 %258, 45
  br i1 %259, label %272, label %260

260:                                              ; preds = %248
  %261 = load i8**, i8*** %9, align 8
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8*, i8** %261, i64 %265
  %267 = load i8*, i8** %266, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 1
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %283

272:                                              ; preds = %260, %248
  %273 = load i8**, i8*** %9, align 8
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 8
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %275, align 8
  %278 = sext i32 %276 to i64
  %279 = getelementptr inbounds i8*, i8** %273, i64 %278
  %280 = load i8*, i8** %279, align 8
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 0
  store i8* %280, i8** %282, align 8
  store i32 1, i32* %7, align 4
  br label %897

283:                                              ; preds = %260
  %284 = load i8**, i8*** %9, align 8
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8*, i8** %284, i64 %288
  %290 = load i8*, i8** %289, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 1
  %292 = load i8**, i8*** %9, align 8
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8*, i8** %292, i64 %296
  %298 = load i8*, i8** %297, align 8
  %299 = getelementptr inbounds i8, i8* %298, i64 1
  %300 = load i8, i8* %299, align 1
  %301 = sext i8 %300 to i32
  %302 = icmp eq i32 %301, 45
  %303 = zext i1 %302 to i32
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8, i8* %291, i64 %304
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 4
  store i8* %305, i8** %307, align 8
  br label %308

308:                                              ; preds = %283, %50
  %309 = load i8**, i8*** %9, align 8
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 8
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8*, i8** %309, i64 %313
  %315 = load i8*, i8** %314, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 1
  %317 = load i8, i8* %316, align 1
  %318 = sext i8 %317 to i32
  %319 = icmp eq i32 %318, 45
  br i1 %319, label %320, label %543

320:                                              ; preds = %308
  store %struct.vlc_option* null, %struct.vlc_option** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 4
  %323 = load i8*, i8** %322, align 8
  store i8* %323, i8** %14, align 8
  br label %324

324:                                              ; preds = %337, %320
  %325 = load i8*, i8** %14, align 8
  %326 = load i8, i8* %325, align 1
  %327 = sext i8 %326 to i32
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %334

329:                                              ; preds = %324
  %330 = load i8*, i8** %14, align 8
  %331 = load i8, i8* %330, align 1
  %332 = sext i8 %331 to i32
  %333 = icmp ne i32 %332, 61
  br label %334

334:                                              ; preds = %329, %324
  %335 = phi i1 [ false, %324 ], [ %333, %329 ]
  br i1 %335, label %336, label %340

336:                                              ; preds = %334
  br label %337

337:                                              ; preds = %336
  %338 = load i8*, i8** %14, align 8
  %339 = getelementptr inbounds i8, i8* %338, i32 1
  store i8* %339, i8** %14, align 8
  br label %324

340:                                              ; preds = %334
  %341 = load %struct.vlc_option*, %struct.vlc_option** %11, align 8
  store %struct.vlc_option* %341, %struct.vlc_option** %15, align 8
  store i32 0, i32* %20, align 4
  br label %342

342:                                              ; preds = %391, %340
  %343 = load %struct.vlc_option*, %struct.vlc_option** %15, align 8
  %344 = getelementptr inbounds %struct.vlc_option, %struct.vlc_option* %343, i32 0, i32 0
  %345 = load i8*, i8** %344, align 8
  %346 = icmp ne i8* %345, null
  br i1 %346, label %347, label %396

347:                                              ; preds = %342
  %348 = load %struct.vlc_option*, %struct.vlc_option** %15, align 8
  %349 = getelementptr inbounds %struct.vlc_option, %struct.vlc_option* %348, i32 0, i32 0
  %350 = load i8*, i8** %349, align 8
  %351 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 4
  %353 = load i8*, i8** %352, align 8
  %354 = load i8*, i8** %14, align 8
  %355 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i32 0, i32 4
  %357 = load i8*, i8** %356, align 8
  %358 = ptrtoint i8* %354 to i64
  %359 = ptrtoint i8* %357 to i64
  %360 = sub i64 %358, %359
  %361 = trunc i64 %360 to i32
  %362 = call i32 @strncmp(i8* %350, i8* %353, i32 %361)
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %390, label %364

364:                                              ; preds = %347
  %365 = load i8*, i8** %14, align 8
  %366 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i32 0, i32 4
  %368 = load i8*, i8** %367, align 8
  %369 = ptrtoint i8* %365 to i64
  %370 = ptrtoint i8* %368 to i64
  %371 = sub i64 %369, %370
  %372 = trunc i64 %371 to i32
  %373 = load %struct.vlc_option*, %struct.vlc_option** %15, align 8
  %374 = getelementptr inbounds %struct.vlc_option, %struct.vlc_option* %373, i32 0, i32 0
  %375 = load i8*, i8** %374, align 8
  %376 = call i32 @strlen(i8* %375)
  %377 = icmp eq i32 %372, %376
  br i1 %377, label %378, label %381

378:                                              ; preds = %364
  %379 = load %struct.vlc_option*, %struct.vlc_option** %15, align 8
  store %struct.vlc_option* %379, %struct.vlc_option** %16, align 8
  %380 = load i32, i32* %20, align 4
  store i32 %380, i32* %19, align 4
  store i32 1, i32* %17, align 4
  br label %396

381:                                              ; preds = %364
  %382 = load %struct.vlc_option*, %struct.vlc_option** %16, align 8
  %383 = icmp eq %struct.vlc_option* %382, null
  br i1 %383, label %384, label %387

384:                                              ; preds = %381
  %385 = load %struct.vlc_option*, %struct.vlc_option** %15, align 8
  store %struct.vlc_option* %385, %struct.vlc_option** %16, align 8
  %386 = load i32, i32* %20, align 4
  store i32 %386, i32* %19, align 4
  br label %388

387:                                              ; preds = %381
  store i32 1, i32* %18, align 4
  br label %388

388:                                              ; preds = %387, %384
  br label %389

389:                                              ; preds = %388
  br label %390

390:                                              ; preds = %389, %347
  br label %391

391:                                              ; preds = %390
  %392 = load %struct.vlc_option*, %struct.vlc_option** %15, align 8
  %393 = getelementptr inbounds %struct.vlc_option, %struct.vlc_option* %392, i32 1
  store %struct.vlc_option* %393, %struct.vlc_option** %15, align 8
  %394 = load i32, i32* %20, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %20, align 4
  br label %342

396:                                              ; preds = %378, %342
  %397 = load i32, i32* %18, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %418

399:                                              ; preds = %396
  %400 = load i32, i32* %17, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %418, label %402

402:                                              ; preds = %399
  %403 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %404 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %403, i32 0, i32 4
  %405 = load i8*, i8** %404, align 8
  %406 = call i32 @strlen(i8* %405)
  %407 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %408 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %407, i32 0, i32 4
  %409 = load i8*, i8** %408, align 8
  %410 = zext i32 %406 to i64
  %411 = getelementptr inbounds i8, i8* %409, i64 %410
  store i8* %411, i8** %408, align 8
  %412 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %413 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 8
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %413, align 8
  %416 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %417 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %416, i32 0, i32 5
  store i8 0, i8* %417, align 8
  store i32 63, i32* %7, align 4
  br label %897

418:                                              ; preds = %399, %396
  %419 = load %struct.vlc_option*, %struct.vlc_option** %16, align 8
  %420 = icmp ne %struct.vlc_option* %419, null
  br i1 %420, label %421, label %534

421:                                              ; preds = %418
  %422 = load i32, i32* %19, align 4
  store i32 %422, i32* %20, align 4
  %423 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %424 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 8
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %424, align 8
  %427 = load i8*, i8** %14, align 8
  %428 = load i8, i8* %427, align 1
  %429 = icmp ne i8 %428, 0
  br i1 %429, label %430, label %456

430:                                              ; preds = %421
  %431 = load %struct.vlc_option*, %struct.vlc_option** %16, align 8
  %432 = getelementptr inbounds %struct.vlc_option, %struct.vlc_option* %431, i32 0, i32 3
  %433 = load i64, i64* %432, align 8
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %440

435:                                              ; preds = %430
  %436 = load i8*, i8** %14, align 8
  %437 = getelementptr inbounds i8, i8* %436, i64 1
  %438 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %439 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %438, i32 0, i32 0
  store i8* %437, i8** %439, align 8
  br label %455

440:                                              ; preds = %430
  %441 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %442 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %441, i32 0, i32 4
  %443 = load i8*, i8** %442, align 8
  %444 = call i32 @strlen(i8* %443)
  %445 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %446 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %445, i32 0, i32 4
  %447 = load i8*, i8** %446, align 8
  %448 = zext i32 %444 to i64
  %449 = getelementptr inbounds i8, i8* %447, i64 %448
  store i8* %449, i8** %446, align 8
  %450 = load %struct.vlc_option*, %struct.vlc_option** %16, align 8
  %451 = getelementptr inbounds %struct.vlc_option, %struct.vlc_option* %450, i32 0, i32 1
  %452 = load i8, i8* %451, align 8
  %453 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %454 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %453, i32 0, i32 5
  store i8 %452, i8* %454, align 8
  store i32 63, i32* %7, align 4
  br label %897

455:                                              ; preds = %435
  br label %502

456:                                              ; preds = %421
  %457 = load %struct.vlc_option*, %struct.vlc_option** %16, align 8
  %458 = getelementptr inbounds %struct.vlc_option, %struct.vlc_option* %457, i32 0, i32 3
  %459 = load i64, i64* %458, align 8
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %501

461:                                              ; preds = %456
  %462 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %463 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 8
  %465 = load i32, i32* %8, align 4
  %466 = icmp slt i32 %464, %465
  br i1 %466, label %467, label %478

467:                                              ; preds = %461
  %468 = load i8**, i8*** %9, align 8
  %469 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %470 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 8
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %470, align 8
  %473 = sext i32 %471 to i64
  %474 = getelementptr inbounds i8*, i8** %468, i64 %473
  %475 = load i8*, i8** %474, align 8
  %476 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %477 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %476, i32 0, i32 0
  store i8* %475, i8** %477, align 8
  br label %500

478:                                              ; preds = %461
  %479 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %480 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %479, i32 0, i32 4
  %481 = load i8*, i8** %480, align 8
  %482 = call i32 @strlen(i8* %481)
  %483 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %484 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %483, i32 0, i32 4
  %485 = load i8*, i8** %484, align 8
  %486 = zext i32 %482 to i64
  %487 = getelementptr inbounds i8, i8* %485, i64 %486
  store i8* %487, i8** %484, align 8
  %488 = load %struct.vlc_option*, %struct.vlc_option** %16, align 8
  %489 = getelementptr inbounds %struct.vlc_option, %struct.vlc_option* %488, i32 0, i32 1
  %490 = load i8, i8* %489, align 8
  %491 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %492 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %491, i32 0, i32 5
  store i8 %490, i8* %492, align 8
  %493 = load i8*, i8** %10, align 8
  %494 = getelementptr inbounds i8, i8* %493, i64 0
  %495 = load i8, i8* %494, align 1
  %496 = sext i8 %495 to i32
  %497 = icmp eq i32 %496, 58
  %498 = zext i1 %497 to i64
  %499 = select i1 %497, i32 58, i32 63
  store i32 %499, i32* %7, align 4
  br label %897

500:                                              ; preds = %467
  br label %501

501:                                              ; preds = %500, %456
  br label %502

502:                                              ; preds = %501, %455
  %503 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %504 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %503, i32 0, i32 4
  %505 = load i8*, i8** %504, align 8
  %506 = call i32 @strlen(i8* %505)
  %507 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %508 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %507, i32 0, i32 4
  %509 = load i8*, i8** %508, align 8
  %510 = zext i32 %506 to i64
  %511 = getelementptr inbounds i8, i8* %509, i64 %510
  store i8* %511, i8** %508, align 8
  %512 = load i32*, i32** %12, align 8
  %513 = icmp ne i32* %512, null
  br i1 %513, label %514, label %517

514:                                              ; preds = %502
  %515 = load i32, i32* %20, align 4
  %516 = load i32*, i32** %12, align 8
  store i32 %515, i32* %516, align 4
  br label %517

517:                                              ; preds = %514, %502
  %518 = load %struct.vlc_option*, %struct.vlc_option** %16, align 8
  %519 = getelementptr inbounds %struct.vlc_option, %struct.vlc_option* %518, i32 0, i32 2
  %520 = load i8*, i8** %519, align 8
  %521 = icmp ne i8* %520, null
  br i1 %521, label %522, label %529

522:                                              ; preds = %517
  %523 = load %struct.vlc_option*, %struct.vlc_option** %16, align 8
  %524 = getelementptr inbounds %struct.vlc_option, %struct.vlc_option* %523, i32 0, i32 1
  %525 = load i8, i8* %524, align 8
  %526 = load %struct.vlc_option*, %struct.vlc_option** %16, align 8
  %527 = getelementptr inbounds %struct.vlc_option, %struct.vlc_option* %526, i32 0, i32 2
  %528 = load i8*, i8** %527, align 8
  store i8 %525, i8* %528, align 1
  store i32 0, i32* %7, align 4
  br label %897

529:                                              ; preds = %517
  %530 = load %struct.vlc_option*, %struct.vlc_option** %16, align 8
  %531 = getelementptr inbounds %struct.vlc_option, %struct.vlc_option* %530, i32 0, i32 1
  %532 = load i8, i8* %531, align 8
  %533 = sext i8 %532 to i32
  store i32 %533, i32* %7, align 4
  br label %897

534:                                              ; preds = %418
  %535 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %536 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %535, i32 0, i32 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %536, align 8
  %537 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %538 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %537, i32 0, i32 1
  %539 = load i32, i32* %538, align 8
  %540 = add nsw i32 %539, 1
  store i32 %540, i32* %538, align 8
  %541 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %542 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %541, i32 0, i32 5
  store i8 0, i8* %542, align 8
  store i32 63, i32* %7, align 4
  br label %897

543:                                              ; preds = %308
  %544 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %545 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %544, i32 0, i32 4
  %546 = load i8*, i8** %545, align 8
  %547 = getelementptr inbounds i8, i8* %546, i32 1
  store i8* %547, i8** %545, align 8
  %548 = load i8, i8* %546, align 1
  store i8 %548, i8* %21, align 1
  %549 = load i8*, i8** %10, align 8
  %550 = load i8, i8* %21, align 1
  %551 = call i8* @strchr(i8* %549, i8 signext %550)
  store i8* %551, i8** %22, align 8
  %552 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %553 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %552, i32 0, i32 4
  %554 = load i8*, i8** %553, align 8
  %555 = load i8, i8* %554, align 1
  %556 = sext i8 %555 to i32
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %558, label %563

558:                                              ; preds = %543
  %559 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %560 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %559, i32 0, i32 1
  %561 = load i32, i32* %560, align 8
  %562 = add nsw i32 %561, 1
  store i32 %562, i32* %560, align 8
  br label %563

563:                                              ; preds = %558, %543
  %564 = load i8*, i8** %22, align 8
  %565 = icmp eq i8* %564, null
  br i1 %565, label %570, label %566

566:                                              ; preds = %563
  %567 = load i8, i8* %21, align 1
  %568 = sext i8 %567 to i32
  %569 = icmp eq i32 %568, 58
  br i1 %569, label %570, label %574

570:                                              ; preds = %566, %563
  %571 = load i8, i8* %21, align 1
  %572 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %573 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %572, i32 0, i32 5
  store i8 %571, i8* %573, align 8
  store i32 63, i32* %7, align 4
  br label %897

574:                                              ; preds = %566
  %575 = load i8*, i8** %22, align 8
  %576 = getelementptr inbounds i8, i8* %575, i64 0
  %577 = load i8, i8* %576, align 1
  %578 = sext i8 %577 to i32
  %579 = icmp eq i32 %578, 87
  br i1 %579, label %580, label %838

580:                                              ; preds = %574
  %581 = load i8*, i8** %22, align 8
  %582 = getelementptr inbounds i8, i8* %581, i64 1
  %583 = load i8, i8* %582, align 1
  %584 = sext i8 %583 to i32
  %585 = icmp eq i32 %584, 59
  br i1 %585, label %586, label %838

586:                                              ; preds = %580
  store %struct.vlc_option* null, %struct.vlc_option** %25, align 8
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %587 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %588 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %587, i32 0, i32 4
  %589 = load i8*, i8** %588, align 8
  %590 = load i8, i8* %589, align 1
  %591 = sext i8 %590 to i32
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %593, label %603

593:                                              ; preds = %586
  %594 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %595 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %594, i32 0, i32 4
  %596 = load i8*, i8** %595, align 8
  %597 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %598 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %597, i32 0, i32 0
  store i8* %596, i8** %598, align 8
  %599 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %600 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %599, i32 0, i32 1
  %601 = load i32, i32* %600, align 8
  %602 = add nsw i32 %601, 1
  store i32 %602, i32* %600, align 8
  br label %635

603:                                              ; preds = %586
  %604 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %605 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %604, i32 0, i32 1
  %606 = load i32, i32* %605, align 8
  %607 = load i32, i32* %8, align 4
  %608 = icmp eq i32 %606, %607
  br i1 %608, label %609, label %623

609:                                              ; preds = %603
  %610 = load i8, i8* %21, align 1
  %611 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %612 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %611, i32 0, i32 5
  store i8 %610, i8* %612, align 8
  %613 = load i8*, i8** %10, align 8
  %614 = getelementptr inbounds i8, i8* %613, i64 0
  %615 = load i8, i8* %614, align 1
  %616 = sext i8 %615 to i32
  %617 = icmp eq i32 %616, 58
  br i1 %617, label %618, label %619

618:                                              ; preds = %609
  store i8 58, i8* %21, align 1
  br label %620

619:                                              ; preds = %609
  store i8 63, i8* %21, align 1
  br label %620

620:                                              ; preds = %619, %618
  %621 = load i8, i8* %21, align 1
  %622 = sext i8 %621 to i32
  store i32 %622, i32* %7, align 4
  br label %897

623:                                              ; preds = %603
  %624 = load i8**, i8*** %9, align 8
  %625 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %626 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %625, i32 0, i32 1
  %627 = load i32, i32* %626, align 8
  %628 = add nsw i32 %627, 1
  store i32 %628, i32* %626, align 8
  %629 = sext i32 %627 to i64
  %630 = getelementptr inbounds i8*, i8** %624, i64 %629
  %631 = load i8*, i8** %630, align 8
  %632 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %633 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %632, i32 0, i32 0
  store i8* %631, i8** %633, align 8
  br label %634

634:                                              ; preds = %623
  br label %635

635:                                              ; preds = %634, %593
  %636 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %637 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %636, i32 0, i32 0
  %638 = load i8*, i8** %637, align 8
  store i8* %638, i8** %23, align 8
  %639 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %640 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %639, i32 0, i32 4
  store i8* %638, i8** %640, align 8
  br label %641

641:                                              ; preds = %654, %635
  %642 = load i8*, i8** %23, align 8
  %643 = load i8, i8* %642, align 1
  %644 = sext i8 %643 to i32
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %646, label %651

646:                                              ; preds = %641
  %647 = load i8*, i8** %23, align 8
  %648 = load i8, i8* %647, align 1
  %649 = sext i8 %648 to i32
  %650 = icmp ne i32 %649, 61
  br label %651

651:                                              ; preds = %646, %641
  %652 = phi i1 [ false, %641 ], [ %650, %646 ]
  br i1 %652, label %653, label %657

653:                                              ; preds = %651
  br label %654

654:                                              ; preds = %653
  %655 = load i8*, i8** %23, align 8
  %656 = getelementptr inbounds i8, i8* %655, i32 1
  store i8* %656, i8** %23, align 8
  br label %641

657:                                              ; preds = %651
  %658 = load %struct.vlc_option*, %struct.vlc_option** %11, align 8
  store %struct.vlc_option* %658, %struct.vlc_option** %24, align 8
  store i32 0, i32* %29, align 4
  br label %659

659:                                              ; preds = %708, %657
  %660 = load %struct.vlc_option*, %struct.vlc_option** %24, align 8
  %661 = getelementptr inbounds %struct.vlc_option, %struct.vlc_option* %660, i32 0, i32 0
  %662 = load i8*, i8** %661, align 8
  %663 = icmp ne i8* %662, null
  br i1 %663, label %664, label %713

664:                                              ; preds = %659
  %665 = load %struct.vlc_option*, %struct.vlc_option** %24, align 8
  %666 = getelementptr inbounds %struct.vlc_option, %struct.vlc_option* %665, i32 0, i32 0
  %667 = load i8*, i8** %666, align 8
  %668 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %669 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %668, i32 0, i32 4
  %670 = load i8*, i8** %669, align 8
  %671 = load i8*, i8** %23, align 8
  %672 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %673 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %672, i32 0, i32 4
  %674 = load i8*, i8** %673, align 8
  %675 = ptrtoint i8* %671 to i64
  %676 = ptrtoint i8* %674 to i64
  %677 = sub i64 %675, %676
  %678 = trunc i64 %677 to i32
  %679 = call i32 @strncmp(i8* %667, i8* %670, i32 %678)
  %680 = icmp ne i32 %679, 0
  br i1 %680, label %707, label %681

681:                                              ; preds = %664
  %682 = load i8*, i8** %23, align 8
  %683 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %684 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %683, i32 0, i32 4
  %685 = load i8*, i8** %684, align 8
  %686 = ptrtoint i8* %682 to i64
  %687 = ptrtoint i8* %685 to i64
  %688 = sub i64 %686, %687
  %689 = trunc i64 %688 to i32
  %690 = load %struct.vlc_option*, %struct.vlc_option** %24, align 8
  %691 = getelementptr inbounds %struct.vlc_option, %struct.vlc_option* %690, i32 0, i32 0
  %692 = load i8*, i8** %691, align 8
  %693 = call i32 @strlen(i8* %692)
  %694 = icmp eq i32 %689, %693
  br i1 %694, label %695, label %698

695:                                              ; preds = %681
  %696 = load %struct.vlc_option*, %struct.vlc_option** %24, align 8
  store %struct.vlc_option* %696, %struct.vlc_option** %25, align 8
  %697 = load i32, i32* %29, align 4
  store i32 %697, i32* %28, align 4
  store i32 1, i32* %26, align 4
  br label %713

698:                                              ; preds = %681
  %699 = load %struct.vlc_option*, %struct.vlc_option** %25, align 8
  %700 = icmp eq %struct.vlc_option* %699, null
  br i1 %700, label %701, label %704

701:                                              ; preds = %698
  %702 = load %struct.vlc_option*, %struct.vlc_option** %24, align 8
  store %struct.vlc_option* %702, %struct.vlc_option** %25, align 8
  %703 = load i32, i32* %29, align 4
  store i32 %703, i32* %28, align 4
  br label %705

704:                                              ; preds = %698
  store i32 1, i32* %27, align 4
  br label %705

705:                                              ; preds = %704, %701
  br label %706

706:                                              ; preds = %705
  br label %707

707:                                              ; preds = %706, %664
  br label %708

708:                                              ; preds = %707
  %709 = load %struct.vlc_option*, %struct.vlc_option** %24, align 8
  %710 = getelementptr inbounds %struct.vlc_option, %struct.vlc_option* %709, i32 1
  store %struct.vlc_option* %710, %struct.vlc_option** %24, align 8
  %711 = load i32, i32* %29, align 4
  %712 = add nsw i32 %711, 1
  store i32 %712, i32* %29, align 4
  br label %659

713:                                              ; preds = %695, %659
  %714 = load i32, i32* %27, align 4
  %715 = icmp ne i32 %714, 0
  br i1 %715, label %716, label %733

716:                                              ; preds = %713
  %717 = load i32, i32* %26, align 4
  %718 = icmp ne i32 %717, 0
  br i1 %718, label %733, label %719

719:                                              ; preds = %716
  %720 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %721 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %720, i32 0, i32 4
  %722 = load i8*, i8** %721, align 8
  %723 = call i32 @strlen(i8* %722)
  %724 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %725 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %724, i32 0, i32 4
  %726 = load i8*, i8** %725, align 8
  %727 = zext i32 %723 to i64
  %728 = getelementptr inbounds i8, i8* %726, i64 %727
  store i8* %728, i8** %725, align 8
  %729 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %730 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %729, i32 0, i32 1
  %731 = load i32, i32* %730, align 8
  %732 = add nsw i32 %731, 1
  store i32 %732, i32* %730, align 8
  store i32 63, i32* %7, align 4
  br label %897

733:                                              ; preds = %716, %713
  %734 = load %struct.vlc_option*, %struct.vlc_option** %25, align 8
  %735 = icmp ne %struct.vlc_option* %734, null
  br i1 %735, label %736, label %835

736:                                              ; preds = %733
  %737 = load i32, i32* %28, align 4
  store i32 %737, i32* %29, align 4
  %738 = load i8*, i8** %23, align 8
  %739 = load i8, i8* %738, align 1
  %740 = icmp ne i8 %739, 0
  br i1 %740, label %741, label %762

741:                                              ; preds = %736
  %742 = load %struct.vlc_option*, %struct.vlc_option** %25, align 8
  %743 = getelementptr inbounds %struct.vlc_option, %struct.vlc_option* %742, i32 0, i32 3
  %744 = load i64, i64* %743, align 8
  %745 = icmp ne i64 %744, 0
  br i1 %745, label %746, label %751

746:                                              ; preds = %741
  %747 = load i8*, i8** %23, align 8
  %748 = getelementptr inbounds i8, i8* %747, i64 1
  %749 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %750 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %749, i32 0, i32 0
  store i8* %748, i8** %750, align 8
  br label %761

751:                                              ; preds = %741
  %752 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %753 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %752, i32 0, i32 4
  %754 = load i8*, i8** %753, align 8
  %755 = call i32 @strlen(i8* %754)
  %756 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %757 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %756, i32 0, i32 4
  %758 = load i8*, i8** %757, align 8
  %759 = zext i32 %755 to i64
  %760 = getelementptr inbounds i8, i8* %758, i64 %759
  store i8* %760, i8** %757, align 8
  store i32 63, i32* %7, align 4
  br label %897

761:                                              ; preds = %746
  br label %803

762:                                              ; preds = %736
  %763 = load %struct.vlc_option*, %struct.vlc_option** %25, align 8
  %764 = getelementptr inbounds %struct.vlc_option, %struct.vlc_option* %763, i32 0, i32 3
  %765 = load i64, i64* %764, align 8
  %766 = icmp ne i64 %765, 0
  br i1 %766, label %767, label %802

767:                                              ; preds = %762
  %768 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %769 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %768, i32 0, i32 1
  %770 = load i32, i32* %769, align 8
  %771 = load i32, i32* %8, align 4
  %772 = icmp slt i32 %770, %771
  br i1 %772, label %773, label %784

773:                                              ; preds = %767
  %774 = load i8**, i8*** %9, align 8
  %775 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %776 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %775, i32 0, i32 1
  %777 = load i32, i32* %776, align 8
  %778 = add nsw i32 %777, 1
  store i32 %778, i32* %776, align 8
  %779 = sext i32 %777 to i64
  %780 = getelementptr inbounds i8*, i8** %774, i64 %779
  %781 = load i8*, i8** %780, align 8
  %782 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %783 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %782, i32 0, i32 0
  store i8* %781, i8** %783, align 8
  br label %801

784:                                              ; preds = %767
  %785 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %786 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %785, i32 0, i32 4
  %787 = load i8*, i8** %786, align 8
  %788 = call i32 @strlen(i8* %787)
  %789 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %790 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %789, i32 0, i32 4
  %791 = load i8*, i8** %790, align 8
  %792 = zext i32 %788 to i64
  %793 = getelementptr inbounds i8, i8* %791, i64 %792
  store i8* %793, i8** %790, align 8
  %794 = load i8*, i8** %10, align 8
  %795 = getelementptr inbounds i8, i8* %794, i64 0
  %796 = load i8, i8* %795, align 1
  %797 = sext i8 %796 to i32
  %798 = icmp eq i32 %797, 58
  %799 = zext i1 %798 to i64
  %800 = select i1 %798, i32 58, i32 63
  store i32 %800, i32* %7, align 4
  br label %897

801:                                              ; preds = %773
  br label %802

802:                                              ; preds = %801, %762
  br label %803

803:                                              ; preds = %802, %761
  %804 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %805 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %804, i32 0, i32 4
  %806 = load i8*, i8** %805, align 8
  %807 = call i32 @strlen(i8* %806)
  %808 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %809 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %808, i32 0, i32 4
  %810 = load i8*, i8** %809, align 8
  %811 = zext i32 %807 to i64
  %812 = getelementptr inbounds i8, i8* %810, i64 %811
  store i8* %812, i8** %809, align 8
  %813 = load i32*, i32** %12, align 8
  %814 = icmp ne i32* %813, null
  br i1 %814, label %815, label %818

815:                                              ; preds = %803
  %816 = load i32, i32* %29, align 4
  %817 = load i32*, i32** %12, align 8
  store i32 %816, i32* %817, align 4
  br label %818

818:                                              ; preds = %815, %803
  %819 = load %struct.vlc_option*, %struct.vlc_option** %25, align 8
  %820 = getelementptr inbounds %struct.vlc_option, %struct.vlc_option* %819, i32 0, i32 2
  %821 = load i8*, i8** %820, align 8
  %822 = icmp ne i8* %821, null
  br i1 %822, label %823, label %830

823:                                              ; preds = %818
  %824 = load %struct.vlc_option*, %struct.vlc_option** %25, align 8
  %825 = getelementptr inbounds %struct.vlc_option, %struct.vlc_option* %824, i32 0, i32 1
  %826 = load i8, i8* %825, align 8
  %827 = load %struct.vlc_option*, %struct.vlc_option** %25, align 8
  %828 = getelementptr inbounds %struct.vlc_option, %struct.vlc_option* %827, i32 0, i32 2
  %829 = load i8*, i8** %828, align 8
  store i8 %826, i8* %829, align 1
  store i32 0, i32* %7, align 4
  br label %897

830:                                              ; preds = %818
  %831 = load %struct.vlc_option*, %struct.vlc_option** %25, align 8
  %832 = getelementptr inbounds %struct.vlc_option, %struct.vlc_option* %831, i32 0, i32 1
  %833 = load i8, i8* %832, align 8
  %834 = sext i8 %833 to i32
  store i32 %834, i32* %7, align 4
  br label %897

835:                                              ; preds = %733
  %836 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %837 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %836, i32 0, i32 4
  store i8* null, i8** %837, align 8
  store i32 87, i32* %7, align 4
  br label %897

838:                                              ; preds = %580, %574
  %839 = load i8*, i8** %22, align 8
  %840 = getelementptr inbounds i8, i8* %839, i64 1
  %841 = load i8, i8* %840, align 1
  %842 = sext i8 %841 to i32
  %843 = icmp eq i32 %842, 58
  br i1 %843, label %844, label %894

844:                                              ; preds = %838
  %845 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %846 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %845, i32 0, i32 4
  %847 = load i8*, i8** %846, align 8
  %848 = load i8, i8* %847, align 1
  %849 = sext i8 %848 to i32
  %850 = icmp ne i32 %849, 0
  br i1 %850, label %851, label %861

851:                                              ; preds = %844
  %852 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %853 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %852, i32 0, i32 4
  %854 = load i8*, i8** %853, align 8
  %855 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %856 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %855, i32 0, i32 0
  store i8* %854, i8** %856, align 8
  %857 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %858 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %857, i32 0, i32 1
  %859 = load i32, i32* %858, align 8
  %860 = add nsw i32 %859, 1
  store i32 %860, i32* %858, align 8
  br label %891

861:                                              ; preds = %844
  %862 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %863 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %862, i32 0, i32 1
  %864 = load i32, i32* %863, align 8
  %865 = load i32, i32* %8, align 4
  %866 = icmp eq i32 %864, %865
  br i1 %866, label %867, label %879

867:                                              ; preds = %861
  %868 = load i8, i8* %21, align 1
  %869 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %870 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %869, i32 0, i32 5
  store i8 %868, i8* %870, align 8
  %871 = load i8*, i8** %10, align 8
  %872 = getelementptr inbounds i8, i8* %871, i64 0
  %873 = load i8, i8* %872, align 1
  %874 = sext i8 %873 to i32
  %875 = icmp eq i32 %874, 58
  br i1 %875, label %876, label %877

876:                                              ; preds = %867
  store i8 58, i8* %21, align 1
  br label %878

877:                                              ; preds = %867
  store i8 63, i8* %21, align 1
  br label %878

878:                                              ; preds = %877, %876
  br label %890

879:                                              ; preds = %861
  %880 = load i8**, i8*** %9, align 8
  %881 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %882 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %881, i32 0, i32 1
  %883 = load i32, i32* %882, align 8
  %884 = add nsw i32 %883, 1
  store i32 %884, i32* %882, align 8
  %885 = sext i32 %883 to i64
  %886 = getelementptr inbounds i8*, i8** %880, i64 %885
  %887 = load i8*, i8** %886, align 8
  %888 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %889 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %888, i32 0, i32 0
  store i8* %887, i8** %889, align 8
  br label %890

890:                                              ; preds = %879, %878
  br label %891

891:                                              ; preds = %890, %851
  %892 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %893 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %892, i32 0, i32 4
  store i8* null, i8** %893, align 8
  br label %894

894:                                              ; preds = %891, %838
  %895 = load i8, i8* %21, align 1
  %896 = sext i8 %895 to i32
  store i32 %896, i32* %7, align 4
  br label %897

897:                                              ; preds = %894, %835, %830, %823, %784, %751, %719, %620, %570, %534, %529, %522, %478, %440, %402, %272, %247
  %898 = load i32, i32* %7, align 4
  ret i32 %898
}

declare dso_local i32 @exchange(i8**, %struct.TYPE_4__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

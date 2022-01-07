; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rax.c_raxGenericInsert.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rax.c_raxGenericInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32, %struct.TYPE_26__** }

@.str = private unnamed_addr constant [31 x i8] c"### Insert %.*s with value %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"### Insert: node representing key exists\0A\00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"ALGO 1: Stopped at compressed node %.*s (%p)\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Still to insert: %.*s\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Splitting at %d: '%c'\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Other (key) letter is '%c'\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Next is %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"iskey %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"key value is %p\0A\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"ALGO 2: Stopped at compressed node %.*s (%p) j = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Inserting compressed node\0A\00", align 1
@RAX_NODE_MAX_SIZE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"Inserting normal node\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raxGenericInsert(%struct.TYPE_27__* %0, i8* %1, i64 %2, i8* %3, i8** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_26__*, align 8
  %17 = alloca %struct.TYPE_26__**, align 8
  %18 = alloca %struct.TYPE_26__**, align 8
  %19 = alloca %struct.TYPE_26__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_26__*, align 8
  %25 = alloca %struct.TYPE_26__*, align 8
  %26 = alloca %struct.TYPE_26__*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca %struct.TYPE_26__**, align 8
  %30 = alloca %struct.TYPE_26__**, align 8
  %31 = alloca %struct.TYPE_26__**, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca %struct.TYPE_26__*, align 8
  %35 = alloca %struct.TYPE_26__*, align 8
  %36 = alloca %struct.TYPE_26__**, align 8
  %37 = alloca %struct.TYPE_26__*, align 8
  %38 = alloca %struct.TYPE_26__**, align 8
  %39 = alloca i8*, align 8
  %40 = alloca %struct.TYPE_26__*, align 8
  %41 = alloca i64, align 8
  %42 = alloca %struct.TYPE_26__*, align 8
  %43 = alloca %struct.TYPE_26__**, align 8
  %44 = alloca %struct.TYPE_26__*, align 8
  %45 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %46 = load i64, i64* %10, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %47, i8* %48, i8* %49)
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i64 @raxLowWalk(%struct.TYPE_27__* %51, i8* %52, i64 %53, %struct.TYPE_26__** %16, %struct.TYPE_26__*** %17, i32* %15, i32* null)
  store i64 %54, i64* %14, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %123

58:                                               ; preds = %6
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* %15, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %123

66:                                               ; preds = %63, %58
  %67 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %72
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %77, %66
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = call %struct.TYPE_26__* @raxReallocForData(%struct.TYPE_26__* %81, i8* %82)
  store %struct.TYPE_26__* %83, %struct.TYPE_26__** %16, align 8
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %85 = icmp ne %struct.TYPE_26__* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %17, align 8
  %88 = call i32 @memcpy(%struct.TYPE_26__** %87, %struct.TYPE_26__** %16, i32 8)
  br label %89

89:                                               ; preds = %86, %80
  br label %90

90:                                               ; preds = %89, %77, %72
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %92 = icmp eq %struct.TYPE_26__* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i64, i64* @ENOMEM, align 8
  store i64 %94, i64* @errno, align 8
  store i32 0, i32* %7, align 4
  br label %684

95:                                               ; preds = %90
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %95
  %101 = load i8**, i8*** %12, align 8
  %102 = icmp ne i8** %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %105 = call i8* @raxGetData(%struct.TYPE_26__* %104)
  %106 = load i8**, i8*** %12, align 8
  store i8* %105, i8** %106, align 8
  br label %107

107:                                              ; preds = %103, %100
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = call i32 @raxSetData(%struct.TYPE_26__* %111, i8* %112)
  br label %114

114:                                              ; preds = %110, %107
  store i64 0, i64* @errno, align 8
  store i32 0, i32* %7, align 4
  br label %684

115:                                              ; preds = %95
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = call i32 @raxSetData(%struct.TYPE_26__* %116, i8* %117)
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  store i32 1, i32* %7, align 4
  br label %684

123:                                              ; preds = %63, %6
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %408

128:                                              ; preds = %123
  %129 = load i64, i64* %14, align 8
  %130 = load i64, i64* %10, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %408

132:                                              ; preds = %128
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 4
  %138 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %137, align 8
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %140 = bitcast %struct.TYPE_26__* %139 to i8*
  %141 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %135, %struct.TYPE_26__** %138, i8* %140)
  %142 = load i64, i64* %10, align 8
  %143 = load i64, i64* %14, align 8
  %144 = sub i64 %142, %143
  %145 = trunc i64 %144 to i32
  %146 = load i8*, i8** %9, align 8
  %147 = load i64, i64* %14, align 8
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  %149 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %145, i8* %148)
  %150 = load i32, i32* %15, align 4
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 4
  %153 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %152, align 8
  %154 = bitcast %struct.TYPE_26__** %153 to i8*
  %155 = load i32, i32* %15, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %150, i32 %159)
  %161 = load i8*, i8** %9, align 8
  %162 = load i64, i64* %14, align 8
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %165)
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %168 = call %struct.TYPE_26__** @raxNodeLastChildPtr(%struct.TYPE_26__* %167)
  store %struct.TYPE_26__** %168, %struct.TYPE_26__*** %18, align 8
  %169 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %18, align 8
  %170 = call i32 @memcpy(%struct.TYPE_26__** %19, %struct.TYPE_26__** %169, i32 8)
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %172 = bitcast %struct.TYPE_26__* %171 to i8*
  %173 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %172)
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %176)
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %132
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %184 = call i8* @raxGetData(%struct.TYPE_26__* %183)
  %185 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %184)
  br label %186

186:                                              ; preds = %182, %132
  %187 = load i32, i32* %15, align 4
  %188 = sext i32 %187 to i64
  store i64 %188, i64* %20, align 8
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %15, align 4
  %193 = sub nsw i32 %191, %192
  %194 = sub nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  store i64 %195, i64* %21, align 8
  %196 = load i64, i64* %20, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %209, label %198

198:                                              ; preds = %186
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %200 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %198
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %205 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  %208 = xor i1 %207, true
  br label %209

209:                                              ; preds = %203, %198, %186
  %210 = phi i1 [ false, %198 ], [ false, %186 ], [ %208, %203 ]
  %211 = zext i1 %210 to i32
  store i32 %211, i32* %22, align 4
  %212 = load i32, i32* %22, align 4
  %213 = call %struct.TYPE_26__* @raxNewNode(i32 1, i32 %212)
  store %struct.TYPE_26__* %213, %struct.TYPE_26__** %24, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %25, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %26, align 8
  %214 = load i64, i64* %20, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %240

216:                                              ; preds = %209
  %217 = load i64, i64* %20, align 8
  %218 = add i64 24, %217
  %219 = load i64, i64* %20, align 8
  %220 = trunc i64 %219 to i32
  %221 = call i32 @raxPadding(i32 %220)
  %222 = sext i32 %221 to i64
  %223 = add i64 %218, %222
  %224 = add i64 %223, 8
  store i64 %224, i64* %23, align 8
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %226 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %216
  %230 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %231 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %229
  %235 = load i64, i64* %23, align 8
  %236 = add i64 %235, 8
  store i64 %236, i64* %23, align 8
  br label %237

237:                                              ; preds = %234, %229, %216
  %238 = load i64, i64* %23, align 8
  %239 = call %struct.TYPE_26__* @rax_malloc(i64 %238)
  store %struct.TYPE_26__* %239, %struct.TYPE_26__** %25, align 8
  br label %240

240:                                              ; preds = %237, %209
  %241 = load i64, i64* %21, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %254

243:                                              ; preds = %240
  %244 = load i64, i64* %21, align 8
  %245 = add i64 24, %244
  %246 = load i64, i64* %21, align 8
  %247 = trunc i64 %246 to i32
  %248 = call i32 @raxPadding(i32 %247)
  %249 = sext i32 %248 to i64
  %250 = add i64 %245, %249
  %251 = add i64 %250, 8
  store i64 %251, i64* %23, align 8
  %252 = load i64, i64* %23, align 8
  %253 = call %struct.TYPE_26__* @rax_malloc(i64 %252)
  store %struct.TYPE_26__* %253, %struct.TYPE_26__** %26, align 8
  br label %254

254:                                              ; preds = %243, %240
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %256 = icmp eq %struct.TYPE_26__* %255, null
  br i1 %256, label %269, label %257

257:                                              ; preds = %254
  %258 = load i64, i64* %20, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %257
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %262 = icmp eq %struct.TYPE_26__* %261, null
  br i1 %262, label %269, label %263

263:                                              ; preds = %260, %257
  %264 = load i64, i64* %21, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %277

266:                                              ; preds = %263
  %267 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %268 = icmp eq %struct.TYPE_26__* %267, null
  br i1 %268, label %269, label %277

269:                                              ; preds = %266, %260, %254
  %270 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %271 = call i32 @rax_free(%struct.TYPE_26__* %270)
  %272 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %273 = call i32 @rax_free(%struct.TYPE_26__* %272)
  %274 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %275 = call i32 @rax_free(%struct.TYPE_26__* %274)
  %276 = load i64, i64* @ENOMEM, align 8
  store i64 %276, i64* @errno, align 8
  store i32 0, i32* %7, align 4
  br label %684

277:                                              ; preds = %266, %263
  %278 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %279 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %278, i32 0, i32 4
  %280 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %279, align 8
  %281 = load i32, i32* %15, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %280, i64 %282
  %284 = load %struct.TYPE_26__*, %struct.TYPE_26__** %283, align 8
  %285 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %286 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %285, i32 0, i32 4
  %287 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %287, i64 0
  store %struct.TYPE_26__* %284, %struct.TYPE_26__** %288, align 8
  %289 = load i32, i32* %15, align 4
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %305

291:                                              ; preds = %277
  %292 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %293 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %291
  %297 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %298 = call i8* @raxGetData(%struct.TYPE_26__* %297)
  store i8* %298, i8** %27, align 8
  %299 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %300 = load i8*, i8** %27, align 8
  %301 = call i32 @raxSetData(%struct.TYPE_26__* %299, i8* %300)
  br label %302

302:                                              ; preds = %296, %291
  %303 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %17, align 8
  %304 = call i32 @memcpy(%struct.TYPE_26__** %303, %struct.TYPE_26__** %24, i32 8)
  br label %360

305:                                              ; preds = %277
  %306 = load i32, i32* %15, align 4
  %307 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %308 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %307, i32 0, i32 3
  store i32 %306, i32* %308, align 4
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %310 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %309, i32 0, i32 4
  %311 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %310, align 8
  %312 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %313 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %312, i32 0, i32 4
  %314 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %313, align 8
  %315 = load i32, i32* %15, align 4
  %316 = call i32 @memcpy(%struct.TYPE_26__** %311, %struct.TYPE_26__** %314, i32 %315)
  %317 = load i32, i32* %15, align 4
  %318 = icmp sgt i32 %317, 1
  %319 = zext i1 %318 to i64
  %320 = select i1 %318, i32 1, i32 0
  %321 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %322 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %321, i32 0, i32 0
  store i32 %320, i32* %322, align 8
  %323 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %324 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %327 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %326, i32 0, i32 1
  store i32 %325, i32* %327, align 4
  %328 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %329 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %332 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %331, i32 0, i32 2
  store i32 %330, i32* %332, align 8
  %333 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %334 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %348

337:                                              ; preds = %305
  %338 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %339 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %348, label %342

342:                                              ; preds = %337
  %343 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %344 = call i8* @raxGetData(%struct.TYPE_26__* %343)
  store i8* %344, i8** %28, align 8
  %345 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %346 = load i8*, i8** %28, align 8
  %347 = call i32 @raxSetData(%struct.TYPE_26__* %345, i8* %346)
  br label %348

348:                                              ; preds = %342, %337, %305
  %349 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %350 = call %struct.TYPE_26__** @raxNodeLastChildPtr(%struct.TYPE_26__* %349)
  store %struct.TYPE_26__** %350, %struct.TYPE_26__*** %29, align 8
  %351 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %29, align 8
  %352 = call i32 @memcpy(%struct.TYPE_26__** %351, %struct.TYPE_26__** %24, i32 8)
  %353 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %17, align 8
  %354 = call i32 @memcpy(%struct.TYPE_26__** %353, %struct.TYPE_26__** %25, i32 8)
  %355 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %29, align 8
  store %struct.TYPE_26__** %355, %struct.TYPE_26__*** %17, align 8
  %356 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %357 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %357, align 4
  br label %360

360:                                              ; preds = %348, %302
  %361 = load i64, i64* %21, align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %398

363:                                              ; preds = %360
  %364 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %365 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %364, i32 0, i32 1
  store i32 0, i32* %365, align 4
  %366 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %367 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %366, i32 0, i32 2
  store i32 0, i32* %367, align 8
  %368 = load i64, i64* %21, align 8
  %369 = trunc i64 %368 to i32
  %370 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %371 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %370, i32 0, i32 3
  store i32 %369, i32* %371, align 4
  %372 = load i64, i64* %21, align 8
  %373 = icmp ugt i64 %372, 1
  %374 = zext i1 %373 to i32
  %375 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %376 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %375, i32 0, i32 0
  store i32 %374, i32* %376, align 8
  %377 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %378 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %377, i32 0, i32 4
  %379 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %378, align 8
  %380 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %381 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %380, i32 0, i32 4
  %382 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %381, align 8
  %383 = load i32, i32* %15, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %385, i64 1
  %387 = load i64, i64* %21, align 8
  %388 = trunc i64 %387 to i32
  %389 = call i32 @memcpy(%struct.TYPE_26__** %379, %struct.TYPE_26__** %386, i32 %388)
  %390 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %391 = call %struct.TYPE_26__** @raxNodeLastChildPtr(%struct.TYPE_26__* %390)
  store %struct.TYPE_26__** %391, %struct.TYPE_26__*** %30, align 8
  %392 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %30, align 8
  %393 = call i32 @memcpy(%struct.TYPE_26__** %392, %struct.TYPE_26__** %19, i32 8)
  %394 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %395 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %395, align 4
  br label %400

398:                                              ; preds = %360
  %399 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  store %struct.TYPE_26__* %399, %struct.TYPE_26__** %26, align 8
  br label %400

400:                                              ; preds = %398, %363
  %401 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %402 = call %struct.TYPE_26__** @raxNodeLastChildPtr(%struct.TYPE_26__* %401)
  store %struct.TYPE_26__** %402, %struct.TYPE_26__*** %31, align 8
  %403 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %31, align 8
  %404 = call i32 @memcpy(%struct.TYPE_26__** %403, %struct.TYPE_26__** %26, i32 8)
  %405 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %406 = call i32 @rax_free(%struct.TYPE_26__* %405)
  %407 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  store %struct.TYPE_26__* %407, %struct.TYPE_26__** %16, align 8
  br label %569

408:                                              ; preds = %128, %123
  %409 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %410 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %568

413:                                              ; preds = %408
  %414 = load i64, i64* %14, align 8
  %415 = load i64, i64* %10, align 8
  %416 = icmp eq i64 %414, %415
  br i1 %416, label %417, label %568

417:                                              ; preds = %413
  %418 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %419 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %418, i32 0, i32 3
  %420 = load i32, i32* %419, align 4
  %421 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %422 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %421, i32 0, i32 4
  %423 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %422, align 8
  %424 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %425 = bitcast %struct.TYPE_26__* %424 to i8*
  %426 = load i32, i32* %15, align 4
  %427 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0), i32 %420, %struct.TYPE_26__** %423, i8* %425, i32 %426)
  %428 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %429 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %428, i32 0, i32 3
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* %15, align 4
  %432 = sub nsw i32 %430, %431
  %433 = sext i32 %432 to i64
  store i64 %433, i64* %32, align 8
  %434 = load i64, i64* %32, align 8
  %435 = add i64 24, %434
  %436 = load i64, i64* %32, align 8
  %437 = trunc i64 %436 to i32
  %438 = call i32 @raxPadding(i32 %437)
  %439 = sext i32 %438 to i64
  %440 = add i64 %435, %439
  %441 = add i64 %440, 8
  store i64 %441, i64* %33, align 8
  %442 = load i8*, i8** %11, align 8
  %443 = icmp ne i8* %442, null
  br i1 %443, label %444, label %447

444:                                              ; preds = %417
  %445 = load i64, i64* %33, align 8
  %446 = add i64 %445, 8
  store i64 %446, i64* %33, align 8
  br label %447

447:                                              ; preds = %444, %417
  %448 = load i64, i64* %33, align 8
  %449 = call %struct.TYPE_26__* @rax_malloc(i64 %448)
  store %struct.TYPE_26__* %449, %struct.TYPE_26__** %34, align 8
  %450 = load i32, i32* %15, align 4
  %451 = sext i32 %450 to i64
  %452 = add i64 24, %451
  %453 = load i32, i32* %15, align 4
  %454 = call i32 @raxPadding(i32 %453)
  %455 = sext i32 %454 to i64
  %456 = add i64 %452, %455
  %457 = add i64 %456, 8
  store i64 %457, i64* %33, align 8
  %458 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %459 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %458, i32 0, i32 1
  %460 = load i32, i32* %459, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %470

462:                                              ; preds = %447
  %463 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %464 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 8
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %470, label %467

467:                                              ; preds = %462
  %468 = load i64, i64* %33, align 8
  %469 = add i64 %468, 8
  store i64 %469, i64* %33, align 8
  br label %470

470:                                              ; preds = %467, %462, %447
  %471 = load i64, i64* %33, align 8
  %472 = call %struct.TYPE_26__* @rax_malloc(i64 %471)
  store %struct.TYPE_26__* %472, %struct.TYPE_26__** %35, align 8
  %473 = load %struct.TYPE_26__*, %struct.TYPE_26__** %34, align 8
  %474 = icmp eq %struct.TYPE_26__* %473, null
  br i1 %474, label %478, label %475

475:                                              ; preds = %470
  %476 = load %struct.TYPE_26__*, %struct.TYPE_26__** %35, align 8
  %477 = icmp eq %struct.TYPE_26__* %476, null
  br i1 %477, label %478, label %484

478:                                              ; preds = %475, %470
  %479 = load %struct.TYPE_26__*, %struct.TYPE_26__** %34, align 8
  %480 = call i32 @rax_free(%struct.TYPE_26__* %479)
  %481 = load %struct.TYPE_26__*, %struct.TYPE_26__** %35, align 8
  %482 = call i32 @rax_free(%struct.TYPE_26__* %481)
  %483 = load i64, i64* @ENOMEM, align 8
  store i64 %483, i64* @errno, align 8
  store i32 0, i32* %7, align 4
  br label %684

484:                                              ; preds = %475
  %485 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %486 = call %struct.TYPE_26__** @raxNodeLastChildPtr(%struct.TYPE_26__* %485)
  store %struct.TYPE_26__** %486, %struct.TYPE_26__*** %36, align 8
  %487 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %36, align 8
  %488 = call i32 @memcpy(%struct.TYPE_26__** %37, %struct.TYPE_26__** %487, i32 8)
  %489 = load i64, i64* %32, align 8
  %490 = trunc i64 %489 to i32
  %491 = load %struct.TYPE_26__*, %struct.TYPE_26__** %34, align 8
  %492 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %491, i32 0, i32 3
  store i32 %490, i32* %492, align 4
  %493 = load i64, i64* %32, align 8
  %494 = icmp ugt i64 %493, 1
  %495 = zext i1 %494 to i32
  %496 = load %struct.TYPE_26__*, %struct.TYPE_26__** %34, align 8
  %497 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %496, i32 0, i32 0
  store i32 %495, i32* %497, align 8
  %498 = load %struct.TYPE_26__*, %struct.TYPE_26__** %34, align 8
  %499 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %498, i32 0, i32 1
  store i32 1, i32* %499, align 4
  %500 = load %struct.TYPE_26__*, %struct.TYPE_26__** %34, align 8
  %501 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %500, i32 0, i32 2
  store i32 0, i32* %501, align 8
  %502 = load %struct.TYPE_26__*, %struct.TYPE_26__** %34, align 8
  %503 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %502, i32 0, i32 4
  %504 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %503, align 8
  %505 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %506 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %505, i32 0, i32 4
  %507 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %506, align 8
  %508 = load i32, i32* %15, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %507, i64 %509
  %511 = load i64, i64* %32, align 8
  %512 = trunc i64 %511 to i32
  %513 = call i32 @memcpy(%struct.TYPE_26__** %504, %struct.TYPE_26__** %510, i32 %512)
  %514 = load %struct.TYPE_26__*, %struct.TYPE_26__** %34, align 8
  %515 = load i8*, i8** %11, align 8
  %516 = call i32 @raxSetData(%struct.TYPE_26__* %514, i8* %515)
  %517 = load %struct.TYPE_26__*, %struct.TYPE_26__** %34, align 8
  %518 = call %struct.TYPE_26__** @raxNodeLastChildPtr(%struct.TYPE_26__* %517)
  store %struct.TYPE_26__** %518, %struct.TYPE_26__*** %38, align 8
  %519 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %38, align 8
  %520 = call i32 @memcpy(%struct.TYPE_26__** %519, %struct.TYPE_26__** %37, i32 8)
  %521 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %522 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %521, i32 0, i32 1
  %523 = load i32, i32* %522, align 4
  %524 = add nsw i32 %523, 1
  store i32 %524, i32* %522, align 4
  %525 = load i32, i32* %15, align 4
  %526 = load %struct.TYPE_26__*, %struct.TYPE_26__** %35, align 8
  %527 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %526, i32 0, i32 3
  store i32 %525, i32* %527, align 4
  %528 = load i32, i32* %15, align 4
  %529 = icmp sgt i32 %528, 1
  %530 = zext i1 %529 to i32
  %531 = load %struct.TYPE_26__*, %struct.TYPE_26__** %35, align 8
  %532 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %531, i32 0, i32 0
  store i32 %530, i32* %532, align 8
  %533 = load %struct.TYPE_26__*, %struct.TYPE_26__** %35, align 8
  %534 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %533, i32 0, i32 1
  store i32 0, i32* %534, align 4
  %535 = load %struct.TYPE_26__*, %struct.TYPE_26__** %35, align 8
  %536 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %535, i32 0, i32 2
  store i32 0, i32* %536, align 8
  %537 = load %struct.TYPE_26__*, %struct.TYPE_26__** %35, align 8
  %538 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %537, i32 0, i32 4
  %539 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %538, align 8
  %540 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %541 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %540, i32 0, i32 4
  %542 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %541, align 8
  %543 = load i32, i32* %15, align 4
  %544 = call i32 @memcpy(%struct.TYPE_26__** %539, %struct.TYPE_26__** %542, i32 %543)
  %545 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %17, align 8
  %546 = call i32 @memcpy(%struct.TYPE_26__** %545, %struct.TYPE_26__** %35, i32 8)
  %547 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %548 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %547, i32 0, i32 1
  %549 = load i32, i32* %548, align 4
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %557

551:                                              ; preds = %484
  %552 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %553 = call i8* @raxGetData(%struct.TYPE_26__* %552)
  store i8* %553, i8** %39, align 8
  %554 = load %struct.TYPE_26__*, %struct.TYPE_26__** %35, align 8
  %555 = load i8*, i8** %39, align 8
  %556 = call i32 @raxSetData(%struct.TYPE_26__* %554, i8* %555)
  br label %557

557:                                              ; preds = %551, %484
  %558 = load %struct.TYPE_26__*, %struct.TYPE_26__** %35, align 8
  %559 = call %struct.TYPE_26__** @raxNodeLastChildPtr(%struct.TYPE_26__* %558)
  store %struct.TYPE_26__** %559, %struct.TYPE_26__*** %38, align 8
  %560 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %38, align 8
  %561 = call i32 @memcpy(%struct.TYPE_26__** %560, %struct.TYPE_26__** %34, i32 8)
  %562 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %563 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %562, i32 0, i32 0
  %564 = load i32, i32* %563, align 4
  %565 = add nsw i32 %564, 1
  store i32 %565, i32* %563, align 4
  %566 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %567 = call i32 @rax_free(%struct.TYPE_26__* %566)
  store i32 1, i32* %7, align 4
  br label %684

568:                                              ; preds = %413, %408
  br label %569

569:                                              ; preds = %568, %400
  br label %570

570:                                              ; preds = %631, %569
  %571 = load i64, i64* %14, align 8
  %572 = load i64, i64* %10, align 8
  %573 = icmp ult i64 %571, %572
  br i1 %573, label %574, label %637

574:                                              ; preds = %570
  %575 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %576 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %575, i32 0, i32 3
  %577 = load i32, i32* %576, align 4
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %579, label %613

579:                                              ; preds = %574
  %580 = load i64, i64* %10, align 8
  %581 = load i64, i64* %14, align 8
  %582 = sub i64 %580, %581
  %583 = icmp ugt i64 %582, 1
  br i1 %583, label %584, label %613

584:                                              ; preds = %579
  %585 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %586 = load i64, i64* %10, align 8
  %587 = load i64, i64* %14, align 8
  %588 = sub i64 %586, %587
  store i64 %588, i64* %41, align 8
  %589 = load i64, i64* %41, align 8
  %590 = load i64, i64* @RAX_NODE_MAX_SIZE, align 8
  %591 = icmp ugt i64 %589, %590
  br i1 %591, label %592, label %594

592:                                              ; preds = %584
  %593 = load i64, i64* @RAX_NODE_MAX_SIZE, align 8
  store i64 %593, i64* %41, align 8
  br label %594

594:                                              ; preds = %592, %584
  %595 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %596 = load i8*, i8** %9, align 8
  %597 = load i64, i64* %14, align 8
  %598 = getelementptr inbounds i8, i8* %596, i64 %597
  %599 = load i64, i64* %41, align 8
  %600 = call %struct.TYPE_26__* @raxCompressNode(%struct.TYPE_26__* %595, i8* %598, i64 %599, %struct.TYPE_26__** %40)
  store %struct.TYPE_26__* %600, %struct.TYPE_26__** %42, align 8
  %601 = load %struct.TYPE_26__*, %struct.TYPE_26__** %42, align 8
  %602 = icmp eq %struct.TYPE_26__* %601, null
  br i1 %602, label %603, label %604

603:                                              ; preds = %594
  br label %661

604:                                              ; preds = %594
  %605 = load %struct.TYPE_26__*, %struct.TYPE_26__** %42, align 8
  store %struct.TYPE_26__* %605, %struct.TYPE_26__** %16, align 8
  %606 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %17, align 8
  %607 = call i32 @memcpy(%struct.TYPE_26__** %606, %struct.TYPE_26__** %16, i32 8)
  %608 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %609 = call %struct.TYPE_26__** @raxNodeLastChildPtr(%struct.TYPE_26__* %608)
  store %struct.TYPE_26__** %609, %struct.TYPE_26__*** %17, align 8
  %610 = load i64, i64* %41, align 8
  %611 = load i64, i64* %14, align 8
  %612 = add i64 %611, %610
  store i64 %612, i64* %14, align 8
  br label %631

613:                                              ; preds = %579, %574
  %614 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %615 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %616 = load i8*, i8** %9, align 8
  %617 = load i64, i64* %14, align 8
  %618 = getelementptr inbounds i8, i8* %616, i64 %617
  %619 = load i8, i8* %618, align 1
  %620 = call %struct.TYPE_26__* @raxAddChild(%struct.TYPE_26__* %615, i8 zeroext %619, %struct.TYPE_26__** %40, %struct.TYPE_26__*** %43)
  store %struct.TYPE_26__* %620, %struct.TYPE_26__** %44, align 8
  %621 = load %struct.TYPE_26__*, %struct.TYPE_26__** %44, align 8
  %622 = icmp eq %struct.TYPE_26__* %621, null
  br i1 %622, label %623, label %624

623:                                              ; preds = %613
  br label %661

624:                                              ; preds = %613
  %625 = load %struct.TYPE_26__*, %struct.TYPE_26__** %44, align 8
  store %struct.TYPE_26__* %625, %struct.TYPE_26__** %16, align 8
  %626 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %17, align 8
  %627 = call i32 @memcpy(%struct.TYPE_26__** %626, %struct.TYPE_26__** %16, i32 8)
  %628 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %43, align 8
  store %struct.TYPE_26__** %628, %struct.TYPE_26__*** %17, align 8
  %629 = load i64, i64* %14, align 8
  %630 = add i64 %629, 1
  store i64 %630, i64* %14, align 8
  br label %631

631:                                              ; preds = %624, %604
  %632 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %633 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %632, i32 0, i32 1
  %634 = load i32, i32* %633, align 4
  %635 = add nsw i32 %634, 1
  store i32 %635, i32* %633, align 4
  %636 = load %struct.TYPE_26__*, %struct.TYPE_26__** %40, align 8
  store %struct.TYPE_26__* %636, %struct.TYPE_26__** %16, align 8
  br label %570

637:                                              ; preds = %570
  %638 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %639 = load i8*, i8** %11, align 8
  %640 = call %struct.TYPE_26__* @raxReallocForData(%struct.TYPE_26__* %638, i8* %639)
  store %struct.TYPE_26__* %640, %struct.TYPE_26__** %45, align 8
  %641 = load %struct.TYPE_26__*, %struct.TYPE_26__** %45, align 8
  %642 = icmp eq %struct.TYPE_26__* %641, null
  br i1 %642, label %643, label %644

643:                                              ; preds = %637
  br label %661

644:                                              ; preds = %637
  %645 = load %struct.TYPE_26__*, %struct.TYPE_26__** %45, align 8
  store %struct.TYPE_26__* %645, %struct.TYPE_26__** %16, align 8
  %646 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %647 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %646, i32 0, i32 1
  %648 = load i32, i32* %647, align 4
  %649 = icmp ne i32 %648, 0
  br i1 %649, label %655, label %650

650:                                              ; preds = %644
  %651 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %652 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %651, i32 0, i32 0
  %653 = load i32, i32* %652, align 4
  %654 = add nsw i32 %653, 1
  store i32 %654, i32* %652, align 4
  br label %655

655:                                              ; preds = %650, %644
  %656 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %657 = load i8*, i8** %11, align 8
  %658 = call i32 @raxSetData(%struct.TYPE_26__* %656, i8* %657)
  %659 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %17, align 8
  %660 = call i32 @memcpy(%struct.TYPE_26__** %659, %struct.TYPE_26__** %16, i32 8)
  store i32 1, i32* %7, align 4
  br label %684

661:                                              ; preds = %643, %623, %603
  %662 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %663 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %662, i32 0, i32 3
  %664 = load i32, i32* %663, align 4
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %666, label %682

666:                                              ; preds = %661
  %667 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %668 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %667, i32 0, i32 2
  store i32 1, i32* %668, align 8
  %669 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %670 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %669, i32 0, i32 1
  store i32 1, i32* %670, align 4
  %671 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %672 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %671, i32 0, i32 0
  %673 = load i32, i32* %672, align 4
  %674 = add nsw i32 %673, 1
  store i32 %674, i32* %672, align 4
  %675 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %676 = load i8*, i8** %9, align 8
  %677 = load i64, i64* %14, align 8
  %678 = call i64 @raxRemove(%struct.TYPE_27__* %675, i8* %676, i64 %677, i32* null)
  %679 = icmp ne i64 %678, 0
  %680 = zext i1 %679 to i32
  %681 = call i32 @assert(i32 %680)
  br label %682

682:                                              ; preds = %666, %661
  %683 = load i64, i64* @ENOMEM, align 8
  store i64 %683, i64* @errno, align 8
  store i32 0, i32* %7, align 4
  br label %684

684:                                              ; preds = %682, %655, %557, %478, %269, %115, %114, %93
  %685 = load i32, i32* %7, align 4
  ret i32 %685
}

declare dso_local i32 @debugf(i8*, ...) #1

declare dso_local i64 @raxLowWalk(%struct.TYPE_27__*, i8*, i64, %struct.TYPE_26__**, %struct.TYPE_26__***, i32*, i32*) #1

declare dso_local %struct.TYPE_26__* @raxReallocForData(%struct.TYPE_26__*, i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_26__**, %struct.TYPE_26__**, i32) #1

declare dso_local i8* @raxGetData(%struct.TYPE_26__*) #1

declare dso_local i32 @raxSetData(%struct.TYPE_26__*, i8*) #1

declare dso_local %struct.TYPE_26__** @raxNodeLastChildPtr(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @raxNewNode(i32, i32) #1

declare dso_local i32 @raxPadding(i32) #1

declare dso_local %struct.TYPE_26__* @rax_malloc(i64) #1

declare dso_local i32 @rax_free(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @raxCompressNode(%struct.TYPE_26__*, i8*, i64, %struct.TYPE_26__**) #1

declare dso_local %struct.TYPE_26__* @raxAddChild(%struct.TYPE_26__*, i8 zeroext, %struct.TYPE_26__**, %struct.TYPE_26__***) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @raxRemove(%struct.TYPE_27__*, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

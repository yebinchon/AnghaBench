; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_whereScanNext.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_whereScanNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_26__*, %struct.TYPE_19__ }
%struct.TYPE_26__ = type { i32, i64, i32, i64, %struct.TYPE_26__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32, i32, i64*, i32*, i32, %struct.TYPE_24__*, %struct.TYPE_24__*, i64, i32, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_24__*, %struct.TYPE_20__*, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }

@XN_EXPR = common dso_local global i64 0, align 8
@EP_FromJoin = common dso_local global i32 0, align 4
@WO_EQUIV = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i64 0, align 8
@WO_ISNULL = common dso_local global i32 0, align 4
@WO_EQ = common dso_local global i32 0, align 4
@WO_IS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_23__*)* @whereScanNext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @whereScanNext(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp sle i32 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 7
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  store %struct.TYPE_24__* %27, %struct.TYPE_24__** %7, align 8
  br label %28

28:                                               ; preds = %1, %347
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 3
  %31 = load i64*, i64** %30, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %31, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %5, align 8
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %41, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %4, align 4
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %50 = icmp ne %struct.TYPE_24__* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  br label %53

53:                                               ; preds = %335, %28
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i64 %58
  store %struct.TYPE_22__* %59, %struct.TYPE_22__** %8, align 8
  br label %60

60:                                               ; preds = %326, %53
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %331

66:                                               ; preds = %60
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %325

72:                                               ; preds = %66
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %325

79:                                               ; preds = %72
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* @XN_EXPR, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %95, label %83

83:                                               ; preds = %79
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 10
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i64 @sqlite3ExprCompareSkip(i32 %88, i32 %91, i32 %92)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %325

95:                                               ; preds = %83, %79
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp sle i32 %98, 1
  br i1 %99, label %107, label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %102, align 8
  %104 = load i32, i32* @EP_FromJoin, align 4
  %105 = call i32 @ExprHasProperty(%struct.TYPE_26__* %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %325, label %107

107:                                              ; preds = %100, %95
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @WO_EQUIV, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %200

114:                                              ; preds = %107
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @ArraySize(i32* %120)
  %122 = icmp slt i32 %117, %121
  br i1 %122, label %123, label %200

123:                                              ; preds = %114
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 4
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %127, align 8
  %129 = call %struct.TYPE_26__* @sqlite3ExprSkipCollate(%struct.TYPE_26__* %128)
  store %struct.TYPE_26__* %129, %struct.TYPE_26__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @TK_COLUMN, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %200

134:                                              ; preds = %123
  store i32 0, i32* %10, align 4
  br label %135

135:                                              ; preds = %167, %134
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %170

141:                                              ; preds = %135
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = icmp eq i32 %148, %151
  br i1 %152, label %153, label %166

153:                                              ; preds = %141
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 3
  %156 = load i64*, i64** %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %160, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %153
  br label %170

166:                                              ; preds = %153, %141
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %10, align 4
  br label %135

170:                                              ; preds = %165, %135
  %171 = load i32, i32* %10, align 4
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %171, %174
  br i1 %175, label %176, label %199

176:                                              ; preds = %170
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 4
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %10, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %179, i32* %185, align 4
  %186 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 3
  %191 = load i64*, i64** %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %191, i64 %193
  store i64 %188, i64* %194, align 8
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 8
  br label %199

199:                                              ; preds = %176, %170
  br label %200

200:                                              ; preds = %199, %123, %114, %107
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 8
  %207 = and i32 %203, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %324

209:                                              ; preds = %200
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 8
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %269

214:                                              ; preds = %209
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @WO_ISNULL, align 4
  %219 = and i32 %217, %218
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %269

221:                                              ; preds = %214
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 2
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %225, align 8
  store %struct.TYPE_25__* %226, %struct.TYPE_25__** %12, align 8
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %228, align 8
  store %struct.TYPE_26__* %229, %struct.TYPE_26__** %6, align 8
  %230 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i32 0, i32 9
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @sqlite3IndexAffinityOk(%struct.TYPE_26__* %230, i32 %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %221
  br label %326

237:                                              ; preds = %221
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @assert(i32 %240)
  %242 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %243 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %246, i32 0, i32 4
  %248 = load %struct.TYPE_26__*, %struct.TYPE_26__** %247, align 8
  %249 = call %struct.TYPE_27__* @sqlite3BinaryCompareCollSeq(%struct.TYPE_25__* %242, i32 %245, %struct.TYPE_26__* %248)
  store %struct.TYPE_27__* %249, %struct.TYPE_27__** %11, align 8
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %251 = icmp eq %struct.TYPE_27__* %250, null
  br i1 %251, label %252, label %258

252:                                              ; preds = %237
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_27__*, %struct.TYPE_27__** %256, align 8
  store %struct.TYPE_27__* %257, %struct.TYPE_27__** %11, align 8
  br label %258

258:                                              ; preds = %252, %237
  %259 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %260 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %262, i32 0, i32 8
  %264 = load i64, i64* %263, align 8
  %265 = call i64 @sqlite3StrICmp(i32 %261, i64 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %258
  br label %326

268:                                              ; preds = %258
  br label %269

269:                                              ; preds = %268, %214, %209
  %270 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @WO_EQ, align 4
  %274 = load i32, i32* @WO_IS, align 4
  %275 = or i32 %273, %274
  %276 = and i32 %272, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %315

278:                                              ; preds = %269
  %279 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %279, i32 0, i32 2
  %281 = load %struct.TYPE_26__*, %struct.TYPE_26__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %281, i32 0, i32 4
  %283 = load %struct.TYPE_26__*, %struct.TYPE_26__** %282, align 8
  store %struct.TYPE_26__* %283, %struct.TYPE_26__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @TK_COLUMN, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %315

288:                                              ; preds = %278
  %289 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %292, i32 0, i32 4
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 0
  %296 = load i32, i32* %295, align 4
  %297 = icmp eq i32 %291, %296
  br i1 %297, label %298, label %315

298:                                              ; preds = %288
  %299 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %299, i32 0, i32 3
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %302, i32 0, i32 3
  %304 = load i64*, i64** %303, align 8
  %305 = getelementptr inbounds i64, i64* %304, i64 0
  %306 = load i64, i64* %305, align 8
  %307 = icmp eq i64 %301, %306
  br i1 %307, label %308, label %315

308:                                              ; preds = %298
  %309 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @WO_IS, align 4
  %313 = and i32 %311, %312
  %314 = call i32 @testcase(i32 %313)
  br label %326

315:                                              ; preds = %298, %288, %278, %269
  %316 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %317 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %317, i32 0, i32 7
  store %struct.TYPE_24__* %316, %struct.TYPE_24__** %318, align 8
  %319 = load i32, i32* %9, align 4
  %320 = add nsw i32 %319, 1
  %321 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %321, i32 0, i32 0
  store i32 %320, i32* %322, align 8
  %323 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %323, %struct.TYPE_22__** %2, align 8
  br label %356

324:                                              ; preds = %200
  br label %325

325:                                              ; preds = %324, %100, %83, %72, %66
  br label %326

326:                                              ; preds = %325, %308, %267, %236
  %327 = load i32, i32* %9, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %9, align 4
  %329 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %329, i32 1
  store %struct.TYPE_22__* %330, %struct.TYPE_22__** %8, align 8
  br label %60

331:                                              ; preds = %60
  %332 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %332, i32 0, i32 1
  %334 = load %struct.TYPE_24__*, %struct.TYPE_24__** %333, align 8
  store %struct.TYPE_24__* %334, %struct.TYPE_24__** %7, align 8
  store i32 0, i32* %9, align 4
  br label %335

335:                                              ; preds = %331
  %336 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %337 = icmp ne %struct.TYPE_24__* %336, null
  br i1 %337, label %53, label %338

338:                                              ; preds = %335
  %339 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = icmp sge i32 %341, %344
  br i1 %345, label %346, label %347

346:                                              ; preds = %338
  br label %355

347:                                              ; preds = %338
  %348 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %348, i32 0, i32 6
  %350 = load %struct.TYPE_24__*, %struct.TYPE_24__** %349, align 8
  store %struct.TYPE_24__* %350, %struct.TYPE_24__** %7, align 8
  store i32 0, i32* %9, align 4
  %351 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %352, align 4
  br label %28

355:                                              ; preds = %346
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %2, align 8
  br label %356

356:                                              ; preds = %355, %315
  %357 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  ret %struct.TYPE_22__* %357
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3ExprCompareSkip(i32, i32, i32) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @ArraySize(i32*) #1

declare dso_local %struct.TYPE_26__* @sqlite3ExprSkipCollate(%struct.TYPE_26__*) #1

declare dso_local i32 @sqlite3IndexAffinityOk(%struct.TYPE_26__*, i32) #1

declare dso_local %struct.TYPE_27__* @sqlite3BinaryCompareCollSeq(%struct.TYPE_25__*, i32, %struct.TYPE_26__*) #1

declare dso_local i64 @sqlite3StrICmp(i32, i64) #1

declare dso_local i32 @testcase(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

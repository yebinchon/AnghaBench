; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_convertToWithoutRowidTable.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_convertToWithoutRowidTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, %struct.TYPE_26__*, i32, i64, i32*, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__, i64 }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_26__ = type { i32, i64, i64, %struct.TYPE_28__*, i32, %struct.TYPE_22__* }
%struct.TYPE_28__ = type { i32, i32*, i32, i32, i32, i64, i32*, %struct.TYPE_28__* }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }

@COLFLAG_PRIMKEY = common dso_local global i32 0, align 4
@OE_Abort = common dso_local global i32 0, align 4
@BTREE_BLOBKEY = common dso_local global i32 0, align 4
@TK_ID = common dso_local global i32 0, align 4
@SQLITE_IDXTYPE_PRIMARYKEY = common dso_local global i32 0, align 4
@OP_Goto = common dso_local global i32 0, align 4
@sqlite3StrBINARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*, %struct.TYPE_26__*)* @convertToWithoutRowidTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convertToWithoutRowidTable(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %4, align 8
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  store %struct.TYPE_25__* %17, %struct.TYPE_25__** %10, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %11, align 8
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %59, label %26

26:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %55, %26
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %27
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @COLFLAG_PRIMKEY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %33
  %46 = load i32, i32* @OE_Abort, align 4
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 2
  store i32 %46, i32* %53, align 4
  br label %54

54:                                               ; preds = %45, %33
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %27

58:                                               ; preds = %27
  br label %59

59:                                               ; preds = %58, %2
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load i32*, i32** %11, align 8
  %66 = ptrtoint i32* %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i32*, i32** %11, align 8
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @BTREE_BLOBKEY, align 4
  %73 = call i32 @sqlite3VdbeChangeP3(i32* %68, i64 %71, i32 %72)
  br label %74

74:                                               ; preds = %64, %59
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp uge i64 %77, 0
  br i1 %78, label %79, label %136

79:                                               ; preds = %74
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 5
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %81, align 8
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @sqlite3TokenInit(i32* %13, i32 %88)
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %92 = load i32, i32* @TK_ID, align 4
  %93 = call i32 @sqlite3ExprAlloc(%struct.TYPE_25__* %91, i32 %92, i32* %13, i32 0)
  %94 = call %struct.TYPE_29__* @sqlite3ExprListAppend(%struct.TYPE_27__* %90, i32 0, i32 %93)
  store %struct.TYPE_29__* %94, %struct.TYPE_29__** %12, align 8
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %96 = icmp eq %struct.TYPE_29__* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %79
  br label %459

98:                                               ; preds = %79
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 0
  store i32 %101, i32* %106, align 4
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %108, align 8
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %111 = icmp eq %struct.TYPE_26__* %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @SQLITE_IDXTYPE_PRIMARYKEY, align 4
  %120 = call i32 @sqlite3CreateIndex(%struct.TYPE_27__* %114, i32 0, i32 0, i32 0, %struct.TYPE_29__* %115, i32 %118, i32 0, i32 0, i32 0, i32 0, i32 %119)
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %98
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125, %98
  br label %459

131:                                              ; preds = %125
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %133 = call %struct.TYPE_28__* @sqlite3PrimaryKeyIndex(%struct.TYPE_26__* %132)
  store %struct.TYPE_28__* %133, %struct.TYPE_28__** %6, align 8
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 1
  store i64 -1, i64* %135, align 8
  br label %191

136:                                              ; preds = %74
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %138 = call %struct.TYPE_28__* @sqlite3PrimaryKeyIndex(%struct.TYPE_26__* %137)
  store %struct.TYPE_28__* %138, %struct.TYPE_28__** %6, align 8
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %140 = icmp ne %struct.TYPE_28__* %139, null
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  store i32 1, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %143

143:                                              ; preds = %184, %136
  %144 = load i32, i32* %8, align 4
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %187

149:                                              ; preds = %143
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @hasColumn(i32* %152, i32 %153, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %149
  %164 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %165, align 8
  br label %183

168:                                              ; preds = %149
  %169 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %9, align 4
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  store i32 %175, i32* %182, align 4
  br label %183

183:                                              ; preds = %168, %163
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %8, align 4
  br label %143

187:                                              ; preds = %143
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  br label %191

191:                                              ; preds = %187, %131
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %193 = icmp ne %struct.TYPE_28__* %192, null
  %194 = zext i1 %193 to i32
  %195 = call i32 @assert(i32 %194)
  %196 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %196, i32 0, i32 3
  store i32 1, i32* %197, align 4
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %191
  %204 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %204, i32 0, i32 4
  store i32 1, i32* %205, align 8
  br label %206

206:                                              ; preds = %203, %191
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  store i32 %209, i32* %7, align 4
  %210 = load i32*, i32** %11, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %212, label %231

212:                                              ; preds = %206
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %213, i32 0, i32 5
  %215 = load i64, i64* %214, align 8
  %216 = icmp sgt i64 %215, 0
  br i1 %216, label %217, label %231

217:                                              ; preds = %212
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp eq i64 %221, 0
  %223 = zext i1 %222 to i32
  %224 = call i32 @assert(i32 %223)
  %225 = load i32*, i32** %11, align 8
  %226 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %226, i32 0, i32 5
  %228 = load i64, i64* %227, align 8
  %229 = load i32, i32* @OP_Goto, align 4
  %230 = call i32 @sqlite3VdbeChangeOpcode(i32* %225, i64 %228, i32 %229)
  br label %231

231:                                              ; preds = %217, %212, %206
  %232 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %232, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 5
  store i64 %234, i64* %236, align 8
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %237, i32 0, i32 3
  %239 = load %struct.TYPE_28__*, %struct.TYPE_28__** %238, align 8
  store %struct.TYPE_28__* %239, %struct.TYPE_28__** %5, align 8
  br label %240

240:                                              ; preds = %372, %231
  %241 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %242 = icmp ne %struct.TYPE_28__* %241, null
  br i1 %242, label %243, label %376

243:                                              ; preds = %240
  %244 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %245 = call i64 @IsPrimaryKeyIndex(%struct.TYPE_28__* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %243
  br label %372

248:                                              ; preds = %243
  store i32 0, i32* %14, align 4
  store i32 0, i32* %8, align 4
  br label %249

249:                                              ; preds = %273, %248
  %250 = load i32, i32* %8, align 4
  %251 = load i32, i32* %7, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %276

253:                                              ; preds = %249
  %254 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %254, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %8, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = call i64 @hasColumn(i32* %256, i32 %259, i32 %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %272, label %269

269:                                              ; preds = %253
  %270 = load i32, i32* %14, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %14, align 4
  br label %272

272:                                              ; preds = %269, %253
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %8, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %8, align 4
  br label %249

276:                                              ; preds = %249
  %277 = load i32, i32* %14, align 4
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %276
  %280 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %283, i32 0, i32 2
  store i32 %282, i32* %284, align 8
  br label %372

285:                                              ; preds = %276
  %286 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %287 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %288 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* %14, align 4
  %292 = add nsw i32 %290, %291
  %293 = call i64 @resizeIndexObject(%struct.TYPE_25__* %286, %struct.TYPE_28__* %287, i32 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %285
  br label %459

296:                                              ; preds = %285
  store i32 0, i32* %8, align 4
  %297 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  store i32 %299, i32* %9, align 4
  br label %300

300:                                              ; preds = %350, %296
  %301 = load i32, i32* %8, align 4
  %302 = load i32, i32* %7, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %353

304:                                              ; preds = %300
  %305 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %305, i32 0, i32 1
  %307 = load i32*, i32** %306, align 8
  %308 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %311, i32 0, i32 1
  %313 = load i32*, i32** %312, align 8
  %314 = load i32, i32* %8, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = call i64 @hasColumn(i32* %307, i32 %310, i32 %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %349, label %320

320:                                              ; preds = %304
  %321 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %321, i32 0, i32 1
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* %8, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %328, i32 0, i32 1
  %330 = load i32*, i32** %329, align 8
  %331 = load i32, i32* %9, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %330, i64 %332
  store i32 %327, i32* %333, align 4
  %334 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %334, i32 0, i32 6
  %336 = load i32*, i32** %335, align 8
  %337 = load i32, i32* %8, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %336, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %341, i32 0, i32 6
  %343 = load i32*, i32** %342, align 8
  %344 = load i32, i32* %9, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  store i32 %340, i32* %346, align 4
  %347 = load i32, i32* %9, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %9, align 4
  br label %349

349:                                              ; preds = %320, %304
  br label %350

350:                                              ; preds = %349
  %351 = load i32, i32* %8, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %8, align 4
  br label %300

353:                                              ; preds = %300
  %354 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 8
  %357 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %358 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = load i32, i32* %14, align 4
  %361 = add nsw i32 %359, %360
  %362 = icmp sge i32 %356, %361
  %363 = zext i1 %362 to i32
  %364 = call i32 @assert(i32 %363)
  %365 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* %9, align 4
  %369 = icmp sge i32 %367, %368
  %370 = zext i1 %369 to i32
  %371 = call i32 @assert(i32 %370)
  br label %372

372:                                              ; preds = %353, %279, %247
  %373 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %373, i32 0, i32 7
  %375 = load %struct.TYPE_28__*, %struct.TYPE_28__** %374, align 8
  store %struct.TYPE_28__* %375, %struct.TYPE_28__** %5, align 8
  br label %240

376:                                              ; preds = %240
  %377 = load i32, i32* %7, align 4
  %378 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %379 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = icmp slt i32 %377, %380
  br i1 %381, label %382, label %450

382:                                              ; preds = %376
  %383 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %384 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %385 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %386 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = call i64 @resizeIndexObject(%struct.TYPE_25__* %383, %struct.TYPE_28__* %384, i32 %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %391

390:                                              ; preds = %382
  br label %459

391:                                              ; preds = %382
  store i32 0, i32* %8, align 4
  %392 = load i32, i32* %7, align 4
  store i32 %392, i32* %9, align 4
  br label %393

393:                                              ; preds = %432, %391
  %394 = load i32, i32* %8, align 4
  %395 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = icmp slt i32 %394, %397
  br i1 %398, label %399, label %435

399:                                              ; preds = %393
  %400 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %401 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %400, i32 0, i32 1
  %402 = load i32*, i32** %401, align 8
  %403 = load i32, i32* %9, align 4
  %404 = load i32, i32* %8, align 4
  %405 = call i64 @hasColumn(i32* %402, i32 %403, i32 %404)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %431, label %407

407:                                              ; preds = %399
  %408 = load i32, i32* %9, align 4
  %409 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %410 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 8
  %412 = icmp slt i32 %408, %411
  %413 = zext i1 %412 to i32
  %414 = call i32 @assert(i32 %413)
  %415 = load i32, i32* %8, align 4
  %416 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %417 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %416, i32 0, i32 1
  %418 = load i32*, i32** %417, align 8
  %419 = load i32, i32* %9, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  store i32 %415, i32* %421, align 4
  %422 = load i32, i32* @sqlite3StrBINARY, align 4
  %423 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %424 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %423, i32 0, i32 6
  %425 = load i32*, i32** %424, align 8
  %426 = load i32, i32* %9, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %425, i64 %427
  store i32 %422, i32* %428, align 4
  %429 = load i32, i32* %9, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %9, align 4
  br label %431

431:                                              ; preds = %407, %399
  br label %432

432:                                              ; preds = %431
  %433 = load i32, i32* %8, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %8, align 4
  br label %393

435:                                              ; preds = %393
  %436 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %437 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %436, i32 0, i32 2
  %438 = load i32, i32* %437, align 8
  %439 = load i32, i32* %9, align 4
  %440 = icmp eq i32 %438, %439
  %441 = zext i1 %440 to i32
  %442 = call i32 @assert(i32 %441)
  %443 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %444 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = load i32, i32* %9, align 4
  %447 = icmp eq i32 %445, %446
  %448 = zext i1 %447 to i32
  %449 = call i32 @assert(i32 %448)
  br label %456

450:                                              ; preds = %376
  %451 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %452 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %455 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %454, i32 0, i32 2
  store i32 %453, i32* %455, align 8
  br label %456

456:                                              ; preds = %450, %435
  %457 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %458 = call i32 @recomputeColumnsNotIndexed(%struct.TYPE_28__* %457)
  br label %459

459:                                              ; preds = %456, %390, %295, %130, %97
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeChangeP3(i32*, i64, i32) #1

declare dso_local i32 @sqlite3TokenInit(i32*, i32) #1

declare dso_local %struct.TYPE_29__* @sqlite3ExprListAppend(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @sqlite3ExprAlloc(%struct.TYPE_25__*, i32, i32*, i32) #1

declare dso_local i32 @sqlite3CreateIndex(%struct.TYPE_27__*, i32, i32, i32, %struct.TYPE_29__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_28__* @sqlite3PrimaryKeyIndex(%struct.TYPE_26__*) #1

declare dso_local i64 @hasColumn(i32*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeOpcode(i32*, i64, i32) #1

declare dso_local i64 @IsPrimaryKeyIndex(%struct.TYPE_28__*) #1

declare dso_local i64 @resizeIndexObject(%struct.TYPE_25__*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @recomputeColumnsNotIndexed(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

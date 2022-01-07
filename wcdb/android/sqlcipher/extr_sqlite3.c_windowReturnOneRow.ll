; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_windowReturnOneRow.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_windowReturnOneRow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@nth_valueName = common dso_local global i64 0, align 8
@first_valueName = common dso_local global i64 0, align 8
@OP_Null = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@OP_Integer = common dso_local global i32 0, align 4
@OP_Add = common dso_local global i32 0, align 4
@OP_Gt = common dso_local global i32 0, align 4
@OP_SeekRowid = common dso_local global i32 0, align 4
@leadName = common dso_local global i64 0, align 8
@lagName = common dso_local global i64 0, align 8
@OP_Rowid = common dso_local global i32 0, align 4
@OP_AddImm = common dso_local global i32 0, align 4
@OP_Subtract = common dso_local global i32 0, align 4
@OP_Gosub = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_10__*, i32, i32)* @windowReturnOneRow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @windowReturnOneRow(i32* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @sqlite3GetVdbe(i32* %23)
  store i32* %24, i32** %9, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %10, align 8
  br label %26

26:                                               ; preds = %258, %4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %28 = icmp ne %struct.TYPE_10__* %27, null
  br i1 %28, label %29, label %262

29:                                               ; preds = %26
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 6
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %11, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @nth_valueName, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %29
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @first_valueName, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %126

44:                                               ; preds = %38, %29
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %12, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @sqlite3VdbeMakeLabel(i32* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @sqlite3GetTempReg(i32* %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* @OP_Null, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sqlite3VdbeAddOp2(i32* %52, i32 %53, i32 0, i32 %56)
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @nth_valueName, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %44
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* @OP_Column, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @sqlite3VdbeAddOp3(i32* %64, i32 %65, i32 %68, i32 %72, i32 %73)
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @windowCheckIntValue(i32* %75, i32 %76, i32 2)
  br label %83

78:                                               ; preds = %44
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* @OP_Integer, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @sqlite3VdbeAddOp2(i32* %79, i32 %80, i32 1, i32 %81)
  br label %83

83:                                               ; preds = %78, %63
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* @OP_Add, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @sqlite3VdbeAddOp3(i32* %84, i32 %85, i32 %86, i32 %89, i32 %90)
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* @OP_Gt, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @sqlite3VdbeAddOp3(i32* %92, i32 %93, i32 %97, i32 %98, i32 %99)
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @VdbeCoverageNeverNull(i32* %101)
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* @OP_SeekRowid, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @sqlite3VdbeAddOp3(i32* %103, i32 %104, i32 %105, i32 0, i32 %106)
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @VdbeCoverageNeverTaken(i32* %108)
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* @OP_Column, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @sqlite3VdbeAddOp3(i32* %110, i32 %111, i32 %112, i32 %115, i32 %118)
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @sqlite3VdbeResolveLabel(i32* %120, i32 %121)
  %123 = load i32*, i32** %5, align 8
  %124 = load i32, i32* %14, align 4
  %125 = call i32 @sqlite3ReleaseTempReg(i32* %123, i32 %124)
  br label %257

126:                                              ; preds = %38
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @leadName, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %138, label %132

132:                                              ; preds = %126
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @lagName, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %256

138:                                              ; preds = %132, %126
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 5
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %15, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  store i32 %149, i32* %16, align 4
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  store i32 %152, i32* %17, align 4
  %153 = load i32*, i32** %5, align 8
  %154 = call i32 @sqlite3VdbeMakeLabel(i32* %153)
  store i32 %154, i32* %18, align 4
  %155 = load i32*, i32** %5, align 8
  %156 = call i32 @sqlite3GetTempReg(i32* %155)
  store i32 %156, i32* %19, align 4
  %157 = load i32, i32* %15, align 4
  %158 = icmp slt i32 %157, 3
  br i1 %158, label %159, label %166

159:                                              ; preds = %138
  %160 = load i32*, i32** %9, align 8
  %161 = load i32, i32* @OP_Null, align 4
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @sqlite3VdbeAddOp2(i32* %160, i32 %161, i32 0, i32 %164)
  br label %178

166:                                              ; preds = %138
  %167 = load i32*, i32** %9, align 8
  %168 = load i32, i32* @OP_Column, align 4
  %169 = load i32, i32* %16, align 4
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, 2
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @sqlite3VdbeAddOp3(i32* %167, i32 %168, i32 %169, i32 %173, i32 %176)
  br label %178

178:                                              ; preds = %166, %159
  %179 = load i32*, i32** %9, align 8
  %180 = load i32, i32* @OP_Rowid, align 4
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* %19, align 4
  %183 = call i32 @sqlite3VdbeAddOp2(i32* %179, i32 %180, i32 %181, i32 %182)
  %184 = load i32, i32* %15, align 4
  %185 = icmp slt i32 %184, 2
  br i1 %185, label %186, label %199

186:                                              ; preds = %178
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @leadName, align 8
  %191 = icmp eq i64 %189, %190
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i32 1, i32 -1
  store i32 %193, i32* %20, align 4
  %194 = load i32*, i32** %9, align 8
  %195 = load i32, i32* @OP_AddImm, align 4
  %196 = load i32, i32* %19, align 4
  %197 = load i32, i32* %20, align 4
  %198 = call i32 @sqlite3VdbeAddOp2(i32* %194, i32 %195, i32 %196, i32 %197)
  br label %231

199:                                              ; preds = %178
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @leadName, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %199
  %206 = load i32, i32* @OP_Add, align 4
  br label %209

207:                                              ; preds = %199
  %208 = load i32, i32* @OP_Subtract, align 4
  br label %209

209:                                              ; preds = %207, %205
  %210 = phi i32 [ %206, %205 ], [ %208, %207 ]
  store i32 %210, i32* %21, align 4
  %211 = load i32*, i32** %5, align 8
  %212 = call i32 @sqlite3GetTempReg(i32* %211)
  store i32 %212, i32* %22, align 4
  %213 = load i32*, i32** %9, align 8
  %214 = load i32, i32* @OP_Column, align 4
  %215 = load i32, i32* %16, align 4
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, 1
  %220 = load i32, i32* %22, align 4
  %221 = call i32 @sqlite3VdbeAddOp3(i32* %213, i32 %214, i32 %215, i32 %219, i32 %220)
  %222 = load i32*, i32** %9, align 8
  %223 = load i32, i32* %21, align 4
  %224 = load i32, i32* %22, align 4
  %225 = load i32, i32* %19, align 4
  %226 = load i32, i32* %19, align 4
  %227 = call i32 @sqlite3VdbeAddOp3(i32* %222, i32 %223, i32 %224, i32 %225, i32 %226)
  %228 = load i32*, i32** %5, align 8
  %229 = load i32, i32* %22, align 4
  %230 = call i32 @sqlite3ReleaseTempReg(i32* %228, i32 %229)
  br label %231

231:                                              ; preds = %209, %186
  %232 = load i32*, i32** %9, align 8
  %233 = load i32, i32* @OP_SeekRowid, align 4
  %234 = load i32, i32* %17, align 4
  %235 = load i32, i32* %18, align 4
  %236 = load i32, i32* %19, align 4
  %237 = call i32 @sqlite3VdbeAddOp3(i32* %232, i32 %233, i32 %234, i32 %235, i32 %236)
  %238 = load i32*, i32** %9, align 8
  %239 = call i32 @VdbeCoverage(i32* %238)
  %240 = load i32*, i32** %9, align 8
  %241 = load i32, i32* @OP_Column, align 4
  %242 = load i32, i32* %17, align 4
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @sqlite3VdbeAddOp3(i32* %240, i32 %241, i32 %242, i32 %245, i32 %248)
  %250 = load i32*, i32** %9, align 8
  %251 = load i32, i32* %18, align 4
  %252 = call i32 @sqlite3VdbeResolveLabel(i32* %250, i32 %251)
  %253 = load i32*, i32** %5, align 8
  %254 = load i32, i32* %19, align 4
  %255 = call i32 @sqlite3ReleaseTempReg(i32* %253, i32 %254)
  br label %256

256:                                              ; preds = %231, %132
  br label %257

257:                                              ; preds = %256, %83
  br label %258

258:                                              ; preds = %257
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 7
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %260, align 8
  store %struct.TYPE_10__* %261, %struct.TYPE_10__** %10, align 8
  br label %26

262:                                              ; preds = %26
  %263 = load i32*, i32** %9, align 8
  %264 = load i32, i32* @OP_Gosub, align 4
  %265 = load i32, i32* %7, align 4
  %266 = load i32, i32* %8, align 4
  %267 = call i32 @sqlite3VdbeAddOp2(i32* %263, i32 %264, i32 %265, i32 %266)
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(i32*) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(i32*) #1

declare dso_local i32 @sqlite3GetTempReg(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @windowCheckIntValue(i32*, i32, i32) #1

declare dso_local i32 @VdbeCoverageNeverNull(i32*) #1

declare dso_local i32 @VdbeCoverageNeverTaken(i32*) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(i32*, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

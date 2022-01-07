; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_bitvec.c_sqlite3BitvecSet.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_bitvec.c_sqlite3BitvecSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32*, %struct.TYPE_7__** }

@SQLITE_OK = common dso_local global i32 0, align 4
@BITVEC_NBIT = common dso_local global i64 0, align 8
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@BITVEC_SZELEM = common dso_local global i64 0, align 8
@BITVEC_NINT = common dso_local global i32 0, align 4
@BITVEC_MXHASH = common dso_local global i64 0, align 8
@BITVEC_NPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3BitvecSet(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = icmp eq %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @SQLITE_OK, align 4
  store i32 %14, i32* %3, align 4
  br label %255

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = icmp ugt i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ule i64 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, -1
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %83, %15
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @BITVEC_NBIT, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %35, %29
  %41 = phi i1 [ false, %29 ], [ %39, %35 ]
  br i1 %41, label %42, label %91

42:                                               ; preds = %40
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = udiv i64 %43, %46
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = urem i64 %48, %51
  store i64 %52, i64* %5, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %56, i64 %57
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = icmp eq %struct.TYPE_7__* %59, null
  br i1 %60, label %61, label %83

61:                                               ; preds = %42
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call %struct.TYPE_7__* @sqlite3BitvecCreate(i64 %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %69, i64 %70
  store %struct.TYPE_7__* %65, %struct.TYPE_7__** %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %75, i64 %76
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = icmp eq %struct.TYPE_7__* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %61
  %81 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %81, i32* %3, align 4
  br label %255

82:                                               ; preds = %61
  br label %83

83:                                               ; preds = %82, %42
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %86, align 8
  %88 = load i64, i64* %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %87, i64 %88
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  store %struct.TYPE_7__* %90, %struct.TYPE_7__** %4, align 8
  br label %29

91:                                               ; preds = %40
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @BITVEC_NBIT, align 8
  %96 = icmp ule i64 %94, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %91
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* @BITVEC_SZELEM, align 8
  %100 = sub i64 %99, 1
  %101 = and i64 %98, %100
  %102 = trunc i64 %101 to i32
  %103 = shl i32 1, %102
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* %5, align 8
  %109 = load i64, i64* @BITVEC_SZELEM, align 8
  %110 = udiv i64 %108, %109
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %103
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* @SQLITE_OK, align 4
  store i32 %114, i32* %3, align 4
  br label %255

115:                                              ; preds = %91
  %116 = load i64, i64* %5, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %5, align 8
  %118 = trunc i64 %116 to i32
  %119 = call i64 @BITVEC_HASH(i32 %118)
  store i64 %119, i64* %6, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* %6, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %137, label %128

128:                                              ; preds = %115
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @BITVEC_NINT, align 4
  %133 = sub nsw i32 %132, 1
  %134 = icmp slt i32 %131, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %241

136:                                              ; preds = %128
  br label %170

137:                                              ; preds = %115
  br label %138

138:                                              ; preds = %160, %137
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* %6, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = load i64, i64* %5, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %138
  %150 = load i32, i32* @SQLITE_OK, align 4
  store i32 %150, i32* %3, align 4
  br label %255

151:                                              ; preds = %138
  %152 = load i64, i64* %6, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %6, align 8
  %154 = load i64, i64* %6, align 8
  %155 = load i32, i32* @BITVEC_NINT, align 4
  %156 = sext i32 %155 to i64
  %157 = icmp uge i64 %154, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  store i64 0, i64* %6, align 8
  br label %159

159:                                              ; preds = %158, %151
  br label %160

160:                                              ; preds = %159
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* %6, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %138, label %169

169:                                              ; preds = %160
  br label %170

170:                                              ; preds = %169, %136
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = load i64, i64* @BITVEC_MXHASH, align 8
  %176 = icmp sge i64 %174, %175
  br i1 %176, label %177, label %240

177:                                              ; preds = %170
  %178 = call i64* @sqlite3StackAllocRaw(i32 0, i32 8)
  store i64* %178, i64** %10, align 8
  %179 = load i64*, i64** %10, align 8
  %180 = icmp eq i64* %179, null
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %182, i32* %3, align 4
  br label %255

183:                                              ; preds = %177
  %184 = load i64*, i64** %10, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = bitcast i32* %188 to i64*
  %190 = call i32 @memcpy(i64* %184, i64* %189, i32 8)
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %193, align 8
  %195 = call i32 @memset(%struct.TYPE_7__** %194, i32 0, i32 8)
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* @BITVEC_NPTR, align 4
  %200 = sext i32 %199 to i64
  %201 = add i64 %198, %200
  %202 = sub i64 %201, 1
  %203 = load i32, i32* @BITVEC_NPTR, align 4
  %204 = sext i32 %203 to i64
  %205 = udiv i64 %202, %204
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 1
  store i64 %205, i64* %207, align 8
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %209 = load i64, i64* %5, align 8
  %210 = call i32 @sqlite3BitvecSet(%struct.TYPE_7__* %208, i64 %209)
  store i32 %210, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %211

211:                                              ; preds = %233, %183
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* @BITVEC_NINT, align 4
  %214 = icmp ult i32 %212, %213
  br i1 %214, label %215, label %236

215:                                              ; preds = %211
  %216 = load i64*, i64** %10, align 8
  %217 = load i32, i32* %8, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i64, i64* %216, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %232

222:                                              ; preds = %215
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %224 = load i64*, i64** %10, align 8
  %225 = load i32, i32* %8, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds i64, i64* %224, i64 %226
  %228 = load i64, i64* %227, align 8
  %229 = call i32 @sqlite3BitvecSet(%struct.TYPE_7__* %223, i64 %228)
  %230 = load i32, i32* %9, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %9, align 4
  br label %232

232:                                              ; preds = %222, %215
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %8, align 4
  %235 = add i32 %234, 1
  store i32 %235, i32* %8, align 4
  br label %211

236:                                              ; preds = %211
  %237 = load i64*, i64** %10, align 8
  %238 = call i32 @sqlite3StackFree(i32 0, i64* %237)
  %239 = load i32, i32* %9, align 4
  store i32 %239, i32* %3, align 4
  br label %255

240:                                              ; preds = %170
  br label %241

241:                                              ; preds = %240, %135
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %243, align 8
  %246 = load i64, i64* %5, align 8
  %247 = trunc i64 %246 to i32
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = load i64, i64* %6, align 8
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  store i32 %247, i32* %253, align 4
  %254 = load i32, i32* @SQLITE_OK, align 4
  store i32 %254, i32* %3, align 4
  br label %255

255:                                              ; preds = %241, %236, %181, %149, %97, %80, %13
  %256 = load i32, i32* %3, align 4
  ret i32 %256
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_7__* @sqlite3BitvecCreate(i64) #1

declare dso_local i64 @BITVEC_HASH(i32) #1

declare dso_local i64* @sqlite3StackAllocRaw(i32, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__**, i32, i32) #1

declare dso_local i32 @sqlite3StackFree(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

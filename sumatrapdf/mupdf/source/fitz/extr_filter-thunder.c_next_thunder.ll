; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-thunder.c_next_thunder.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-thunder.c_next_thunder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32, i32, i32, i32, i64 }

@next_thunder.deltas = internal constant [4 x i32] [i32 0, i32 1, i32 0, i32 -1], align 16
@next_thunder.deltas.1 = internal constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 -3, i32 -2, i32 -1], align 16
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i64)* @next_thunder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_thunder(i32* %0, %struct.TYPE_5__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %8, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %9, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ugt i64 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %27, %3
  %32 = load i8*, i8** %9, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %234, %31
  %36 = load i8*, i8** %9, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = icmp ult i8* %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = icmp sge i32 %40, 0
  br label %42

42:                                               ; preds = %39, %35
  %43 = phi i1 [ false, %35 ], [ %41, %39 ]
  br i1 %43, label %44, label %235

44:                                               ; preds = %42
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %225, %44
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %226

48:                                               ; preds = %45
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %88

53:                                               ; preds = %48
  %54 = load i32, i32* %12, align 4
  %55 = shl i32 %54, 4
  store i32 %55, i32* %12, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 15
  %60 = load i32, i32* %12, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %12, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 4
  store i32 %65, i32* %63, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %74, 2
  br i1 %75, label %76, label %87

76:                                               ; preds = %53
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 4
  %81 = and i32 %80, 15
  %82 = shl i32 %81, 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %76, %53
  br label %225

88:                                               ; preds = %48
  %89 = load i32*, i32** %5, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @fz_read_byte(i32* %89, i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %226

97:                                               ; preds = %88
  %98 = load i32, i32* %11, align 4
  %99 = ashr i32 %98, 6
  %100 = and i32 %99, 3
  switch i32 %100, label %224 [
    i32 0, label %101
    i32 1, label %121
    i32 2, label %166
    i32 3, label %211
  ]

101:                                              ; preds = %97
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = shl i32 %107, 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = shl i32 %111, 4
  %113 = or i32 %108, %112
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = shl i32 %116, 0
  %118 = or i32 %113, %117
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  br label %224

121:                                              ; preds = %97
  store i32 0, i32* %13, align 4
  br label %122

122:                                              ; preds = %162, %121
  %123 = load i32, i32* %13, align 4
  %124 = icmp slt i32 %123, 3
  br i1 %124, label %125, label %165

125:                                              ; preds = %122
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %13, align 4
  %128 = mul nsw i32 %127, 2
  %129 = sub nsw i32 4, %128
  %130 = ashr i32 %126, %129
  %131 = and i32 %130, 3
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %15, align 4
  %133 = icmp eq i32 %132, 2
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %162

135:                                              ; preds = %125
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* @next_thunder.deltas, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %138, %142
  %144 = and i32 %143, 15
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %149, 4
  store i32 %150, i32* %148, align 4
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 4
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %135, %134
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %13, align 4
  br label %122

165:                                              ; preds = %122
  br label %224

166:                                              ; preds = %97
  store i32 0, i32* %13, align 4
  br label %167

167:                                              ; preds = %207, %166
  %168 = load i32, i32* %13, align 4
  %169 = icmp slt i32 %168, 2
  br i1 %169, label %170, label %210

170:                                              ; preds = %167
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %13, align 4
  %173 = mul nsw i32 %172, 3
  %174 = sub nsw i32 3, %173
  %175 = ashr i32 %171, %174
  %176 = and i32 %175, 7
  store i32 %176, i32* %15, align 4
  %177 = load i32, i32* %15, align 4
  %178 = icmp eq i32 %177, 4
  br i1 %178, label %179, label %180

179:                                              ; preds = %170
  br label %207

180:                                              ; preds = %170
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %15, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [8 x i32], [8 x i32]* @next_thunder.deltas.1, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %183, %187
  %189 = and i32 %188, 15
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 3
  store i32 %189, i32* %191, align 8
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = shl i32 %194, 4
  store i32 %195, i32* %193, align 4
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 4
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 8
  br label %207

207:                                              ; preds = %180, %179
  %208 = load i32, i32* %13, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %13, align 4
  br label %167

210:                                              ; preds = %167
  br label %224

211:                                              ; preds = %97
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  store i32 1, i32* %213, align 8
  %214 = load i32, i32* %11, align 4
  %215 = and i32 %214, 15
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 4
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = and i32 %220, 15
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 3
  store i32 %221, i32* %223, align 8
  br label %224

224:                                              ; preds = %97, %211, %210, %165, %101
  br label %225

225:                                              ; preds = %224, %87
  br label %45

226:                                              ; preds = %96, %45
  %227 = load i32, i32* %14, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %226
  %230 = load i32, i32* %12, align 4
  %231 = trunc i32 %230 to i8
  %232 = load i8*, i8** %9, align 8
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %9, align 8
  store i8 %231, i8* %232, align 1
  br label %234

234:                                              ; preds = %229, %226
  br label %35

235:                                              ; preds = %42
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i8*, i8** %237, align 8
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  store i8* %238, i8** %240, align 8
  %241 = load i8*, i8** %9, align 8
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 1
  store i8* %241, i8** %243, align 8
  %244 = load i8*, i8** %9, align 8
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  %247 = load i8*, i8** %246, align 8
  %248 = ptrtoint i8* %244 to i64
  %249 = ptrtoint i8* %247 to i64
  %250 = sub i64 %248, %249
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = sext i32 %253 to i64
  %255 = add nsw i64 %254, %250
  %256 = trunc i64 %255 to i32
  store i32 %256, i32* %252, align 8
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 0
  %259 = load i8*, i8** %258, align 8
  %260 = load i8*, i8** %9, align 8
  %261 = icmp ne i8* %259, %260
  br i1 %261, label %262, label %269

262:                                              ; preds = %235
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %266, i8** %264, align 8
  %267 = load i8, i8* %265, align 1
  %268 = zext i8 %267 to i32
  store i32 %268, i32* %4, align 4
  br label %271

269:                                              ; preds = %235
  %270 = load i32, i32* @EOF, align 4
  store i32 %270, i32* %4, align 4
  br label %271

271:                                              ; preds = %269, %262
  %272 = load i32, i32* %4, align 4
  ret i32 %272
}

declare dso_local i32 @fz_read_byte(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

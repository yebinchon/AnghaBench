; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/pshinter/extr_pshalgo.c_psh_glyph_interpolate_other_points.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/pshinter/extr_pshalgo.c_psh_glyph_interpolate_other_points.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_12__*, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i64)* @psh_glyph_interpolate_other_points to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psh_glyph_interpolate_other_points(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i64 %1, i64* %4, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i64 %28
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %5, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %7, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %8, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %253, %2
  %43 = load i64, i64* %9, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %258

45:                                               ; preds = %42
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %10, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 %53
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %12, align 8
  store i64 0, i64* %14, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %11, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %13, align 8
  br label %56

56:                                               ; preds = %73, %45
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %59 = icmp ult %struct.TYPE_9__* %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %62 = call i64 @psh_point_is_fitted(%struct.TYPE_9__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %66 = icmp ne %struct.TYPE_9__* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %11, align 8
  br label %69

69:                                               ; preds = %67, %64
  %70 = load i64, i64* %14, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %14, align 8
  br label %72

72:                                               ; preds = %69, %60
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 1
  store %struct.TYPE_9__* %75, %struct.TYPE_9__** %13, align 8
  br label %56

76:                                               ; preds = %56
  %77 = load i64, i64* %14, align 8
  %78 = icmp slt i64 %77, 2
  br i1 %78, label %79, label %117

79:                                               ; preds = %76
  %80 = load i64, i64* %14, align 8
  %81 = icmp eq i64 %80, 1
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %6, align 8
  %90 = call i64 @FT_MulFix(i64 %88, i64 %89)
  %91 = sub nsw i64 %85, %90
  store i64 %91, i64* %7, align 8
  br label %92

92:                                               ; preds = %82, %79
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %93, %struct.TYPE_9__** %13, align 8
  br label %94

94:                                               ; preds = %113, %92
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %97 = icmp ult %struct.TYPE_9__* %95, %96
  br i1 %97, label %98, label %116

98:                                               ; preds = %94
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %101 = icmp ne %struct.TYPE_9__* %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %6, align 8
  %107 = call i64 @FT_MulFix(i64 %105, i64 %106)
  %108 = load i64, i64* %7, align 8
  %109 = add nsw i64 %107, %108
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %102, %98
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 1
  store %struct.TYPE_9__* %115, %struct.TYPE_9__** %13, align 8
  br label %94

116:                                              ; preds = %94
  br label %252

117:                                              ; preds = %76
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %118, %struct.TYPE_9__** %10, align 8
  br label %119

119:                                              ; preds = %247, %117
  br label %120

120:                                              ; preds = %133, %119
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  store %struct.TYPE_9__* %123, %struct.TYPE_9__** %12, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %126 = icmp eq %struct.TYPE_9__* %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %252

128:                                              ; preds = %120
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %130 = call i64 @psh_point_is_fitted(%struct.TYPE_9__* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  br label %135

133:                                              ; preds = %128
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %134, %struct.TYPE_9__** %11, align 8
  br label %120

135:                                              ; preds = %132
  br label %136

136:                                              ; preds = %144, %135
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  store %struct.TYPE_9__* %139, %struct.TYPE_9__** %12, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %141 = call i64 @psh_point_is_fitted(%struct.TYPE_9__* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  br label %145

144:                                              ; preds = %136
  br label %136

145:                                              ; preds = %143
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp sle i64 %148, %151
  br i1 %152, label %153, label %170

153:                                              ; preds = %145
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  store i64 %156, i64* %15, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %17, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %15, align 8
  %164 = sub nsw i64 %162, %163
  store i64 %164, i64* %16, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %17, align 8
  %169 = sub nsw i64 %167, %168
  store i64 %169, i64* %18, align 8
  br label %187

170:                                              ; preds = %145
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  store i64 %173, i64* %15, align 8
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  store i64 %176, i64* %17, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %15, align 8
  %181 = sub nsw i64 %179, %180
  store i64 %181, i64* %16, align 8
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* %17, align 8
  %186 = sub nsw i64 %184, %185
  store i64 %186, i64* %18, align 8
  br label %187

187:                                              ; preds = %170, %153
  store i64 65536, i64* %22, align 8
  %188 = load i64, i64* %16, align 8
  %189 = icmp sgt i64 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %187
  %191 = load i64, i64* %18, align 8
  %192 = load i64, i64* %16, align 8
  %193 = call i64 @FT_DivFix(i64 %191, i64 %192)
  store i64 %193, i64* %22, align 8
  br label %194

194:                                              ; preds = %190, %187
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %196, align 8
  store %struct.TYPE_9__* %197, %struct.TYPE_9__** %13, align 8
  br label %198

198:                                              ; preds = %241, %194
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  store i64 %201, i64* %19, align 8
  %202 = load i64, i64* %19, align 8
  %203 = load i64, i64* %15, align 8
  %204 = sub nsw i64 %202, %203
  store i64 %204, i64* %20, align 8
  %205 = load i64, i64* %20, align 8
  %206 = icmp sle i64 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %198
  %208 = load i64, i64* %17, align 8
  %209 = load i64, i64* %20, align 8
  %210 = load i64, i64* %6, align 8
  %211 = call i64 @FT_MulFix(i64 %209, i64 %210)
  %212 = add nsw i64 %208, %211
  store i64 %212, i64* %21, align 8
  br label %234

213:                                              ; preds = %198
  %214 = load i64, i64* %20, align 8
  %215 = load i64, i64* %16, align 8
  %216 = icmp sge i64 %214, %215
  br i1 %216, label %217, label %227

217:                                              ; preds = %213
  %218 = load i64, i64* %17, align 8
  %219 = load i64, i64* %18, align 8
  %220 = add nsw i64 %218, %219
  %221 = load i64, i64* %20, align 8
  %222 = load i64, i64* %16, align 8
  %223 = sub nsw i64 %221, %222
  %224 = load i64, i64* %6, align 8
  %225 = call i64 @FT_MulFix(i64 %223, i64 %224)
  %226 = add nsw i64 %220, %225
  store i64 %226, i64* %21, align 8
  br label %233

227:                                              ; preds = %213
  %228 = load i64, i64* %17, align 8
  %229 = load i64, i64* %20, align 8
  %230 = load i64, i64* %22, align 8
  %231 = call i64 @FT_MulFix(i64 %229, i64 %230)
  %232 = add nsw i64 %228, %231
  store i64 %232, i64* %21, align 8
  br label %233

233:                                              ; preds = %227, %217
  br label %234

234:                                              ; preds = %233, %207
  %235 = load i64, i64* %21, align 8
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  store i64 %235, i64* %237, align 8
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 2
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %239, align 8
  store %struct.TYPE_9__* %240, %struct.TYPE_9__** %13, align 8
  br label %241

241:                                              ; preds = %234
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %244 = icmp ne %struct.TYPE_9__* %242, %243
  br i1 %244, label %198, label %245

245:                                              ; preds = %241
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %246, %struct.TYPE_9__** %11, align 8
  br label %247

247:                                              ; preds = %245
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %250 = icmp ne %struct.TYPE_9__* %248, %249
  br i1 %250, label %119, label %251

251:                                              ; preds = %247
  br label %252

252:                                              ; preds = %251, %127, %116
  br label %253

253:                                              ; preds = %252
  %254 = load i64, i64* %9, align 8
  %255 = add nsw i64 %254, -1
  store i64 %255, i64* %9, align 8
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 1
  store %struct.TYPE_12__* %257, %struct.TYPE_12__** %8, align 8
  br label %42

258:                                              ; preds = %42
  ret void
}

declare dso_local i64 @psh_point_is_fitted(%struct.TYPE_9__*) #1

declare dso_local i64 @FT_MulFix(i64, i64) #1

declare dso_local i64 @FT_DivFix(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

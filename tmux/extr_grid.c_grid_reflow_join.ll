; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid.c_grid_reflow_join.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid.c_grid_reflow_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { i64, i64, i64, %struct.grid_line* }
%struct.grid_line = type { i64, i32, i64, i32, i32 }
%struct.grid_cell = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@GRID_LINE_WRAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.grid*, %struct.grid*, i64, i64, i64, i32)* @grid_reflow_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grid_reflow_join(%struct.grid* %0, %struct.grid* %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.grid*, align 8
  %8 = alloca %struct.grid*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.grid_line*, align 8
  %14 = alloca %struct.grid_line*, align 8
  %15 = alloca %struct.grid_cell, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.grid* %0, %struct.grid** %7, align 8
  store %struct.grid* %1, %struct.grid** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  store %struct.grid_line* null, %struct.grid_line** %14, align 8
  store i64 0, i64* %21, align 8
  store i32 1, i32* %23, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %6
  %27 = load %struct.grid*, %struct.grid** %7, align 8
  %28 = getelementptr inbounds %struct.grid, %struct.grid* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %19, align 8
  %30 = load %struct.grid*, %struct.grid** %7, align 8
  %31 = load %struct.grid*, %struct.grid** %8, align 8
  %32 = getelementptr inbounds %struct.grid, %struct.grid* %31, i32 0, i32 3
  %33 = load %struct.grid_line*, %struct.grid_line** %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %33, i64 %34
  %36 = call %struct.grid_line* @grid_reflow_move(%struct.grid* %30, %struct.grid_line* %35)
  store %struct.grid_line* %36, %struct.grid_line** %13, align 8
  br label %47

37:                                               ; preds = %6
  %38 = load %struct.grid*, %struct.grid** %7, align 8
  %39 = getelementptr inbounds %struct.grid, %struct.grid* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %40, 1
  store i64 %41, i64* %19, align 8
  %42 = load %struct.grid*, %struct.grid** %7, align 8
  %43 = getelementptr inbounds %struct.grid, %struct.grid* %42, i32 0, i32 3
  %44 = load %struct.grid_line*, %struct.grid_line** %43, align 8
  %45 = load i64, i64* %19, align 8
  %46 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %44, i64 %45
  store %struct.grid_line* %46, %struct.grid_line** %13, align 8
  br label %47

47:                                               ; preds = %37, %26
  %48 = load %struct.grid_line*, %struct.grid_line** %13, align 8
  %49 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %22, align 8
  store i64 0, i64* %16, align 8
  br label %51

51:                                               ; preds = %179, %95, %47
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, 1
  %54 = load i64, i64* %16, align 8
  %55 = add i64 %53, %54
  %56 = load %struct.grid*, %struct.grid** %8, align 8
  %57 = getelementptr inbounds %struct.grid, %struct.grid* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.grid*, %struct.grid** %8, align 8
  %60 = getelementptr inbounds %struct.grid, %struct.grid* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %58, %61
  %63 = icmp eq i64 %55, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  br label %180

65:                                               ; preds = %51
  %66 = load i64, i64* %10, align 8
  %67 = add i64 %66, 1
  %68 = load i64, i64* %16, align 8
  %69 = add i64 %67, %68
  store i64 %69, i64* %20, align 8
  %70 = load %struct.grid*, %struct.grid** %8, align 8
  %71 = getelementptr inbounds %struct.grid, %struct.grid* %70, i32 0, i32 3
  %72 = load %struct.grid_line*, %struct.grid_line** %71, align 8
  %73 = load i64, i64* %20, align 8
  %74 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %72, i64 %73
  %75 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = xor i32 %76, -1
  %78 = load i32, i32* @GRID_LINE_WRAPPED, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %65
  store i32 0, i32* %23, align 4
  br label %82

82:                                               ; preds = %81, %65
  %83 = load %struct.grid*, %struct.grid** %8, align 8
  %84 = getelementptr inbounds %struct.grid, %struct.grid* %83, i32 0, i32 3
  %85 = load %struct.grid_line*, %struct.grid_line** %84, align 8
  %86 = load i64, i64* %20, align 8
  %87 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %85, i64 %86
  %88 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %82
  %92 = load i32, i32* %23, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  br label %180

95:                                               ; preds = %91
  %96 = load i64, i64* %16, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %16, align 8
  br label %51

98:                                               ; preds = %82
  %99 = load %struct.grid*, %struct.grid** %8, align 8
  %100 = getelementptr inbounds %struct.grid, %struct.grid* %99, i32 0, i32 3
  %101 = load %struct.grid_line*, %struct.grid_line** %100, align 8
  %102 = load i64, i64* %20, align 8
  %103 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %101, i64 %102
  %104 = call i32 @grid_get_cell1(%struct.grid_line* %103, i64 0, %struct.grid_cell* %15)
  %105 = load i64, i64* %11, align 8
  %106 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %15, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %105, %108
  %110 = load i64, i64* %9, align 8
  %111 = icmp ugt i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %98
  br label %180

113:                                              ; preds = %98
  %114 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %15, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %11, align 8
  %118 = add i64 %117, %116
  store i64 %118, i64* %11, align 8
  %119 = load %struct.grid*, %struct.grid** %7, align 8
  %120 = load i64, i64* %22, align 8
  %121 = load i64, i64* %19, align 8
  %122 = call i32 @grid_set_cell(%struct.grid* %119, i64 %120, i64 %121, %struct.grid_cell* %15)
  %123 = load i64, i64* %22, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %22, align 8
  %125 = load %struct.grid*, %struct.grid** %8, align 8
  %126 = getelementptr inbounds %struct.grid, %struct.grid* %125, i32 0, i32 3
  %127 = load %struct.grid_line*, %struct.grid_line** %126, align 8
  %128 = load i64, i64* %20, align 8
  %129 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %127, i64 %128
  store %struct.grid_line* %129, %struct.grid_line** %14, align 8
  store i64 1, i64* %21, align 8
  br label %130

130:                                              ; preds = %160, %113
  %131 = load i64, i64* %21, align 8
  %132 = load %struct.grid_line*, %struct.grid_line** %14, align 8
  %133 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ult i64 %131, %134
  br i1 %135, label %136, label %163

136:                                              ; preds = %130
  %137 = load %struct.grid_line*, %struct.grid_line** %14, align 8
  %138 = load i64, i64* %21, align 8
  %139 = call i32 @grid_get_cell1(%struct.grid_line* %137, i64 %138, %struct.grid_cell* %15)
  %140 = load i64, i64* %11, align 8
  %141 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %15, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = add i64 %140, %143
  %145 = load i64, i64* %9, align 8
  %146 = icmp ugt i64 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %136
  br label %163

148:                                              ; preds = %136
  %149 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %15, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %11, align 8
  %153 = add i64 %152, %151
  store i64 %153, i64* %11, align 8
  %154 = load %struct.grid*, %struct.grid** %7, align 8
  %155 = load i64, i64* %22, align 8
  %156 = load i64, i64* %19, align 8
  %157 = call i32 @grid_set_cell(%struct.grid* %154, i64 %155, i64 %156, %struct.grid_cell* %15)
  %158 = load i64, i64* %22, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %22, align 8
  br label %160

160:                                              ; preds = %148
  %161 = load i64, i64* %21, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %21, align 8
  br label %130

163:                                              ; preds = %147, %130
  %164 = load i64, i64* %16, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %16, align 8
  %166 = load i32, i32* %23, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %163
  %169 = load i64, i64* %21, align 8
  %170 = load %struct.grid_line*, %struct.grid_line** %14, align 8
  %171 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %169, %172
  br i1 %173, label %178, label %174

174:                                              ; preds = %168
  %175 = load i64, i64* %11, align 8
  %176 = load i64, i64* %9, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %174, %168, %163
  br label %180

179:                                              ; preds = %174
  br label %51

180:                                              ; preds = %178, %112, %94, %64
  %181 = load i64, i64* %16, align 8
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  br label %279

184:                                              ; preds = %180
  %185 = load %struct.grid_line*, %struct.grid_line** %14, align 8
  %186 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %21, align 8
  %189 = sub i64 %187, %188
  store i64 %189, i64* %17, align 8
  %190 = load i64, i64* %17, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %207

192:                                              ; preds = %184
  %193 = load %struct.grid*, %struct.grid** %8, align 8
  %194 = load i64, i64* %21, align 8
  %195 = load i64, i64* %10, align 8
  %196 = load i64, i64* %16, align 8
  %197 = add i64 %195, %196
  %198 = load i64, i64* %17, align 8
  %199 = call i32 @grid_move_cells(%struct.grid* %193, i32 0, i64 %194, i64 %197, i64 %198, i32 8)
  %200 = load i64, i64* %17, align 8
  %201 = load %struct.grid_line*, %struct.grid_line** %14, align 8
  %202 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %201, i32 0, i32 0
  store i64 %200, i64* %202, align 8
  %203 = load %struct.grid_line*, %struct.grid_line** %14, align 8
  %204 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %203, i32 0, i32 2
  store i64 %200, i64* %204, align 8
  %205 = load i64, i64* %16, align 8
  %206 = add i64 %205, -1
  store i64 %206, i64* %16, align 8
  br label %218

207:                                              ; preds = %184
  %208 = load i32, i32* %23, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %217, label %210

210:                                              ; preds = %207
  %211 = load i32, i32* @GRID_LINE_WRAPPED, align 4
  %212 = xor i32 %211, -1
  %213 = load %struct.grid_line*, %struct.grid_line** %13, align 8
  %214 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = and i32 %215, %212
  store i32 %216, i32* %214, align 8
  br label %217

217:                                              ; preds = %210, %207
  br label %218

218:                                              ; preds = %217, %192
  %219 = load i64, i64* %10, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %18, align 8
  br label %221

221:                                              ; preds = %251, %218
  %222 = load i64, i64* %18, align 8
  %223 = load i64, i64* %10, align 8
  %224 = add i64 %223, 1
  %225 = load i64, i64* %16, align 8
  %226 = add i64 %224, %225
  %227 = icmp ult i64 %222, %226
  br i1 %227, label %228, label %254

228:                                              ; preds = %221
  %229 = load %struct.grid*, %struct.grid** %8, align 8
  %230 = getelementptr inbounds %struct.grid, %struct.grid* %229, i32 0, i32 3
  %231 = load %struct.grid_line*, %struct.grid_line** %230, align 8
  %232 = load i64, i64* %18, align 8
  %233 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %231, i64 %232
  %234 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @free(i32 %235)
  %237 = load %struct.grid*, %struct.grid** %8, align 8
  %238 = getelementptr inbounds %struct.grid, %struct.grid* %237, i32 0, i32 3
  %239 = load %struct.grid_line*, %struct.grid_line** %238, align 8
  %240 = load i64, i64* %18, align 8
  %241 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %239, i64 %240
  %242 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @free(i32 %243)
  %245 = load %struct.grid*, %struct.grid** %8, align 8
  %246 = getelementptr inbounds %struct.grid, %struct.grid* %245, i32 0, i32 3
  %247 = load %struct.grid_line*, %struct.grid_line** %246, align 8
  %248 = load i64, i64* %18, align 8
  %249 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %247, i64 %248
  %250 = call i32 @grid_reflow_dead(%struct.grid_line* %249)
  br label %251

251:                                              ; preds = %228
  %252 = load i64, i64* %18, align 8
  %253 = add i64 %252, 1
  store i64 %253, i64* %18, align 8
  br label %221

254:                                              ; preds = %221
  %255 = load %struct.grid*, %struct.grid** %8, align 8
  %256 = getelementptr inbounds %struct.grid, %struct.grid* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* %19, align 8
  %259 = load i64, i64* %16, align 8
  %260 = add i64 %258, %259
  %261 = icmp ugt i64 %257, %260
  br i1 %261, label %262, label %268

262:                                              ; preds = %254
  %263 = load i64, i64* %16, align 8
  %264 = load %struct.grid*, %struct.grid** %8, align 8
  %265 = getelementptr inbounds %struct.grid, %struct.grid* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = sub i64 %266, %263
  store i64 %267, i64* %265, align 8
  br label %279

268:                                              ; preds = %254
  %269 = load %struct.grid*, %struct.grid** %8, align 8
  %270 = getelementptr inbounds %struct.grid, %struct.grid* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* %19, align 8
  %273 = icmp ugt i64 %271, %272
  br i1 %273, label %274, label %278

274:                                              ; preds = %268
  %275 = load i64, i64* %19, align 8
  %276 = load %struct.grid*, %struct.grid** %8, align 8
  %277 = getelementptr inbounds %struct.grid, %struct.grid* %276, i32 0, i32 2
  store i64 %275, i64* %277, align 8
  br label %278

278:                                              ; preds = %274, %268
  br label %279

279:                                              ; preds = %183, %278, %262
  ret void
}

declare dso_local %struct.grid_line* @grid_reflow_move(%struct.grid*, %struct.grid_line*) #1

declare dso_local i32 @grid_get_cell1(%struct.grid_line*, i64, %struct.grid_cell*) #1

declare dso_local i32 @grid_set_cell(%struct.grid*, i64, i64, %struct.grid_cell*) #1

declare dso_local i32 @grid_move_cells(%struct.grid*, i32, i64, i64, i64, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @grid_reflow_dead(%struct.grid_line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tmux/extr_input.c_input_csi_dispatch_sgr.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_input.c_input_csi_dispatch_sgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.grid_cell }
%struct.grid_cell = type { i32, i32, i32, i32 }

@grid_default_cell = common dso_local global i32 0, align 4
@INPUT_STRING = common dso_local global i64 0, align 8
@GRID_ATTR_BRIGHT = common dso_local global i32 0, align 4
@GRID_ATTR_DIM = common dso_local global i32 0, align 4
@GRID_ATTR_ITALICS = common dso_local global i32 0, align 4
@GRID_ATTR_ALL_UNDERSCORE = common dso_local global i32 0, align 4
@GRID_ATTR_UNDERSCORE = common dso_local global i32 0, align 4
@GRID_ATTR_BLINK = common dso_local global i32 0, align 4
@GRID_ATTR_REVERSE = common dso_local global i32 0, align 4
@GRID_ATTR_HIDDEN = common dso_local global i32 0, align 4
@GRID_ATTR_STRIKETHROUGH = common dso_local global i32 0, align 4
@GRID_ATTR_OVERLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_ctx*)* @input_csi_dispatch_sgr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_csi_dispatch_sgr(%struct.input_ctx* %0) #0 {
  %2 = alloca %struct.input_ctx*, align 8
  %3 = alloca %struct.grid_cell*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.input_ctx* %0, %struct.input_ctx** %2, align 8
  %6 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.grid_cell* %8, %struct.grid_cell** %3, align 8
  %9 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %15 = call i32 @memcpy(%struct.grid_cell* %14, i32* @grid_default_cell, i32 16)
  br label %223

16:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %17

17:                                               ; preds = %220, %16
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %223

23:                                               ; preds = %17
  %24 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @INPUT_STRING, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @input_csi_dispatch_sgr_colon(%struct.input_ctx* %34, i64 %35)
  br label %220

37:                                               ; preds = %23
  %38 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @input_get(%struct.input_ctx* %38, i64 %39, i32 0, i32 0)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %220

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 38
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 48
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 58
  br i1 %52, label %53, label %68

53:                                               ; preds = %50, %47, %44
  %54 = load i64, i64* %4, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %4, align 8
  %56 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @input_get(%struct.input_ctx* %56, i64 %57, i32 0, i32 -1)
  switch i32 %58, label %67 [
    i32 2, label %59
    i32 5, label %63
  ]

59:                                               ; preds = %53
  %60 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @input_csi_dispatch_sgr_rgb(%struct.input_ctx* %60, i32 %61, i64* %4)
  br label %67

63:                                               ; preds = %53
  %64 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @input_csi_dispatch_sgr_256(%struct.input_ctx* %64, i32 %65, i64* %4)
  br label %67

67:                                               ; preds = %53, %63, %59
  br label %220

68:                                               ; preds = %50
  %69 = load i32, i32* %5, align 4
  switch i32 %69, label %219 [
    i32 0, label %70
    i32 1, label %73
    i32 2, label %79
    i32 3, label %85
    i32 4, label %91
    i32 5, label %103
    i32 7, label %109
    i32 8, label %115
    i32 9, label %121
    i32 22, label %127
    i32 23, label %136
    i32 24, label %143
    i32 25, label %150
    i32 27, label %157
    i32 28, label %164
    i32 29, label %171
    i32 30, label %178
    i32 31, label %178
    i32 32, label %178
    i32 33, label %178
    i32 34, label %178
    i32 35, label %178
    i32 36, label %178
    i32 37, label %178
    i32 39, label %183
    i32 40, label %186
    i32 41, label %186
    i32 42, label %186
    i32 43, label %186
    i32 44, label %186
    i32 45, label %186
    i32 46, label %186
    i32 47, label %186
    i32 49, label %191
    i32 53, label %194
    i32 55, label %200
    i32 59, label %207
    i32 90, label %210
    i32 91, label %210
    i32 92, label %210
    i32 93, label %210
    i32 94, label %210
    i32 95, label %210
    i32 96, label %210
    i32 97, label %210
    i32 100, label %214
    i32 101, label %214
    i32 102, label %214
    i32 103, label %214
    i32 104, label %214
    i32 105, label %214
    i32 106, label %214
    i32 107, label %214
  ]

70:                                               ; preds = %68
  %71 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %72 = call i32 @memcpy(%struct.grid_cell* %71, i32* @grid_default_cell, i32 16)
  br label %219

73:                                               ; preds = %68
  %74 = load i32, i32* @GRID_ATTR_BRIGHT, align 4
  %75 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %76 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %219

79:                                               ; preds = %68
  %80 = load i32, i32* @GRID_ATTR_DIM, align 4
  %81 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %82 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %219

85:                                               ; preds = %68
  %86 = load i32, i32* @GRID_ATTR_ITALICS, align 4
  %87 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %88 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %219

91:                                               ; preds = %68
  %92 = load i32, i32* @GRID_ATTR_ALL_UNDERSCORE, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %95 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* @GRID_ATTR_UNDERSCORE, align 4
  %99 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %100 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %219

103:                                              ; preds = %68
  %104 = load i32, i32* @GRID_ATTR_BLINK, align 4
  %105 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %106 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %219

109:                                              ; preds = %68
  %110 = load i32, i32* @GRID_ATTR_REVERSE, align 4
  %111 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %112 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  br label %219

115:                                              ; preds = %68
  %116 = load i32, i32* @GRID_ATTR_HIDDEN, align 4
  %117 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %118 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %219

121:                                              ; preds = %68
  %122 = load i32, i32* @GRID_ATTR_STRIKETHROUGH, align 4
  %123 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %124 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %219

127:                                              ; preds = %68
  %128 = load i32, i32* @GRID_ATTR_BRIGHT, align 4
  %129 = load i32, i32* @GRID_ATTR_DIM, align 4
  %130 = or i32 %128, %129
  %131 = xor i32 %130, -1
  %132 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %133 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, %131
  store i32 %135, i32* %133, align 4
  br label %219

136:                                              ; preds = %68
  %137 = load i32, i32* @GRID_ATTR_ITALICS, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %140 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %219

143:                                              ; preds = %68
  %144 = load i32, i32* @GRID_ATTR_ALL_UNDERSCORE, align 4
  %145 = xor i32 %144, -1
  %146 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %147 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %219

150:                                              ; preds = %68
  %151 = load i32, i32* @GRID_ATTR_BLINK, align 4
  %152 = xor i32 %151, -1
  %153 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %154 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, %152
  store i32 %156, i32* %154, align 4
  br label %219

157:                                              ; preds = %68
  %158 = load i32, i32* @GRID_ATTR_REVERSE, align 4
  %159 = xor i32 %158, -1
  %160 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %161 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, %159
  store i32 %163, i32* %161, align 4
  br label %219

164:                                              ; preds = %68
  %165 = load i32, i32* @GRID_ATTR_HIDDEN, align 4
  %166 = xor i32 %165, -1
  %167 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %168 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, %166
  store i32 %170, i32* %168, align 4
  br label %219

171:                                              ; preds = %68
  %172 = load i32, i32* @GRID_ATTR_STRIKETHROUGH, align 4
  %173 = xor i32 %172, -1
  %174 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %175 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = and i32 %176, %173
  store i32 %177, i32* %175, align 4
  br label %219

178:                                              ; preds = %68, %68, %68, %68, %68, %68, %68, %68
  %179 = load i32, i32* %5, align 4
  %180 = sub nsw i32 %179, 30
  %181 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %182 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  br label %219

183:                                              ; preds = %68
  %184 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %185 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %184, i32 0, i32 1
  store i32 8, i32* %185, align 4
  br label %219

186:                                              ; preds = %68, %68, %68, %68, %68, %68, %68, %68
  %187 = load i32, i32* %5, align 4
  %188 = sub nsw i32 %187, 40
  %189 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %190 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 4
  br label %219

191:                                              ; preds = %68
  %192 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %193 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %192, i32 0, i32 2
  store i32 8, i32* %193, align 4
  br label %219

194:                                              ; preds = %68
  %195 = load i32, i32* @GRID_ATTR_OVERLINE, align 4
  %196 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %197 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 4
  br label %219

200:                                              ; preds = %68
  %201 = load i32, i32* @GRID_ATTR_OVERLINE, align 4
  %202 = xor i32 %201, -1
  %203 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %204 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = and i32 %205, %202
  store i32 %206, i32* %204, align 4
  br label %219

207:                                              ; preds = %68
  %208 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %209 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %208, i32 0, i32 3
  store i32 0, i32* %209, align 4
  br label %219

210:                                              ; preds = %68, %68, %68, %68, %68, %68, %68, %68
  %211 = load i32, i32* %5, align 4
  %212 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %213 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %212, i32 0, i32 1
  store i32 %211, i32* %213, align 4
  br label %219

214:                                              ; preds = %68, %68, %68, %68, %68, %68, %68, %68
  %215 = load i32, i32* %5, align 4
  %216 = sub nsw i32 %215, 10
  %217 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %218 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %217, i32 0, i32 2
  store i32 %216, i32* %218, align 4
  br label %219

219:                                              ; preds = %68, %214, %210, %207, %200, %194, %191, %186, %183, %178, %171, %164, %157, %150, %143, %136, %127, %121, %115, %109, %103, %91, %85, %79, %73, %70
  br label %220

220:                                              ; preds = %219, %67, %43, %33
  %221 = load i64, i64* %4, align 8
  %222 = add i64 %221, 1
  store i64 %222, i64* %4, align 8
  br label %17

223:                                              ; preds = %13, %17
  ret void
}

declare dso_local i32 @memcpy(%struct.grid_cell*, i32*, i32) #1

declare dso_local i32 @input_csi_dispatch_sgr_colon(%struct.input_ctx*, i64) #1

declare dso_local i32 @input_get(%struct.input_ctx*, i64, i32, i32) #1

declare dso_local i32 @input_csi_dispatch_sgr_rgb(%struct.input_ctx*, i32, i64*) #1

declare dso_local i32 @input_csi_dispatch_sgr_256(%struct.input_ctx*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

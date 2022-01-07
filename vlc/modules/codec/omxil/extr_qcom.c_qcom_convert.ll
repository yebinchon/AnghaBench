; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_qcom.c_qcom_convert.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_qcom.c_qcom_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32* }
%struct.TYPE_5__ = type { i64, i64 }

@TILE_WIDTH = common dso_local global i64 0, align 8
@TILE_HEIGHT = common dso_local global i64 0, align 8
@TILE_SIZE = common dso_local global i64 0, align 8
@TILE_GROUP_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qcom_convert(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %5, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %6, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %5, align 8
  %37 = sub i64 %36, 1
  %38 = load i64, i64* @TILE_WIDTH, align 8
  %39 = udiv i64 %37, %38
  %40 = add i64 %39, 1
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, 1
  %43 = and i64 %42, -2
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %7, align 8
  %45 = sub i64 %44, 1
  %46 = load i64, i64* @TILE_HEIGHT, align 8
  %47 = udiv i64 %45, %46
  %48 = add i64 %47, 1
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %7, align 8
  %50 = udiv i64 %49, 2
  %51 = sub i64 %50, 1
  %52 = load i64, i64* @TILE_HEIGHT, align 8
  %53 = udiv i64 %51, %52
  %54 = add i64 %53, 1
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = mul i64 %55, %56
  %58 = load i64, i64* @TILE_SIZE, align 8
  %59 = mul i64 %57, %58
  store i64 %59, i64* %12, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* @TILE_SIZE, align 8
  %62 = mul i64 4, %61
  %63 = urem i64 %60, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %2
  %66 = load i64, i64* %12, align 8
  %67 = sub i64 %66, 1
  %68 = load i64, i64* @TILE_SIZE, align 8
  %69 = mul i64 4, %68
  %70 = udiv i64 %67, %69
  %71 = add i64 %70, 1
  %72 = load i64, i64* @TILE_SIZE, align 8
  %73 = mul i64 4, %72
  %74 = mul i64 %71, %73
  store i64 %74, i64* %12, align 8
  br label %75

75:                                               ; preds = %65, %2
  store i64 0, i64* %13, align 8
  br label %76

76:                                               ; preds = %219, %75
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* %10, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %222

80:                                               ; preds = %76
  %81 = load i64, i64* %5, align 8
  store i64 %81, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %82

82:                                               ; preds = %212, %80
  %83 = load i64, i64* %15, align 8
  %84 = load i64, i64* %8, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %215

86:                                               ; preds = %82
  %87 = load i32*, i32** %3, align 8
  %88 = load i64, i64* %15, align 8
  %89 = load i64, i64* %13, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %10, align 8
  %92 = call i64 @tile_pos(i64 %88, i64 %89, i64 %90, i64 %91)
  %93 = load i64, i64* @TILE_SIZE, align 8
  %94 = mul i64 %92, %93
  %95 = getelementptr inbounds i32, i32* %87, i64 %94
  store i32* %95, i32** %16, align 8
  %96 = load i32*, i32** %3, align 8
  %97 = load i64, i64* %12, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i64, i64* %15, align 8
  %100 = load i64, i64* %13, align 8
  %101 = udiv i64 %100, 2
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* %11, align 8
  %104 = call i64 @tile_pos(i64 %99, i64 %101, i64 %102, i64 %103)
  %105 = load i64, i64* @TILE_SIZE, align 8
  %106 = mul i64 %104, %105
  %107 = getelementptr inbounds i32, i32* %98, i64 %106
  store i32* %107, i32** %17, align 8
  %108 = load i64, i64* %13, align 8
  %109 = and i64 %108, 1
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %86
  %112 = load i64, i64* @TILE_SIZE, align 8
  %113 = udiv i64 %112, 2
  %114 = load i32*, i32** %17, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 %113
  store i32* %115, i32** %17, align 8
  br label %116

116:                                              ; preds = %111, %86
  %117 = load i64, i64* %14, align 8
  store i64 %117, i64* %18, align 8
  %118 = load i64, i64* %18, align 8
  %119 = load i64, i64* @TILE_WIDTH, align 8
  %120 = icmp ugt i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i64, i64* @TILE_WIDTH, align 8
  store i64 %122, i64* %18, align 8
  br label %123

123:                                              ; preds = %121, %116
  %124 = load i64, i64* %7, align 8
  store i64 %124, i64* %19, align 8
  %125 = load i64, i64* %19, align 8
  %126 = load i64, i64* @TILE_HEIGHT, align 8
  %127 = icmp ugt i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = load i64, i64* @TILE_HEIGHT, align 8
  store i64 %129, i64* %19, align 8
  br label %130

130:                                              ; preds = %128, %123
  %131 = load i64, i64* %13, align 8
  %132 = load i64, i64* @TILE_HEIGHT, align 8
  %133 = mul i64 %131, %132
  %134 = load i64, i64* %6, align 8
  %135 = mul i64 %133, %134
  %136 = load i64, i64* %15, align 8
  %137 = load i64, i64* @TILE_WIDTH, align 8
  %138 = mul i64 %136, %137
  %139 = add i64 %135, %138
  store i64 %139, i64* %20, align 8
  %140 = load i64, i64* %20, align 8
  %141 = load i64, i64* %6, align 8
  %142 = udiv i64 %140, %141
  %143 = load i64, i64* %6, align 8
  %144 = mul i64 %142, %143
  %145 = udiv i64 %144, 2
  %146 = load i64, i64* %20, align 8
  %147 = load i64, i64* %6, align 8
  %148 = urem i64 %146, %147
  %149 = add i64 %145, %148
  store i64 %149, i64* %21, align 8
  %150 = load i64, i64* %19, align 8
  %151 = udiv i64 %150, 2
  store i64 %151, i64* %19, align 8
  br label %152

152:                                              ; preds = %156, %130
  %153 = load i64, i64* %19, align 8
  %154 = add i64 %153, -1
  store i64 %154, i64* %19, align 8
  %155 = icmp ne i64 %153, 0
  br i1 %155, label %156, label %208

156:                                              ; preds = %152
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i64 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load i64, i64* %20, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i32*, i32** %16, align 8
  %166 = load i64, i64* %18, align 8
  %167 = call i32 @memcpy(i32* %164, i32* %165, i64 %166)
  %168 = load i64, i64* @TILE_WIDTH, align 8
  %169 = load i32*, i32** %16, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 %168
  store i32* %170, i32** %16, align 8
  %171 = load i64, i64* %6, align 8
  %172 = load i64, i64* %20, align 8
  %173 = add i64 %172, %171
  store i64 %173, i64* %20, align 8
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i64 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* %20, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32*, i32** %16, align 8
  %183 = load i64, i64* %18, align 8
  %184 = call i32 @memcpy(i32* %181, i32* %182, i64 %183)
  %185 = load i64, i64* @TILE_WIDTH, align 8
  %186 = load i32*, i32** %16, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 %185
  store i32* %187, i32** %16, align 8
  %188 = load i64, i64* %6, align 8
  %189 = load i64, i64* %20, align 8
  %190 = add i64 %189, %188
  store i64 %190, i64* %20, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i64 1
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = load i64, i64* %21, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  %199 = load i32*, i32** %17, align 8
  %200 = load i64, i64* %18, align 8
  %201 = call i32 @memcpy(i32* %198, i32* %199, i64 %200)
  %202 = load i64, i64* @TILE_WIDTH, align 8
  %203 = load i32*, i32** %17, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 %202
  store i32* %204, i32** %17, align 8
  %205 = load i64, i64* %6, align 8
  %206 = load i64, i64* %21, align 8
  %207 = add i64 %206, %205
  store i64 %207, i64* %21, align 8
  br label %152

208:                                              ; preds = %152
  %209 = load i64, i64* @TILE_WIDTH, align 8
  %210 = load i64, i64* %14, align 8
  %211 = sub i64 %210, %209
  store i64 %211, i64* %14, align 8
  br label %212

212:                                              ; preds = %208
  %213 = load i64, i64* %15, align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* %15, align 8
  br label %82

215:                                              ; preds = %82
  %216 = load i64, i64* @TILE_HEIGHT, align 8
  %217 = load i64, i64* %7, align 8
  %218 = sub i64 %217, %216
  store i64 %218, i64* %7, align 8
  br label %219

219:                                              ; preds = %215
  %220 = load i64, i64* %13, align 8
  %221 = add i64 %220, 1
  store i64 %221, i64* %13, align 8
  br label %76

222:                                              ; preds = %76
  ret void
}

declare dso_local i64 @tile_pos(i64, i64, i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

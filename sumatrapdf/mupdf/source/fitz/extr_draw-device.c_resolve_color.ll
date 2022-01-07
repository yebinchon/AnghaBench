; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_resolve_color.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_resolve_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32*, i32 }
%struct.TYPE_10__ = type { i32, i64 }

@FZ_MAX_COLORS = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"color destination requires source color\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, float*, i32*, float, i32, i64, i8*, %struct.TYPE_9__*)* @resolve_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @resolve_color(i32* %0, i32* %1, float* %2, i32* %3, float %4, i32 %5, i64 %6, i8* %7, %struct.TYPE_9__* %8) #0 {
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca float, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = bitcast %struct.TYPE_10__* %10 to { i32, i64 }*
  %28 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %27, i32 0, i32 0
  store i32 %5, i32* %28, align 8
  %29 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %27, i32 0, i32 1
  store i64 %6, i64* %29, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store float* %2, float** %13, align 8
  store i32* %3, i32** %14, align 8
  store float %4, float* %15, align 4
  store i8* %7, i8** %16, align 8
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %17, align 8
  %30 = load i32, i32* @FZ_MAX_COLORS, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %18, align 8
  %33 = alloca float, i64 %31, align 16
  store i64 %31, i64* %19, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  store i32 %40, i32* %21, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %22, align 8
  %44 = load i32*, i32** %14, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %9
  %47 = load i32*, i32** %22, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %52 = call i32 @fz_throw(i32* %50, i32 %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %46, %9
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %25, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = call i32 @fz_colorspace_is_device_n(i32* %56, i32* %57)
  store i32 %58, i32* %23, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = call i32 @fz_colorspace_is_device_gray(i32* %59, i32* %60)
  store i32 %61, i32* %24, align 4
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %53
  %66 = load i32*, i32** %11, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @fz_colorspace_is_subtractive(i32* %66, i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %65, %53
  store i32* null, i32** %12, align 8
  br label %89

73:                                               ; preds = %65
  %74 = load i32, i32* %24, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %88

77:                                               ; preds = %73
  %78 = load i32, i32* %23, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %77
  %81 = load i32*, i32** %14, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store i32 0, i32* %25, align 4
  br label %87

87:                                               ; preds = %86, %80, %77
  br label %88

88:                                               ; preds = %87, %76
  br label %89

89:                                               ; preds = %88, %72
  %90 = load i32, i32* %21, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 0, i32* %20, align 4
  br label %187

93:                                               ; preds = %89
  %94 = load i32, i32* %23, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %138

96:                                               ; preds = %93
  %97 = load i32*, i32** %11, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %100 = call i64 @colors_supported(i32* %97, i32* %98, %struct.TYPE_9__* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %138

102:                                              ; preds = %96
  %103 = load i32*, i32** %11, align 8
  %104 = load i32*, i32** %14, align 8
  %105 = load float*, float** %13, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @fz_convert_separation_colors(i32* %103, i32* %104, float* %105, i32 %108, i32* %111, float* %33, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %10)
  store i32 0, i32* %20, align 4
  br label %113

113:                                              ; preds = %128, %102
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* %21, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %113
  %118 = load i32, i32* %20, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %33, i64 %119
  %121 = load float, float* %120, align 4
  %122 = fmul float %121, 2.550000e+02
  %123 = fptoui float %122 to i8
  %124 = load i8*, i8** %16, align 8
  %125 = load i32, i32* %20, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8 %123, i8* %127, align 1
  br label %128

128:                                              ; preds = %117
  %129 = load i32, i32* %20, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %20, align 4
  br label %113

131:                                              ; preds = %113
  %132 = load i32*, i32** %11, align 8
  %133 = load i32*, i32** %12, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %135 = load i32*, i32** %14, align 8
  %136 = load i32, i32* %25, align 4
  %137 = call i32* @set_op_from_spaces(i32* %132, i32* %133, %struct.TYPE_9__* %134, i32* %135, i32 %136)
  store i32* %137, i32** %12, align 8
  br label %186

138:                                              ; preds = %96, %93
  %139 = load i32, i32* %21, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = sub nsw i32 %139, %142
  store i32 %143, i32* %26, align 4
  %144 = load i32*, i32** %11, align 8
  %145 = load i32*, i32** %14, align 8
  %146 = load float*, float** %13, align 8
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @fz_convert_color(i32* %144, i32* %145, float* %146, i32* %149, float* %33, i32* null, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %10)
  store i32 0, i32* %20, align 4
  br label %151

151:                                              ; preds = %166, %138
  %152 = load i32, i32* %20, align 4
  %153 = load i32, i32* %26, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %169

155:                                              ; preds = %151
  %156 = load i32, i32* %20, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds float, float* %33, i64 %157
  %159 = load float, float* %158, align 4
  %160 = fmul float %159, 2.550000e+02
  %161 = fptoui float %160 to i8
  %162 = load i8*, i8** %16, align 8
  %163 = load i32, i32* %20, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  store i8 %161, i8* %165, align 1
  br label %166

166:                                              ; preds = %155
  %167 = load i32, i32* %20, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %20, align 4
  br label %151

169:                                              ; preds = %151
  br label %170

170:                                              ; preds = %182, %169
  %171 = load i32, i32* %20, align 4
  %172 = load i32, i32* %21, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %185

174:                                              ; preds = %170
  %175 = load i32, i32* %20, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds float, float* %33, i64 %176
  store float 0.000000e+00, float* %177, align 4
  %178 = load i8*, i8** %16, align 8
  %179 = load i32, i32* %20, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %178, i64 %180
  store i8 0, i8* %181, align 1
  br label %182

182:                                              ; preds = %174
  %183 = load i32, i32* %20, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %20, align 4
  br label %170

185:                                              ; preds = %170
  br label %186

186:                                              ; preds = %185, %131
  br label %187

187:                                              ; preds = %186, %92
  %188 = load float, float* %15, align 4
  %189 = fmul float %188, 2.550000e+02
  %190 = fptoui float %189 to i8
  %191 = load i8*, i8** %16, align 8
  %192 = load i32, i32* %20, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %191, i64 %193
  store i8 %190, i8* %194, align 1
  %195 = load i32*, i32** %12, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %241

197:                                              ; preds = %187
  %198 = load i32, i32* %23, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %241, label %200

200:                                              ; preds = %197
  store i32 4, i32* %20, align 4
  br label %201

201:                                              ; preds = %209, %200
  %202 = load i32, i32* %20, align 4
  %203 = load i32, i32* %21, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %201
  %206 = load i32*, i32** %12, align 8
  %207 = load i32, i32* %20, align 4
  %208 = call i32 @fz_set_overprint(i32* %206, i32 %207)
  br label %209

209:                                              ; preds = %205
  %210 = load i32, i32* %20, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %20, align 4
  br label %201

212:                                              ; preds = %201
  %213 = load i32, i32* %25, align 4
  %214 = icmp eq i32 %213, 1
  br i1 %214, label %215, label %240

215:                                              ; preds = %212
  %216 = load i32*, i32** %14, align 8
  %217 = load i32*, i32** %11, align 8
  %218 = call i32* @fz_device_gray(i32* %217)
  %219 = icmp ne i32* %216, %218
  br i1 %219, label %220, label %240

220:                                              ; preds = %215
  store i32 0, i32* %20, align 4
  br label %221

221:                                              ; preds = %236, %220
  %222 = load i32, i32* %20, align 4
  %223 = load i32, i32* %21, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %239

225:                                              ; preds = %221
  %226 = load i32, i32* %20, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, float* %33, i64 %227
  %229 = load float, float* %228, align 4
  %230 = fcmp oeq float %229, 0.000000e+00
  br i1 %230, label %231, label %235

231:                                              ; preds = %225
  %232 = load i32*, i32** %12, align 8
  %233 = load i32, i32* %20, align 4
  %234 = call i32 @fz_set_overprint(i32* %232, i32 %233)
  br label %235

235:                                              ; preds = %231, %225
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %20, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %20, align 4
  br label %221

239:                                              ; preds = %221
  br label %240

240:                                              ; preds = %239, %215, %212
  br label %241

241:                                              ; preds = %240, %197, %187
  %242 = load i32*, i32** %12, align 8
  %243 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %243)
  ret i32* %242
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #2

declare dso_local i32 @fz_colorspace_is_device_n(i32*, i32*) #2

declare dso_local i32 @fz_colorspace_is_device_gray(i32*, i32*) #2

declare dso_local i32 @fz_colorspace_is_subtractive(i32*, i32*) #2

declare dso_local i64 @colors_supported(i32*, i32*, %struct.TYPE_9__*) #2

declare dso_local i32 @fz_convert_separation_colors(i32*, i32*, float*, i32, i32*, float*, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8) #2

declare dso_local i32* @set_op_from_spaces(i32*, i32*, %struct.TYPE_9__*, i32*, i32) #2

declare dso_local i32 @fz_convert_color(i32*, i32*, float*, i32*, float*, i32*, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8) #2

declare dso_local i32 @fz_set_overprint(i32*, i32) #2

declare dso_local i32* @fz_device_gray(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

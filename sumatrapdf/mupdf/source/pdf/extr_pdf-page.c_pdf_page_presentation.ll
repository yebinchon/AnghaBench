; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-page.c_pdf_page_presentation.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-page.c_pdf_page_presentation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@Dur = common dso_local global i32 0, align 4
@Trans = common dso_local global i32 0, align 4
@D = common dso_local global i32 0, align 4
@Dm = common dso_local global i32 0, align 4
@H = common dso_local global i32 0, align 4
@M = common dso_local global i32 0, align 4
@I = common dso_local global i32 0, align 4
@Di = common dso_local global i32 0, align 4
@S = common dso_local global i32 0, align 4
@Split = common dso_local global i32 0, align 4
@FZ_TRANSITION_SPLIT = common dso_local global i32 0, align 4
@Blinds = common dso_local global i32 0, align 4
@FZ_TRANSITION_BLINDS = common dso_local global i32 0, align 4
@Box = common dso_local global i32 0, align 4
@FZ_TRANSITION_BOX = common dso_local global i32 0, align 4
@Wipe = common dso_local global i32 0, align 4
@FZ_TRANSITION_WIPE = common dso_local global i32 0, align 4
@Dissolve = common dso_local global i32 0, align 4
@FZ_TRANSITION_DISSOLVE = common dso_local global i32 0, align 4
@Glitter = common dso_local global i32 0, align 4
@FZ_TRANSITION_GLITTER = common dso_local global i32 0, align 4
@Fly = common dso_local global i32 0, align 4
@FZ_TRANSITION_FLY = common dso_local global i32 0, align 4
@Push = common dso_local global i32 0, align 4
@FZ_TRANSITION_PUSH = common dso_local global i32 0, align 4
@Cover = common dso_local global i32 0, align 4
@FZ_TRANSITION_COVER = common dso_local global i32 0, align 4
@Uncover = common dso_local global i32 0, align 4
@FZ_TRANSITION_UNCOVER = common dso_local global i32 0, align 4
@Fade = common dso_local global i32 0, align 4
@FZ_TRANSITION_FADE = common dso_local global i32 0, align 4
@FZ_TRANSITION_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @pdf_page_presentation(i32* %0, %struct.TYPE_6__* %1, %struct.TYPE_7__* %2, float* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store float* %3, float** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* @Dur, align 4
  %17 = call i32 @PDF_NAME(i32 %16)
  %18 = call float @pdf_dict_get_real(i32* %12, i32* %15, i32 %17)
  %19 = load float*, float** %9, align 8
  store float %18, float* %19, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @Trans, align 4
  %25 = call i32 @PDF_NAME(i32 %24)
  %26 = call i32* @pdf_dict_get(i32* %20, i32* %23, i32 %25)
  store i32* %26, i32** %11, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %223

30:                                               ; preds = %4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* @D, align 4
  %34 = call i32 @PDF_NAME(i32 %33)
  %35 = call i32* @pdf_dict_get(i32* %31, i32* %32, i32 %34)
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @pdf_to_real(i32* %39, i32* %40)
  br label %43

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i32 [ %41, %38 ], [ 1, %42 ]
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* @Dm, align 4
  %51 = call i32 @PDF_NAME(i32 %50)
  %52 = call i32* @pdf_dict_get(i32* %48, i32* %49, i32 %51)
  %53 = load i32, i32* @H, align 4
  %54 = call i32 @PDF_NAME(i32 %53)
  %55 = call i64 @pdf_name_eq(i32* %47, i32* %52, i32 %54)
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* @M, align 4
  %65 = call i32 @PDF_NAME(i32 %64)
  %66 = call i32* @pdf_dict_get(i32* %62, i32* %63, i32 %65)
  %67 = load i32, i32* @I, align 4
  %68 = call i32 @PDF_NAME(i32 %67)
  %69 = call i64 @pdf_name_eq(i32* %61, i32* %66, i32 %68)
  %70 = icmp ne i64 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* @Di, align 4
  %78 = call i32 @PDF_NAME(i32 %77)
  %79 = call i32 @pdf_dict_get_int(i32* %75, i32* %76, i32 %78)
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* @S, align 4
  %85 = call i32 @PDF_NAME(i32 %84)
  %86 = call i32* @pdf_dict_get(i32* %82, i32* %83, i32 %85)
  store i32* %86, i32** %10, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* @Split, align 4
  %90 = call i32 @PDF_NAME(i32 %89)
  %91 = call i64 @pdf_name_eq(i32* %87, i32* %88, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %43
  %94 = load i32, i32* @FZ_TRANSITION_SPLIT, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  br label %221

97:                                               ; preds = %43
  %98 = load i32*, i32** %6, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* @Blinds, align 4
  %101 = call i32 @PDF_NAME(i32 %100)
  %102 = call i64 @pdf_name_eq(i32* %98, i32* %99, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load i32, i32* @FZ_TRANSITION_BLINDS, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  br label %220

108:                                              ; preds = %97
  %109 = load i32*, i32** %6, align 8
  %110 = load i32*, i32** %10, align 8
  %111 = load i32, i32* @Box, align 4
  %112 = call i32 @PDF_NAME(i32 %111)
  %113 = call i64 @pdf_name_eq(i32* %109, i32* %110, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load i32, i32* @FZ_TRANSITION_BOX, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  br label %219

119:                                              ; preds = %108
  %120 = load i32*, i32** %6, align 8
  %121 = load i32*, i32** %10, align 8
  %122 = load i32, i32* @Wipe, align 4
  %123 = call i32 @PDF_NAME(i32 %122)
  %124 = call i64 @pdf_name_eq(i32* %120, i32* %121, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load i32, i32* @FZ_TRANSITION_WIPE, align 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  br label %218

130:                                              ; preds = %119
  %131 = load i32*, i32** %6, align 8
  %132 = load i32*, i32** %10, align 8
  %133 = load i32, i32* @Dissolve, align 4
  %134 = call i32 @PDF_NAME(i32 %133)
  %135 = call i64 @pdf_name_eq(i32* %131, i32* %132, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load i32, i32* @FZ_TRANSITION_DISSOLVE, align 4
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  br label %217

141:                                              ; preds = %130
  %142 = load i32*, i32** %6, align 8
  %143 = load i32*, i32** %10, align 8
  %144 = load i32, i32* @Glitter, align 4
  %145 = call i32 @PDF_NAME(i32 %144)
  %146 = call i64 @pdf_name_eq(i32* %142, i32* %143, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %141
  %149 = load i32, i32* @FZ_TRANSITION_GLITTER, align 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 4
  br label %216

152:                                              ; preds = %141
  %153 = load i32*, i32** %6, align 8
  %154 = load i32*, i32** %10, align 8
  %155 = load i32, i32* @Fly, align 4
  %156 = call i32 @PDF_NAME(i32 %155)
  %157 = call i64 @pdf_name_eq(i32* %153, i32* %154, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %152
  %160 = load i32, i32* @FZ_TRANSITION_FLY, align 4
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 4
  br label %215

163:                                              ; preds = %152
  %164 = load i32*, i32** %6, align 8
  %165 = load i32*, i32** %10, align 8
  %166 = load i32, i32* @Push, align 4
  %167 = call i32 @PDF_NAME(i32 %166)
  %168 = call i64 @pdf_name_eq(i32* %164, i32* %165, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %163
  %171 = load i32, i32* @FZ_TRANSITION_PUSH, align 4
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 4
  br label %214

174:                                              ; preds = %163
  %175 = load i32*, i32** %6, align 8
  %176 = load i32*, i32** %10, align 8
  %177 = load i32, i32* @Cover, align 4
  %178 = call i32 @PDF_NAME(i32 %177)
  %179 = call i64 @pdf_name_eq(i32* %175, i32* %176, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %174
  %182 = load i32, i32* @FZ_TRANSITION_COVER, align 4
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 4
  br label %213

185:                                              ; preds = %174
  %186 = load i32*, i32** %6, align 8
  %187 = load i32*, i32** %10, align 8
  %188 = load i32, i32* @Uncover, align 4
  %189 = call i32 @PDF_NAME(i32 %188)
  %190 = call i64 @pdf_name_eq(i32* %186, i32* %187, i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %185
  %193 = load i32, i32* @FZ_TRANSITION_UNCOVER, align 4
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 3
  store i32 %193, i32* %195, align 4
  br label %212

196:                                              ; preds = %185
  %197 = load i32*, i32** %6, align 8
  %198 = load i32*, i32** %10, align 8
  %199 = load i32, i32* @Fade, align 4
  %200 = call i32 @PDF_NAME(i32 %199)
  %201 = call i64 @pdf_name_eq(i32* %197, i32* %198, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %196
  %204 = load i32, i32* @FZ_TRANSITION_FADE, align 4
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 3
  store i32 %204, i32* %206, align 4
  br label %211

207:                                              ; preds = %196
  %208 = load i32, i32* @FZ_TRANSITION_NONE, align 4
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 3
  store i32 %208, i32* %210, align 4
  br label %211

211:                                              ; preds = %207, %203
  br label %212

212:                                              ; preds = %211, %192
  br label %213

213:                                              ; preds = %212, %181
  br label %214

214:                                              ; preds = %213, %170
  br label %215

215:                                              ; preds = %214, %159
  br label %216

216:                                              ; preds = %215, %148
  br label %217

217:                                              ; preds = %216, %137
  br label %218

218:                                              ; preds = %217, %126
  br label %219

219:                                              ; preds = %218, %115
  br label %220

220:                                              ; preds = %219, %104
  br label %221

221:                                              ; preds = %220, %93
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %222, %struct.TYPE_7__** %5, align 8
  br label %223

223:                                              ; preds = %221, %29
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %224
}

declare dso_local float @pdf_dict_get_real(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @pdf_to_real(i32*, i32*) #1

declare dso_local i64 @pdf_name_eq(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dict_get_int(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

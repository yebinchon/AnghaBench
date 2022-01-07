; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_stb_gl.h_stbgl_drawBox.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_stb_gl.h_stbgl_drawBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_QUADS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stbgl_drawBox(float %0, float %1, float %2, float %3, float %4, float %5, i32 %6) #0 {
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  store float %0, float* %8, align 4
  store float %1, float* %9, align 4
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store i32 %6, i32* %14, align 4
  %21 = load float, float* %11, align 4
  %22 = fdiv float %21, 2.000000e+00
  store float %22, float* %11, align 4
  %23 = load float, float* %12, align 4
  %24 = fdiv float %23, 2.000000e+00
  store float %24, float* %12, align 4
  %25 = load float, float* %13, align 4
  %26 = fdiv float %25, 2.000000e+00
  store float %26, float* %13, align 4
  %27 = load float, float* %8, align 4
  %28 = load float, float* %11, align 4
  %29 = fsub float %27, %28
  store float %29, float* %15, align 4
  %30 = load float, float* %9, align 4
  %31 = load float, float* %12, align 4
  %32 = fsub float %30, %31
  store float %32, float* %16, align 4
  %33 = load float, float* %10, align 4
  %34 = load float, float* %13, align 4
  %35 = fsub float %33, %34
  store float %35, float* %17, align 4
  %36 = load float, float* %8, align 4
  %37 = load float, float* %11, align 4
  %38 = fadd float %36, %37
  store float %38, float* %18, align 4
  %39 = load float, float* %9, align 4
  %40 = load float, float* %12, align 4
  %41 = fadd float %39, %40
  store float %41, float* %19, align 4
  %42 = load float, float* %10, align 4
  %43 = load float, float* %13, align 4
  %44 = fadd float %42, %43
  store float %44, float* %20, align 4
  %45 = load i32, i32* @GL_QUADS, align 4
  %46 = call i32 @glBegin(i32 %45)
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %176

49:                                               ; preds = %7
  %50 = call i32 @glNormal3f(i32 0, i32 0, i32 -1)
  %51 = call i32 @glTexCoord2f(i32 0, i32 0)
  %52 = load float, float* %15, align 4
  %53 = load float, float* %16, align 4
  %54 = load float, float* %17, align 4
  %55 = call i32 @glVertex3f(float %52, float %53, float %54)
  %56 = call i32 @glTexCoord2f(i32 1, i32 0)
  %57 = load float, float* %18, align 4
  %58 = load float, float* %16, align 4
  %59 = load float, float* %17, align 4
  %60 = call i32 @glVertex3f(float %57, float %58, float %59)
  %61 = call i32 @glTexCoord2f(i32 1, i32 1)
  %62 = load float, float* %18, align 4
  %63 = load float, float* %19, align 4
  %64 = load float, float* %17, align 4
  %65 = call i32 @glVertex3f(float %62, float %63, float %64)
  %66 = call i32 @glTexCoord2f(i32 0, i32 1)
  %67 = load float, float* %15, align 4
  %68 = load float, float* %19, align 4
  %69 = load float, float* %17, align 4
  %70 = call i32 @glVertex3f(float %67, float %68, float %69)
  %71 = call i32 @glNormal3f(i32 0, i32 0, i32 1)
  %72 = call i32 @glTexCoord2f(i32 0, i32 0)
  %73 = load float, float* %18, align 4
  %74 = load float, float* %16, align 4
  %75 = load float, float* %20, align 4
  %76 = call i32 @glVertex3f(float %73, float %74, float %75)
  %77 = call i32 @glTexCoord2f(i32 1, i32 0)
  %78 = load float, float* %15, align 4
  %79 = load float, float* %16, align 4
  %80 = load float, float* %20, align 4
  %81 = call i32 @glVertex3f(float %78, float %79, float %80)
  %82 = call i32 @glTexCoord2f(i32 1, i32 1)
  %83 = load float, float* %15, align 4
  %84 = load float, float* %19, align 4
  %85 = load float, float* %20, align 4
  %86 = call i32 @glVertex3f(float %83, float %84, float %85)
  %87 = call i32 @glTexCoord2f(i32 0, i32 1)
  %88 = load float, float* %18, align 4
  %89 = load float, float* %19, align 4
  %90 = load float, float* %20, align 4
  %91 = call i32 @glVertex3f(float %88, float %89, float %90)
  %92 = call i32 @glNormal3f(i32 -1, i32 0, i32 0)
  %93 = call i32 @glTexCoord2f(i32 0, i32 0)
  %94 = load float, float* %15, align 4
  %95 = load float, float* %19, align 4
  %96 = load float, float* %20, align 4
  %97 = call i32 @glVertex3f(float %94, float %95, float %96)
  %98 = call i32 @glTexCoord2f(i32 1, i32 0)
  %99 = load float, float* %15, align 4
  %100 = load float, float* %16, align 4
  %101 = load float, float* %20, align 4
  %102 = call i32 @glVertex3f(float %99, float %100, float %101)
  %103 = call i32 @glTexCoord2f(i32 1, i32 1)
  %104 = load float, float* %15, align 4
  %105 = load float, float* %16, align 4
  %106 = load float, float* %17, align 4
  %107 = call i32 @glVertex3f(float %104, float %105, float %106)
  %108 = call i32 @glTexCoord2f(i32 0, i32 1)
  %109 = load float, float* %15, align 4
  %110 = load float, float* %19, align 4
  %111 = load float, float* %17, align 4
  %112 = call i32 @glVertex3f(float %109, float %110, float %111)
  %113 = call i32 @glNormal3f(i32 1, i32 0, i32 0)
  %114 = call i32 @glTexCoord2f(i32 0, i32 0)
  %115 = load float, float* %18, align 4
  %116 = load float, float* %16, align 4
  %117 = load float, float* %20, align 4
  %118 = call i32 @glVertex3f(float %115, float %116, float %117)
  %119 = call i32 @glTexCoord2f(i32 1, i32 0)
  %120 = load float, float* %18, align 4
  %121 = load float, float* %19, align 4
  %122 = load float, float* %20, align 4
  %123 = call i32 @glVertex3f(float %120, float %121, float %122)
  %124 = call i32 @glTexCoord2f(i32 1, i32 1)
  %125 = load float, float* %18, align 4
  %126 = load float, float* %19, align 4
  %127 = load float, float* %17, align 4
  %128 = call i32 @glVertex3f(float %125, float %126, float %127)
  %129 = call i32 @glTexCoord2f(i32 0, i32 1)
  %130 = load float, float* %18, align 4
  %131 = load float, float* %16, align 4
  %132 = load float, float* %17, align 4
  %133 = call i32 @glVertex3f(float %130, float %131, float %132)
  %134 = call i32 @glNormal3f(i32 0, i32 -1, i32 0)
  %135 = call i32 @glTexCoord2f(i32 0, i32 0)
  %136 = load float, float* %15, align 4
  %137 = load float, float* %16, align 4
  %138 = load float, float* %20, align 4
  %139 = call i32 @glVertex3f(float %136, float %137, float %138)
  %140 = call i32 @glTexCoord2f(i32 1, i32 0)
  %141 = load float, float* %18, align 4
  %142 = load float, float* %16, align 4
  %143 = load float, float* %20, align 4
  %144 = call i32 @glVertex3f(float %141, float %142, float %143)
  %145 = call i32 @glTexCoord2f(i32 1, i32 1)
  %146 = load float, float* %18, align 4
  %147 = load float, float* %16, align 4
  %148 = load float, float* %17, align 4
  %149 = call i32 @glVertex3f(float %146, float %147, float %148)
  %150 = call i32 @glTexCoord2f(i32 0, i32 1)
  %151 = load float, float* %15, align 4
  %152 = load float, float* %16, align 4
  %153 = load float, float* %17, align 4
  %154 = call i32 @glVertex3f(float %151, float %152, float %153)
  %155 = call i32 @glNormal3f(i32 0, i32 1, i32 0)
  %156 = call i32 @glTexCoord2f(i32 0, i32 0)
  %157 = load float, float* %18, align 4
  %158 = load float, float* %19, align 4
  %159 = load float, float* %20, align 4
  %160 = call i32 @glVertex3f(float %157, float %158, float %159)
  %161 = call i32 @glTexCoord2f(i32 1, i32 0)
  %162 = load float, float* %15, align 4
  %163 = load float, float* %19, align 4
  %164 = load float, float* %20, align 4
  %165 = call i32 @glVertex3f(float %162, float %163, float %164)
  %166 = call i32 @glTexCoord2f(i32 1, i32 1)
  %167 = load float, float* %15, align 4
  %168 = load float, float* %19, align 4
  %169 = load float, float* %17, align 4
  %170 = call i32 @glVertex3f(float %167, float %168, float %169)
  %171 = call i32 @glTexCoord2f(i32 0, i32 1)
  %172 = load float, float* %18, align 4
  %173 = load float, float* %19, align 4
  %174 = load float, float* %17, align 4
  %175 = call i32 @glVertex3f(float %172, float %173, float %174)
  br label %303

176:                                              ; preds = %7
  %177 = call i32 @glNormal3f(i32 0, i32 0, i32 -1)
  %178 = call i32 @glTexCoord2f(i32 0, i32 0)
  %179 = load float, float* %15, align 4
  %180 = load float, float* %16, align 4
  %181 = load float, float* %17, align 4
  %182 = call i32 @glVertex3f(float %179, float %180, float %181)
  %183 = call i32 @glTexCoord2f(i32 0, i32 1)
  %184 = load float, float* %15, align 4
  %185 = load float, float* %19, align 4
  %186 = load float, float* %17, align 4
  %187 = call i32 @glVertex3f(float %184, float %185, float %186)
  %188 = call i32 @glTexCoord2f(i32 1, i32 1)
  %189 = load float, float* %18, align 4
  %190 = load float, float* %19, align 4
  %191 = load float, float* %17, align 4
  %192 = call i32 @glVertex3f(float %189, float %190, float %191)
  %193 = call i32 @glTexCoord2f(i32 1, i32 0)
  %194 = load float, float* %18, align 4
  %195 = load float, float* %16, align 4
  %196 = load float, float* %17, align 4
  %197 = call i32 @glVertex3f(float %194, float %195, float %196)
  %198 = call i32 @glNormal3f(i32 0, i32 0, i32 1)
  %199 = call i32 @glTexCoord2f(i32 0, i32 0)
  %200 = load float, float* %18, align 4
  %201 = load float, float* %16, align 4
  %202 = load float, float* %20, align 4
  %203 = call i32 @glVertex3f(float %200, float %201, float %202)
  %204 = call i32 @glTexCoord2f(i32 0, i32 1)
  %205 = load float, float* %18, align 4
  %206 = load float, float* %19, align 4
  %207 = load float, float* %20, align 4
  %208 = call i32 @glVertex3f(float %205, float %206, float %207)
  %209 = call i32 @glTexCoord2f(i32 1, i32 1)
  %210 = load float, float* %15, align 4
  %211 = load float, float* %19, align 4
  %212 = load float, float* %20, align 4
  %213 = call i32 @glVertex3f(float %210, float %211, float %212)
  %214 = call i32 @glTexCoord2f(i32 1, i32 0)
  %215 = load float, float* %15, align 4
  %216 = load float, float* %16, align 4
  %217 = load float, float* %20, align 4
  %218 = call i32 @glVertex3f(float %215, float %216, float %217)
  %219 = call i32 @glNormal3f(i32 -1, i32 0, i32 0)
  %220 = call i32 @glTexCoord2f(i32 0, i32 0)
  %221 = load float, float* %15, align 4
  %222 = load float, float* %19, align 4
  %223 = load float, float* %20, align 4
  %224 = call i32 @glVertex3f(float %221, float %222, float %223)
  %225 = call i32 @glTexCoord2f(i32 0, i32 1)
  %226 = load float, float* %15, align 4
  %227 = load float, float* %19, align 4
  %228 = load float, float* %17, align 4
  %229 = call i32 @glVertex3f(float %226, float %227, float %228)
  %230 = call i32 @glTexCoord2f(i32 1, i32 1)
  %231 = load float, float* %15, align 4
  %232 = load float, float* %16, align 4
  %233 = load float, float* %17, align 4
  %234 = call i32 @glVertex3f(float %231, float %232, float %233)
  %235 = call i32 @glTexCoord2f(i32 1, i32 0)
  %236 = load float, float* %15, align 4
  %237 = load float, float* %16, align 4
  %238 = load float, float* %20, align 4
  %239 = call i32 @glVertex3f(float %236, float %237, float %238)
  %240 = call i32 @glNormal3f(i32 1, i32 0, i32 0)
  %241 = call i32 @glTexCoord2f(i32 0, i32 0)
  %242 = load float, float* %18, align 4
  %243 = load float, float* %16, align 4
  %244 = load float, float* %20, align 4
  %245 = call i32 @glVertex3f(float %242, float %243, float %244)
  %246 = call i32 @glTexCoord2f(i32 0, i32 1)
  %247 = load float, float* %18, align 4
  %248 = load float, float* %16, align 4
  %249 = load float, float* %17, align 4
  %250 = call i32 @glVertex3f(float %247, float %248, float %249)
  %251 = call i32 @glTexCoord2f(i32 1, i32 1)
  %252 = load float, float* %18, align 4
  %253 = load float, float* %19, align 4
  %254 = load float, float* %17, align 4
  %255 = call i32 @glVertex3f(float %252, float %253, float %254)
  %256 = call i32 @glTexCoord2f(i32 1, i32 0)
  %257 = load float, float* %18, align 4
  %258 = load float, float* %19, align 4
  %259 = load float, float* %20, align 4
  %260 = call i32 @glVertex3f(float %257, float %258, float %259)
  %261 = call i32 @glNormal3f(i32 0, i32 -1, i32 0)
  %262 = call i32 @glTexCoord2f(i32 0, i32 0)
  %263 = load float, float* %15, align 4
  %264 = load float, float* %16, align 4
  %265 = load float, float* %20, align 4
  %266 = call i32 @glVertex3f(float %263, float %264, float %265)
  %267 = call i32 @glTexCoord2f(i32 0, i32 1)
  %268 = load float, float* %15, align 4
  %269 = load float, float* %16, align 4
  %270 = load float, float* %17, align 4
  %271 = call i32 @glVertex3f(float %268, float %269, float %270)
  %272 = call i32 @glTexCoord2f(i32 1, i32 1)
  %273 = load float, float* %18, align 4
  %274 = load float, float* %16, align 4
  %275 = load float, float* %17, align 4
  %276 = call i32 @glVertex3f(float %273, float %274, float %275)
  %277 = call i32 @glTexCoord2f(i32 1, i32 0)
  %278 = load float, float* %18, align 4
  %279 = load float, float* %16, align 4
  %280 = load float, float* %20, align 4
  %281 = call i32 @glVertex3f(float %278, float %279, float %280)
  %282 = call i32 @glNormal3f(i32 0, i32 1, i32 0)
  %283 = call i32 @glTexCoord2f(i32 0, i32 0)
  %284 = load float, float* %18, align 4
  %285 = load float, float* %19, align 4
  %286 = load float, float* %20, align 4
  %287 = call i32 @glVertex3f(float %284, float %285, float %286)
  %288 = call i32 @glTexCoord2f(i32 0, i32 1)
  %289 = load float, float* %18, align 4
  %290 = load float, float* %19, align 4
  %291 = load float, float* %17, align 4
  %292 = call i32 @glVertex3f(float %289, float %290, float %291)
  %293 = call i32 @glTexCoord2f(i32 1, i32 1)
  %294 = load float, float* %15, align 4
  %295 = load float, float* %19, align 4
  %296 = load float, float* %17, align 4
  %297 = call i32 @glVertex3f(float %294, float %295, float %296)
  %298 = call i32 @glTexCoord2f(i32 1, i32 0)
  %299 = load float, float* %15, align 4
  %300 = load float, float* %19, align 4
  %301 = load float, float* %20, align 4
  %302 = call i32 @glVertex3f(float %299, float %300, float %301)
  br label %303

303:                                              ; preds = %176, %49
  %304 = call i32 (...) @glEnd()
  ret void
}

declare dso_local i32 @glBegin(i32) #1

declare dso_local i32 @glNormal3f(i32, i32, i32) #1

declare dso_local i32 @glTexCoord2f(i32, i32) #1

declare dso_local i32 @glVertex3f(float, float, float) #1

declare dso_local i32 @glEnd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

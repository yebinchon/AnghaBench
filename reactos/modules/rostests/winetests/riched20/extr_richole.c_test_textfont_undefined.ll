; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_textfont_undefined.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_textfont_undefined.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tomFalse = common dso_local global float 0.000000e+00, align 4
@S_OK = common dso_local global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@tomUndefined = common dso_local global float 0.000000e+00, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"got %.2f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_textfont_undefined to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_textfont_undefined(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store i32* %0, i32** %2, align 8
  %6 = load float, float* @tomFalse, align 4
  store float %6, float* %4, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = call float @ITextFont_GetAllCaps(i32* %7, float* %4)
  store float %8, float* %5, align 4
  %9 = load float, float* %5, align 4
  %10 = load float, float* @S_OK, align 4
  %11 = fcmp oeq float %9, %10
  %12 = zext i1 %11 to i32
  %13 = load float, float* %5, align 4
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), float %13)
  %15 = load float, float* %4, align 4
  %16 = load float, float* @tomUndefined, align 4
  %17 = fcmp oeq float %15, %16
  %18 = zext i1 %17 to i32
  %19 = load float, float* %4, align 4
  %20 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), float %19)
  %21 = load float, float* @tomFalse, align 4
  store float %21, float* %4, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = call float @ITextFont_GetAnimation(i32* %22, float* %4)
  store float %23, float* %5, align 4
  %24 = load float, float* %5, align 4
  %25 = load float, float* @S_OK, align 4
  %26 = fcmp oeq float %24, %25
  %27 = zext i1 %26 to i32
  %28 = load float, float* %5, align 4
  %29 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), float %28)
  %30 = load float, float* %4, align 4
  %31 = load float, float* @tomUndefined, align 4
  %32 = fcmp oeq float %30, %31
  %33 = zext i1 %32 to i32
  %34 = load float, float* %4, align 4
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), float %34)
  %36 = load float, float* @tomFalse, align 4
  store float %36, float* %4, align 4
  %37 = load i32*, i32** %2, align 8
  %38 = call float @ITextFont_GetBackColor(i32* %37, float* %4)
  store float %38, float* %5, align 4
  %39 = load float, float* %5, align 4
  %40 = load float, float* @S_OK, align 4
  %41 = fcmp oeq float %39, %40
  %42 = zext i1 %41 to i32
  %43 = load float, float* %5, align 4
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), float %43)
  %45 = load float, float* %4, align 4
  %46 = load float, float* @tomUndefined, align 4
  %47 = fcmp oeq float %45, %46
  %48 = zext i1 %47 to i32
  %49 = load float, float* %4, align 4
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), float %49)
  %51 = load float, float* @tomFalse, align 4
  store float %51, float* %4, align 4
  %52 = load i32*, i32** %2, align 8
  %53 = call float @ITextFont_GetBold(i32* %52, float* %4)
  store float %53, float* %5, align 4
  %54 = load float, float* %5, align 4
  %55 = load float, float* @S_OK, align 4
  %56 = fcmp oeq float %54, %55
  %57 = zext i1 %56 to i32
  %58 = load float, float* %5, align 4
  %59 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), float %58)
  %60 = load float, float* %4, align 4
  %61 = load float, float* @tomUndefined, align 4
  %62 = fcmp oeq float %60, %61
  %63 = zext i1 %62 to i32
  %64 = load float, float* %4, align 4
  %65 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), float %64)
  %66 = load float, float* @tomFalse, align 4
  store float %66, float* %4, align 4
  %67 = load i32*, i32** %2, align 8
  %68 = call float @ITextFont_GetEmboss(i32* %67, float* %4)
  store float %68, float* %5, align 4
  %69 = load float, float* %5, align 4
  %70 = load float, float* @S_OK, align 4
  %71 = fcmp oeq float %69, %70
  %72 = zext i1 %71 to i32
  %73 = load float, float* %5, align 4
  %74 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), float %73)
  %75 = load float, float* %4, align 4
  %76 = load float, float* @tomUndefined, align 4
  %77 = fcmp oeq float %75, %76
  %78 = zext i1 %77 to i32
  %79 = load float, float* %4, align 4
  %80 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), float %79)
  %81 = load float, float* @tomFalse, align 4
  store float %81, float* %4, align 4
  %82 = load i32*, i32** %2, align 8
  %83 = call float @ITextFont_GetForeColor(i32* %82, float* %4)
  store float %83, float* %5, align 4
  %84 = load float, float* %5, align 4
  %85 = load float, float* @S_OK, align 4
  %86 = fcmp oeq float %84, %85
  %87 = zext i1 %86 to i32
  %88 = load float, float* %5, align 4
  %89 = call i32 @ok(i32 %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), float %88)
  %90 = load float, float* %4, align 4
  %91 = load float, float* @tomUndefined, align 4
  %92 = fcmp oeq float %90, %91
  %93 = zext i1 %92 to i32
  %94 = load float, float* %4, align 4
  %95 = call i32 @ok(i32 %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), float %94)
  %96 = load float, float* @tomFalse, align 4
  store float %96, float* %4, align 4
  %97 = load i32*, i32** %2, align 8
  %98 = call float @ITextFont_GetHidden(i32* %97, float* %4)
  store float %98, float* %5, align 4
  %99 = load float, float* %5, align 4
  %100 = load float, float* @S_OK, align 4
  %101 = fcmp oeq float %99, %100
  %102 = zext i1 %101 to i32
  %103 = load float, float* %5, align 4
  %104 = call i32 @ok(i32 %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), float %103)
  %105 = load float, float* %4, align 4
  %106 = load float, float* @tomUndefined, align 4
  %107 = fcmp oeq float %105, %106
  %108 = zext i1 %107 to i32
  %109 = load float, float* %4, align 4
  %110 = call i32 @ok(i32 %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), float %109)
  %111 = load float, float* @tomFalse, align 4
  store float %111, float* %4, align 4
  %112 = load i32*, i32** %2, align 8
  %113 = call float @ITextFont_GetEngrave(i32* %112, float* %4)
  store float %113, float* %5, align 4
  %114 = load float, float* %5, align 4
  %115 = load float, float* @S_OK, align 4
  %116 = fcmp oeq float %114, %115
  %117 = zext i1 %116 to i32
  %118 = load float, float* %5, align 4
  %119 = call i32 @ok(i32 %117, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), float %118)
  %120 = load float, float* %4, align 4
  %121 = load float, float* @tomUndefined, align 4
  %122 = fcmp oeq float %120, %121
  %123 = zext i1 %122 to i32
  %124 = load float, float* %4, align 4
  %125 = call i32 @ok(i32 %123, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), float %124)
  %126 = load float, float* @tomFalse, align 4
  store float %126, float* %4, align 4
  %127 = load i32*, i32** %2, align 8
  %128 = call float @ITextFont_GetItalic(i32* %127, float* %4)
  store float %128, float* %5, align 4
  %129 = load float, float* %5, align 4
  %130 = load float, float* @S_OK, align 4
  %131 = fcmp oeq float %129, %130
  %132 = zext i1 %131 to i32
  %133 = load float, float* %5, align 4
  %134 = call i32 @ok(i32 %132, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), float %133)
  %135 = load float, float* %4, align 4
  %136 = load float, float* @tomUndefined, align 4
  %137 = fcmp oeq float %135, %136
  %138 = zext i1 %137 to i32
  %139 = load float, float* %4, align 4
  %140 = call i32 @ok(i32 %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), float %139)
  store float 0.000000e+00, float* %3, align 4
  %141 = load i32*, i32** %2, align 8
  %142 = call float @ITextFont_GetKerning(i32* %141, float* %3)
  store float %142, float* %5, align 4
  %143 = load float, float* %5, align 4
  %144 = load float, float* @S_OK, align 4
  %145 = fcmp oeq float %143, %144
  %146 = zext i1 %145 to i32
  %147 = load float, float* %5, align 4
  %148 = call i32 @ok(i32 %146, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), float %147)
  %149 = load float, float* %3, align 4
  %150 = load float, float* @tomUndefined, align 4
  %151 = fcmp oeq float %149, %150
  %152 = zext i1 %151 to i32
  %153 = load float, float* %3, align 4
  %154 = call i32 @ok(i32 %152, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), float %153)
  %155 = load float, float* @tomFalse, align 4
  store float %155, float* %4, align 4
  %156 = load i32*, i32** %2, align 8
  %157 = call float @ITextFont_GetLanguageID(i32* %156, float* %4)
  store float %157, float* %5, align 4
  %158 = load float, float* %5, align 4
  %159 = load float, float* @S_OK, align 4
  %160 = fcmp oeq float %158, %159
  %161 = zext i1 %160 to i32
  %162 = load float, float* %5, align 4
  %163 = call i32 @ok(i32 %161, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), float %162)
  %164 = load float, float* %4, align 4
  %165 = load float, float* @tomUndefined, align 4
  %166 = fcmp oeq float %164, %165
  %167 = zext i1 %166 to i32
  %168 = load float, float* %4, align 4
  %169 = call i32 @ok(i32 %167, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), float %168)
  %170 = load float, float* @tomFalse, align 4
  store float %170, float* %4, align 4
  %171 = load i32*, i32** %2, align 8
  %172 = call float @ITextFont_GetOutline(i32* %171, float* %4)
  store float %172, float* %5, align 4
  %173 = load float, float* %5, align 4
  %174 = load float, float* @S_OK, align 4
  %175 = fcmp oeq float %173, %174
  %176 = zext i1 %175 to i32
  %177 = load float, float* %5, align 4
  %178 = call i32 @ok(i32 %176, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), float %177)
  %179 = load float, float* %4, align 4
  %180 = load float, float* @tomUndefined, align 4
  %181 = fcmp oeq float %179, %180
  %182 = zext i1 %181 to i32
  %183 = load float, float* %4, align 4
  %184 = call i32 @ok(i32 %182, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), float %183)
  store float 0.000000e+00, float* %3, align 4
  %185 = load i32*, i32** %2, align 8
  %186 = call float @ITextFont_GetPosition(i32* %185, float* %3)
  store float %186, float* %5, align 4
  %187 = load float, float* %5, align 4
  %188 = load float, float* @S_OK, align 4
  %189 = fcmp oeq float %187, %188
  %190 = zext i1 %189 to i32
  %191 = load float, float* %5, align 4
  %192 = call i32 @ok(i32 %190, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), float %191)
  %193 = load float, float* %3, align 4
  %194 = load float, float* @tomUndefined, align 4
  %195 = fcmp oeq float %193, %194
  %196 = zext i1 %195 to i32
  %197 = load float, float* %3, align 4
  %198 = call i32 @ok(i32 %196, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), float %197)
  %199 = load float, float* @tomFalse, align 4
  store float %199, float* %4, align 4
  %200 = load i32*, i32** %2, align 8
  %201 = call float @ITextFont_GetProtected(i32* %200, float* %4)
  store float %201, float* %5, align 4
  %202 = load float, float* %5, align 4
  %203 = load float, float* @S_OK, align 4
  %204 = fcmp oeq float %202, %203
  %205 = zext i1 %204 to i32
  %206 = load float, float* %5, align 4
  %207 = call i32 @ok(i32 %205, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), float %206)
  %208 = load float, float* %4, align 4
  %209 = load float, float* @tomUndefined, align 4
  %210 = fcmp oeq float %208, %209
  %211 = zext i1 %210 to i32
  %212 = load float, float* %4, align 4
  %213 = call i32 @ok(i32 %211, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), float %212)
  %214 = load float, float* @tomFalse, align 4
  store float %214, float* %4, align 4
  %215 = load i32*, i32** %2, align 8
  %216 = call float @ITextFont_GetShadow(i32* %215, float* %4)
  store float %216, float* %5, align 4
  %217 = load float, float* %5, align 4
  %218 = load float, float* @S_OK, align 4
  %219 = fcmp oeq float %217, %218
  %220 = zext i1 %219 to i32
  %221 = load float, float* %5, align 4
  %222 = call i32 @ok(i32 %220, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), float %221)
  %223 = load float, float* %4, align 4
  %224 = load float, float* @tomUndefined, align 4
  %225 = fcmp oeq float %223, %224
  %226 = zext i1 %225 to i32
  %227 = load float, float* %4, align 4
  %228 = call i32 @ok(i32 %226, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), float %227)
  store float 0.000000e+00, float* %3, align 4
  %229 = load i32*, i32** %2, align 8
  %230 = call float @ITextFont_GetSize(i32* %229, float* %3)
  store float %230, float* %5, align 4
  %231 = load float, float* %5, align 4
  %232 = load float, float* @S_OK, align 4
  %233 = fcmp oeq float %231, %232
  %234 = zext i1 %233 to i32
  %235 = load float, float* %5, align 4
  %236 = call i32 @ok(i32 %234, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), float %235)
  %237 = load float, float* %3, align 4
  %238 = load float, float* @tomUndefined, align 4
  %239 = fcmp oeq float %237, %238
  %240 = zext i1 %239 to i32
  %241 = load float, float* %3, align 4
  %242 = call i32 @ok(i32 %240, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), float %241)
  %243 = load float, float* @tomFalse, align 4
  store float %243, float* %4, align 4
  %244 = load i32*, i32** %2, align 8
  %245 = call float @ITextFont_GetSmallCaps(i32* %244, float* %4)
  store float %245, float* %5, align 4
  %246 = load float, float* %5, align 4
  %247 = load float, float* @S_OK, align 4
  %248 = fcmp oeq float %246, %247
  %249 = zext i1 %248 to i32
  %250 = load float, float* %5, align 4
  %251 = call i32 @ok(i32 %249, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), float %250)
  %252 = load float, float* %4, align 4
  %253 = load float, float* @tomUndefined, align 4
  %254 = fcmp oeq float %252, %253
  %255 = zext i1 %254 to i32
  %256 = load float, float* %4, align 4
  %257 = call i32 @ok(i32 %255, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), float %256)
  store float 0.000000e+00, float* %3, align 4
  %258 = load i32*, i32** %2, align 8
  %259 = call float @ITextFont_GetSpacing(i32* %258, float* %3)
  store float %259, float* %5, align 4
  %260 = load float, float* %5, align 4
  %261 = load float, float* @S_OK, align 4
  %262 = fcmp oeq float %260, %261
  %263 = zext i1 %262 to i32
  %264 = load float, float* %5, align 4
  %265 = call i32 @ok(i32 %263, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), float %264)
  %266 = load float, float* %3, align 4
  %267 = load float, float* @tomUndefined, align 4
  %268 = fcmp oeq float %266, %267
  %269 = zext i1 %268 to i32
  %270 = load float, float* %3, align 4
  %271 = call i32 @ok(i32 %269, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), float %270)
  %272 = load float, float* @tomFalse, align 4
  store float %272, float* %4, align 4
  %273 = load i32*, i32** %2, align 8
  %274 = call float @ITextFont_GetStrikeThrough(i32* %273, float* %4)
  store float %274, float* %5, align 4
  %275 = load float, float* %5, align 4
  %276 = load float, float* @S_OK, align 4
  %277 = fcmp oeq float %275, %276
  %278 = zext i1 %277 to i32
  %279 = load float, float* %5, align 4
  %280 = call i32 @ok(i32 %278, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), float %279)
  %281 = load float, float* %4, align 4
  %282 = load float, float* @tomUndefined, align 4
  %283 = fcmp oeq float %281, %282
  %284 = zext i1 %283 to i32
  %285 = load float, float* %4, align 4
  %286 = call i32 @ok(i32 %284, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), float %285)
  %287 = load float, float* @tomFalse, align 4
  store float %287, float* %4, align 4
  %288 = load i32*, i32** %2, align 8
  %289 = call float @ITextFont_GetSubscript(i32* %288, float* %4)
  store float %289, float* %5, align 4
  %290 = load float, float* %5, align 4
  %291 = load float, float* @S_OK, align 4
  %292 = fcmp oeq float %290, %291
  %293 = zext i1 %292 to i32
  %294 = load float, float* %5, align 4
  %295 = call i32 @ok(i32 %293, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), float %294)
  %296 = load float, float* %4, align 4
  %297 = load float, float* @tomUndefined, align 4
  %298 = fcmp oeq float %296, %297
  %299 = zext i1 %298 to i32
  %300 = load float, float* %4, align 4
  %301 = call i32 @ok(i32 %299, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), float %300)
  %302 = load float, float* @tomFalse, align 4
  store float %302, float* %4, align 4
  %303 = load i32*, i32** %2, align 8
  %304 = call float @ITextFont_GetSuperscript(i32* %303, float* %4)
  store float %304, float* %5, align 4
  %305 = load float, float* %5, align 4
  %306 = load float, float* @S_OK, align 4
  %307 = fcmp oeq float %305, %306
  %308 = zext i1 %307 to i32
  %309 = load float, float* %5, align 4
  %310 = call i32 @ok(i32 %308, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), float %309)
  %311 = load float, float* %4, align 4
  %312 = load float, float* @tomUndefined, align 4
  %313 = fcmp oeq float %311, %312
  %314 = zext i1 %313 to i32
  %315 = load float, float* %4, align 4
  %316 = call i32 @ok(i32 %314, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), float %315)
  %317 = load float, float* @tomFalse, align 4
  store float %317, float* %4, align 4
  %318 = load i32*, i32** %2, align 8
  %319 = call float @ITextFont_GetUnderline(i32* %318, float* %4)
  store float %319, float* %5, align 4
  %320 = load float, float* %5, align 4
  %321 = load float, float* @S_OK, align 4
  %322 = fcmp oeq float %320, %321
  %323 = zext i1 %322 to i32
  %324 = load float, float* %5, align 4
  %325 = call i32 @ok(i32 %323, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), float %324)
  %326 = load float, float* %4, align 4
  %327 = load float, float* @tomUndefined, align 4
  %328 = fcmp oeq float %326, %327
  %329 = zext i1 %328 to i32
  %330 = load float, float* %4, align 4
  %331 = call i32 @ok(i32 %329, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), float %330)
  %332 = load float, float* @tomFalse, align 4
  store float %332, float* %4, align 4
  %333 = load i32*, i32** %2, align 8
  %334 = call float @ITextFont_GetWeight(i32* %333, float* %4)
  store float %334, float* %5, align 4
  %335 = load float, float* %5, align 4
  %336 = load float, float* @S_OK, align 4
  %337 = fcmp oeq float %335, %336
  %338 = zext i1 %337 to i32
  %339 = load float, float* %5, align 4
  %340 = call i32 @ok(i32 %338, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), float %339)
  %341 = load float, float* %4, align 4
  %342 = load float, float* @tomUndefined, align 4
  %343 = fcmp oeq float %341, %342
  %344 = zext i1 %343 to i32
  %345 = load float, float* %4, align 4
  %346 = call i32 @ok(i32 %344, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), float %345)
  ret void
}

declare dso_local float @ITextFont_GetAllCaps(i32*, float*) #1

declare dso_local i32 @ok(i32, i8*, float) #1

declare dso_local float @ITextFont_GetAnimation(i32*, float*) #1

declare dso_local float @ITextFont_GetBackColor(i32*, float*) #1

declare dso_local float @ITextFont_GetBold(i32*, float*) #1

declare dso_local float @ITextFont_GetEmboss(i32*, float*) #1

declare dso_local float @ITextFont_GetForeColor(i32*, float*) #1

declare dso_local float @ITextFont_GetHidden(i32*, float*) #1

declare dso_local float @ITextFont_GetEngrave(i32*, float*) #1

declare dso_local float @ITextFont_GetItalic(i32*, float*) #1

declare dso_local float @ITextFont_GetKerning(i32*, float*) #1

declare dso_local float @ITextFont_GetLanguageID(i32*, float*) #1

declare dso_local float @ITextFont_GetOutline(i32*, float*) #1

declare dso_local float @ITextFont_GetPosition(i32*, float*) #1

declare dso_local float @ITextFont_GetProtected(i32*, float*) #1

declare dso_local float @ITextFont_GetShadow(i32*, float*) #1

declare dso_local float @ITextFont_GetSize(i32*, float*) #1

declare dso_local float @ITextFont_GetSmallCaps(i32*, float*) #1

declare dso_local float @ITextFont_GetSpacing(i32*, float*) #1

declare dso_local float @ITextFont_GetStrikeThrough(i32*, float*) #1

declare dso_local float @ITextFont_GetSubscript(i32*, float*) #1

declare dso_local float @ITextFont_GetSuperscript(i32*, float*) #1

declare dso_local float @ITextFont_GetUnderline(i32*, float*) #1

declare dso_local float @ITextFont_GetWeight(i32*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

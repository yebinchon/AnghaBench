; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_dce.c_test_destroyed_window.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_dce.c_test_destroyed_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hwnd_cache = common dso_local global i64 0, align 8
@R2_WHITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"wrong ROP2 %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"wrong window\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ReleaseDC succeeded\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Got a non-NULL DC (%p) for a destroyed window\0A\00", align 1
@hwnd_parent = common dso_local global i64 0, align 8
@DCX_CACHE = common dso_local global i32 0, align 4
@DCX_USESTYLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"DC for destroyed window not reused\0A\00", align 1
@hwnd_classdc = common dso_local global i64 0, align 8
@hwnd_classdc2 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"wrong DC\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Got NULL DC\0A\00", align 1
@hwnd_owndc = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_destroyed_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_destroyed_window() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [30 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i64, i64* @hwnd_cache, align 8
  %7 = call i32 @GetDC(i64 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @R2_WHITE, align 4
  %10 = call i32 @SetROP2(i32 %8, i32 %9)
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @GetROP2(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @R2_WHITE, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %5, align 4
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %1, align 4
  %20 = call i64 @WindowFromDC(i32 %19)
  %21 = load i64, i64* @hwnd_cache, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* %1, align 4
  store i32 %25, i32* %2, align 4
  %26 = load i64, i64* @hwnd_cache, align 8
  %27 = call i32 @DestroyWindow(i64 %26)
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @GetROP2(i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %5, align 4
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %1, align 4
  %36 = call i64 @WindowFromDC(i32 %35)
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i64, i64* @hwnd_cache, align 8
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @ReleaseDC(i64 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i64, i64* @hwnd_cache, align 8
  %48 = call i32 @GetDC(i64 %47)
  store i32 %48, i32* %1, align 4
  %49 = load i32, i32* %1, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %1, align 4
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %72, %0
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 30
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load i64, i64* @hwnd_parent, align 8
  %60 = load i32, i32* @DCX_CACHE, align 4
  %61 = load i32, i32* @DCX_USESTYLE, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @GetDCEx(i64 %59, i32 0, i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [30 x i32], [30 x i32]* %3, i64 0, i64 %65
  store i32 %63, i32* %66, align 4
  store i32 %63, i32* %1, align 4
  %67 = load i32, i32* %1, align 4
  %68 = load i32, i32* %2, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %75

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %55

75:                                               ; preds = %70, %55
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %76, 30
  %78 = zext i1 %77 to i32
  %79 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %80

80:                                               ; preds = %83, %75
  %81 = load i32, i32* %4, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load i64, i64* @hwnd_parent, align 8
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [30 x i32], [30 x i32]* %3, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ReleaseDC(i64 %84, i32 %89)
  br label %80

91:                                               ; preds = %80
  %92 = load i64, i64* @hwnd_classdc, align 8
  %93 = call i32 @GetDC(i64 %92)
  store i32 %93, i32* %1, align 4
  %94 = load i32, i32* %1, align 4
  %95 = load i32, i32* @R2_WHITE, align 4
  %96 = call i32 @SetROP2(i32 %94, i32 %95)
  %97 = load i32, i32* %1, align 4
  %98 = call i32 @GetROP2(i32 %97)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @R2_WHITE, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %5, align 4
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %1, align 4
  %106 = call i64 @WindowFromDC(i32 %105)
  %107 = load i64, i64* @hwnd_classdc, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %111 = load i32, i32* %1, align 4
  store i32 %111, i32* %2, align 4
  %112 = load i64, i64* @hwnd_classdc2, align 8
  %113 = call i32 @GetDC(i64 %112)
  store i32 %113, i32* %1, align 4
  %114 = load i32, i32* %2, align 4
  %115 = load i32, i32* %1, align 4
  %116 = icmp eq i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %119 = load i32, i32* %1, align 4
  %120 = call i32 @GetROP2(i32 %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @R2_WHITE, align 4
  %123 = icmp eq i32 %121, %122
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %5, align 4
  %126 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %1, align 4
  %128 = call i64 @WindowFromDC(i32 %127)
  %129 = load i64, i64* @hwnd_classdc2, align 8
  %130 = icmp eq i64 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 (i32, i8*, ...) @ok(i32 %131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %133 = load i64, i64* @hwnd_classdc2, align 8
  %134 = call i32 @DestroyWindow(i64 %133)
  %135 = load i32, i32* %1, align 4
  %136 = call i32 @GetROP2(i32 %135)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @R2_WHITE, align 4
  %139 = icmp eq i32 %137, %138
  %140 = zext i1 %139 to i32
  %141 = load i32, i32* %5, align 4
  %142 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* %1, align 4
  %144 = call i64 @WindowFromDC(i32 %143)
  %145 = icmp eq i64 %144, 0
  %146 = zext i1 %145 to i32
  %147 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %148 = load i64, i64* @hwnd_classdc2, align 8
  %149 = load i32, i32* %1, align 4
  %150 = call i32 @ReleaseDC(i64 %148, i32 %149)
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = call i32 (i32, i8*, ...) @ok(i32 %153, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %155 = load i64, i64* @hwnd_classdc2, align 8
  %156 = call i32 @GetDC(i64 %155)
  store i32 %156, i32* %1, align 4
  %157 = load i32, i32* %1, align 4
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = load i32, i32* %1, align 4
  %162 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %161)
  %163 = load i64, i64* @hwnd_classdc, align 8
  %164 = call i32 @GetDC(i64 %163)
  store i32 %164, i32* %1, align 4
  %165 = load i32, i32* %1, align 4
  %166 = icmp ne i32 %165, 0
  %167 = zext i1 %166 to i32
  %168 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %169 = load i32, i32* %1, align 4
  %170 = call i32 @GetROP2(i32 %169)
  store i32 %170, i32* %5, align 4
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* @R2_WHITE, align 4
  %173 = icmp eq i32 %171, %172
  %174 = zext i1 %173 to i32
  %175 = load i32, i32* %5, align 4
  %176 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* %1, align 4
  %178 = call i64 @WindowFromDC(i32 %177)
  %179 = load i64, i64* @hwnd_classdc, align 8
  %180 = icmp eq i64 %178, %179
  %181 = zext i1 %180 to i32
  %182 = call i32 (i32, i8*, ...) @ok(i32 %181, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %183 = load i64, i64* @hwnd_classdc, align 8
  %184 = call i32 @DestroyWindow(i64 %183)
  %185 = load i32, i32* %1, align 4
  %186 = call i32 @GetROP2(i32 %185)
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* @R2_WHITE, align 4
  %189 = icmp eq i32 %187, %188
  %190 = zext i1 %189 to i32
  %191 = load i32, i32* %5, align 4
  %192 = call i32 (i32, i8*, ...) @ok(i32 %190, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* %1, align 4
  %194 = call i64 @WindowFromDC(i32 %193)
  %195 = icmp eq i64 %194, 0
  %196 = zext i1 %195 to i32
  %197 = call i32 (i32, i8*, ...) @ok(i32 %196, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %198 = load i64, i64* @hwnd_classdc, align 8
  %199 = load i32, i32* %1, align 4
  %200 = call i32 @ReleaseDC(i64 %198, i32 %199)
  %201 = icmp ne i32 %200, 0
  %202 = xor i1 %201, true
  %203 = zext i1 %202 to i32
  %204 = call i32 (i32, i8*, ...) @ok(i32 %203, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %205 = load i64, i64* @hwnd_classdc, align 8
  %206 = call i32 @GetDC(i64 %205)
  store i32 %206, i32* %1, align 4
  %207 = load i32, i32* %1, align 4
  %208 = icmp ne i32 %207, 0
  %209 = xor i1 %208, true
  %210 = zext i1 %209 to i32
  %211 = load i32, i32* %1, align 4
  %212 = call i32 (i32, i8*, ...) @ok(i32 %210, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %211)
  %213 = load i64, i64* @hwnd_owndc, align 8
  %214 = call i32 @GetDC(i64 %213)
  store i32 %214, i32* %1, align 4
  %215 = load i32, i32* %1, align 4
  %216 = icmp ne i32 %215, 0
  %217 = zext i1 %216 to i32
  %218 = call i32 (i32, i8*, ...) @ok(i32 %217, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %219 = load i32, i32* %1, align 4
  %220 = call i32 @GetROP2(i32 %219)
  store i32 %220, i32* %5, align 4
  %221 = load i32, i32* %5, align 4
  %222 = load i32, i32* @R2_WHITE, align 4
  %223 = icmp eq i32 %221, %222
  %224 = zext i1 %223 to i32
  %225 = load i32, i32* %5, align 4
  %226 = call i32 (i32, i8*, ...) @ok(i32 %224, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %225)
  %227 = load i32, i32* %1, align 4
  %228 = call i64 @WindowFromDC(i32 %227)
  %229 = load i64, i64* @hwnd_owndc, align 8
  %230 = icmp eq i64 %228, %229
  %231 = zext i1 %230 to i32
  %232 = call i32 (i32, i8*, ...) @ok(i32 %231, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %233 = load i64, i64* @hwnd_owndc, align 8
  %234 = call i32 @DestroyWindow(i64 %233)
  %235 = load i32, i32* %1, align 4
  %236 = call i32 @GetROP2(i32 %235)
  store i32 %236, i32* %5, align 4
  %237 = load i32, i32* %5, align 4
  %238 = icmp eq i32 %237, 0
  %239 = zext i1 %238 to i32
  %240 = load i32, i32* %5, align 4
  %241 = call i32 (i32, i8*, ...) @ok(i32 %239, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %240)
  %242 = load i32, i32* %1, align 4
  %243 = call i64 @WindowFromDC(i32 %242)
  %244 = icmp eq i64 %243, 0
  %245 = zext i1 %244 to i32
  %246 = call i32 (i32, i8*, ...) @ok(i32 %245, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %247 = load i64, i64* @hwnd_owndc, align 8
  %248 = load i32, i32* %1, align 4
  %249 = call i32 @ReleaseDC(i64 %247, i32 %248)
  %250 = icmp ne i32 %249, 0
  %251 = xor i1 %250, true
  %252 = zext i1 %251 to i32
  %253 = call i32 (i32, i8*, ...) @ok(i32 %252, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %254 = load i64, i64* @hwnd_owndc, align 8
  %255 = call i32 @GetDC(i64 %254)
  store i32 %255, i32* %1, align 4
  %256 = load i32, i32* %1, align 4
  %257 = icmp ne i32 %256, 0
  %258 = xor i1 %257, true
  %259 = zext i1 %258 to i32
  %260 = load i32, i32* %1, align 4
  %261 = call i32 (i32, i8*, ...) @ok(i32 %259, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %260)
  %262 = load i64, i64* @hwnd_parent, align 8
  %263 = call i32 @DestroyWindow(i64 %262)
  ret void
}

declare dso_local i32 @GetDC(i64) #1

declare dso_local i32 @SetROP2(i32, i32) #1

declare dso_local i32 @GetROP2(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @WindowFromDC(i32) #1

declare dso_local i32 @DestroyWindow(i64) #1

declare dso_local i32 @ReleaseDC(i64, i32) #1

declare dso_local i32 @GetDCEx(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

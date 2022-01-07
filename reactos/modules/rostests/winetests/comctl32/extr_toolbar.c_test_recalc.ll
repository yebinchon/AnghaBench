; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_toolbar.c_test_recalc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_toolbar.c_test_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32 }

@__const.test_recalc.test = private unnamed_addr constant [5 x i8] c"Test\00", align 1
@TB_INSERTBUTTONA = common dso_local global i32 0, align 4
@buttons3 = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"Unexpected recalc - adding button without text\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Expected a recalc - adding button with text\0A\00", align 1
@TBIF_TEXT = common dso_local global i32 0, align 4
@TB_SETBUTTONINFOA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Unexpected recalc - setting a button text\0A\00", align 1
@TB_GETEXTENDEDSTYLE = common dso_local global i32 0, align 4
@TB_SETEXTENDEDSTYLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Unexpected recalc - setting bit %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Unexpected recalc - clearing bit %d\0A\00", align 1
@TBSTYLE_EX_MIXEDBUTTONS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"Expected a recalc - setting TBSTYLE_EX_MIXEDBUTTONS\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"Unexpected recalc - setting TBSTYLE_EX_MIXEDBUTTONS again\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"Expected a recalc - clearing TBSTYLE_EX_MIXEDBUTTONS\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"No recalc on TBSTYLE_EX_MIXEDBUTTONS\0A\00", align 1
@TB_GETSTYLE = common dso_local global i32 0, align 4
@TB_SETSTYLE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"recalc %d\0A\00", align 1
@TBSTYLE_TOOLTIPS = common dso_local global i32 0, align 4
@TBSTYLE_TRANSPARENT = common dso_local global i32 0, align 4
@CCS_BOTTOM = common dso_local global i32 0, align 4
@TBSTYLE_WRAPABLE = common dso_local global i32 0, align 4
@CCS_VERT = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_recalc() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_2__, align 8
  %3 = alloca [5 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  %8 = bitcast [5 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_recalc.test, i32 0, i32 0), i64 5, i1 false)
  store i32 5, i32* %4, align 4
  %9 = call i32 @prepare_recalc_test(i32** %1)
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* @TB_INSERTBUTTONA, align 4
  %12 = load i32*, i32** @buttons3, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = ptrtoint i32* %13 to i32
  %15 = call i32 @SendMessageA(i32* %10, i32 %11, i32 1, i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @did_recalc(i32* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @prepare_recalc_test(i32** %1)
  %24 = load i32*, i32** %1, align 8
  %25 = load i32, i32* @TB_INSERTBUTTONA, align 4
  %26 = load i32*, i32** @buttons3, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = ptrtoint i32* %27 to i32
  %29 = call i32 @SendMessageA(i32* %24, i32 %25, i32 1, i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @did_recalc(i32* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @prepare_recalc_test(i32** %1)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 24, i32* %35, align 8
  %36 = load i32, i32* @TBIF_TEXT, align 4
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = load i32*, i32** %1, align 8
  %41 = load i32, i32* @TB_SETBUTTONINFOA, align 4
  %42 = ptrtoint %struct.TYPE_2__* %2 to i32
  %43 = call i32 @SendMessageA(i32* %40, i32 %41, i32 1, i32 %42)
  %44 = load i32*, i32** %1, align 8
  %45 = call i32 @did_recalc(i32* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %95, %0
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 5
  br i1 %53, label %54, label %98

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %54
  br label %95

61:                                               ; preds = %57
  %62 = call i32 @prepare_recalc_test(i32** %1)
  %63 = load i32*, i32** %1, align 8
  %64 = load i32, i32* @TB_GETEXTENDEDSTYLE, align 4
  %65 = call i32 @SendMessageA(i32* %63, i32 %64, i32 0, i32 0)
  %66 = call i32 @expect(i32 0, i32 %65)
  %67 = load i32*, i32** %1, align 8
  %68 = load i32, i32* @TB_SETEXTENDEDSTYLE, align 4
  %69 = load i32, i32* %5, align 4
  %70 = shl i32 1, %69
  %71 = call i32 @SendMessageA(i32* %67, i32 %68, i32 0, i32 %70)
  %72 = load i32*, i32** %1, align 8
  %73 = call i32 @did_recalc(i32* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %5, align 4
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load i32*, i32** %1, align 8
  %81 = load i32, i32* @TB_SETEXTENDEDSTYLE, align 4
  %82 = call i32 @SendMessageA(i32* %80, i32 %81, i32 0, i32 0)
  %83 = load i32*, i32** %1, align 8
  %84 = call i32 @did_recalc(i32* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %5, align 4
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = load i32*, i32** %1, align 8
  %92 = load i32, i32* @TB_GETEXTENDEDSTYLE, align 4
  %93 = call i32 @SendMessageA(i32* %91, i32 %92, i32 0, i32 0)
  %94 = call i32 @expect(i32 0, i32 %93)
  br label %95

95:                                               ; preds = %61, %60
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %51

98:                                               ; preds = %51
  %99 = call i32 @prepare_recalc_test(i32** %1)
  %100 = load i32*, i32** %1, align 8
  %101 = load i32, i32* @TB_SETEXTENDEDSTYLE, align 4
  %102 = load i32, i32* @TBSTYLE_EX_MIXEDBUTTONS, align 4
  %103 = call i32 @SendMessageA(i32* %100, i32 %101, i32 0, i32 %102)
  %104 = load i32*, i32** %1, align 8
  %105 = call i32 @did_recalc(i32* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %133

108:                                              ; preds = %98
  %109 = load i32, i32* %6, align 4
  %110 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  %111 = load i32*, i32** %1, align 8
  %112 = call i32 @restore_recalc_state(i32* %111)
  %113 = load i32*, i32** %1, align 8
  %114 = load i32, i32* @TB_SETEXTENDEDSTYLE, align 4
  %115 = load i32, i32* @TBSTYLE_EX_MIXEDBUTTONS, align 4
  %116 = call i32 @SendMessageA(i32* %113, i32 %114, i32 0, i32 %115)
  %117 = load i32*, i32** %1, align 8
  %118 = call i32 @did_recalc(i32* %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  %124 = load i32*, i32** %1, align 8
  %125 = call i32 @restore_recalc_state(i32* %124)
  %126 = load i32*, i32** %1, align 8
  %127 = load i32, i32* @TB_SETEXTENDEDSTYLE, align 4
  %128 = call i32 @SendMessageA(i32* %126, i32 %127, i32 0, i32 0)
  %129 = load i32*, i32** %1, align 8
  %130 = call i32 @did_recalc(i32* %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call i32 (i32, i8*, ...) @ok(i32 %131, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  br label %135

133:                                              ; preds = %98
  %134 = call i32 @win_skip(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %108
  %136 = call i32 @prepare_recalc_test(i32** %1)
  %137 = load i32*, i32** %1, align 8
  %138 = load i32, i32* @TB_GETSTYLE, align 4
  %139 = call i32 @SendMessageA(i32* %137, i32 %138, i32 0, i32 0)
  store i32 %139, i32* %7, align 4
  %140 = load i32*, i32** %1, align 8
  %141 = load i32, i32* @TB_SETSTYLE, align 4
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @SendMessageA(i32* %140, i32 %141, i32 0, i32 %142)
  %144 = load i32*, i32** %1, align 8
  %145 = call i32 @did_recalc(i32* %144)
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = load i32, i32* %6, align 4
  %151 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %150)
  %152 = load i32*, i32** %1, align 8
  %153 = load i32, i32* @TB_SETSTYLE, align 4
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @TBSTYLE_TOOLTIPS, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @TBSTYLE_TRANSPARENT, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @CCS_BOTTOM, align 4
  %160 = or i32 %158, %159
  %161 = call i32 @SendMessageA(i32* %152, i32 %153, i32 0, i32 %160)
  %162 = load i32*, i32** %1, align 8
  %163 = call i32 @did_recalc(i32* %162)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  %168 = load i32, i32* %6, align 4
  %169 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %168)
  %170 = load i32*, i32** %1, align 8
  %171 = load i32, i32* @TB_SETSTYLE, align 4
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* @TBSTYLE_WRAPABLE, align 4
  %174 = or i32 %172, %173
  %175 = call i32 @SendMessageA(i32* %170, i32 %171, i32 0, i32 %174)
  %176 = load i32*, i32** %1, align 8
  %177 = call i32 @did_recalc(i32* %176)
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* %6, align 4
  %180 = call i32 (i32, i8*, ...) @ok(i32 %178, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %179)
  %181 = load i32*, i32** %1, align 8
  %182 = call i32 @restore_recalc_state(i32* %181)
  %183 = load i32*, i32** %1, align 8
  %184 = load i32, i32* @TB_SETSTYLE, align 4
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* @TBSTYLE_WRAPABLE, align 4
  %187 = or i32 %185, %186
  %188 = call i32 @SendMessageA(i32* %183, i32 %184, i32 0, i32 %187)
  %189 = load i32*, i32** %1, align 8
  %190 = call i32 @did_recalc(i32* %189)
  store i32 %190, i32* %6, align 4
  %191 = load i32, i32* %6, align 4
  %192 = icmp ne i32 %191, 0
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  %195 = load i32, i32* %6, align 4
  %196 = call i32 (i32, i8*, ...) @ok(i32 %194, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %195)
  %197 = load i32*, i32** %1, align 8
  %198 = load i32, i32* @TB_SETSTYLE, align 4
  %199 = load i32, i32* %7, align 4
  %200 = call i32 @SendMessageA(i32* %197, i32 %198, i32 0, i32 %199)
  %201 = load i32*, i32** %1, align 8
  %202 = call i32 @did_recalc(i32* %201)
  store i32 %202, i32* %6, align 4
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* %6, align 4
  %205 = call i32 (i32, i8*, ...) @ok(i32 %203, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %204)
  %206 = load i32*, i32** %1, align 8
  %207 = call i32 @restore_recalc_state(i32* %206)
  %208 = load i32*, i32** %1, align 8
  %209 = load i32, i32* @TB_SETSTYLE, align 4
  %210 = load i32, i32* %7, align 4
  %211 = load i32, i32* @CCS_VERT, align 4
  %212 = or i32 %210, %211
  %213 = call i32 @SendMessageA(i32* %208, i32 %209, i32 0, i32 %212)
  %214 = load i32*, i32** %1, align 8
  %215 = call i32 @did_recalc(i32* %214)
  store i32 %215, i32* %6, align 4
  %216 = load i32, i32* %6, align 4
  %217 = icmp ne i32 %216, 0
  %218 = xor i1 %217, true
  %219 = zext i1 %218 to i32
  %220 = load i32, i32* %6, align 4
  %221 = call i32 (i32, i8*, ...) @ok(i32 %219, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %220)
  %222 = load i32*, i32** %1, align 8
  %223 = call i32 @restore_recalc_state(i32* %222)
  %224 = load i32*, i32** %1, align 8
  %225 = load i32, i32* @TB_SETSTYLE, align 4
  %226 = load i32, i32* %7, align 4
  %227 = call i32 @SendMessageA(i32* %224, i32 %225, i32 0, i32 %226)
  %228 = load i32*, i32** %1, align 8
  %229 = call i32 @did_recalc(i32* %228)
  store i32 %229, i32* %6, align 4
  %230 = load i32, i32* %6, align 4
  %231 = icmp ne i32 %230, 0
  %232 = xor i1 %231, true
  %233 = zext i1 %232 to i32
  %234 = load i32, i32* %6, align 4
  %235 = call i32 (i32, i8*, ...) @ok(i32 %233, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %234)
  %236 = load i32*, i32** %1, align 8
  %237 = call i32 @restore_recalc_state(i32* %236)
  %238 = load i32*, i32** %1, align 8
  %239 = load i32, i32* @GWL_STYLE, align 4
  %240 = load i32, i32* %7, align 4
  %241 = load i32, i32* @TBSTYLE_WRAPABLE, align 4
  %242 = or i32 %240, %241
  %243 = call i32 @SetWindowLongA(i32* %238, i32 %239, i32 %242)
  %244 = load i32*, i32** %1, align 8
  %245 = call i32 @did_recalc(i32* %244)
  store i32 %245, i32* %6, align 4
  %246 = load i32, i32* %6, align 4
  %247 = load i32, i32* %6, align 4
  %248 = call i32 (i32, i8*, ...) @ok(i32 %246, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %247)
  %249 = load i32*, i32** %1, align 8
  %250 = call i32 @DestroyWindow(i32* %249)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @prepare_recalc_test(i32**) #2

declare dso_local i32 @SendMessageA(i32*, i32, i32, i32) #2

declare dso_local i32 @did_recalc(i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @expect(i32, i32) #2

declare dso_local i32 @restore_recalc_state(i32*) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @SetWindowLongA(i32*, i32, i32) #2

declare dso_local i32 @DestroyWindow(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

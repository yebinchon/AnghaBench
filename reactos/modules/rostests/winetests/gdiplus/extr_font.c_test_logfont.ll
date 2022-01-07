; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_font.c_test_logfont.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_font.c_test_logfont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }

@Ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Tahoma\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Expected negative height\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Expected weight to be set\0A\00", align 1
@ANSI_CHARSET = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Expected %x or %x, got %x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FontStyleItalic = common dso_local global i32 0, align 4
@FontStyleUnderline = common dso_local global i32 0, align 4
@FontStyleStrikeout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Expected , got %d\0A\00", align 1
@UnitWorld = common dso_local global i32 0, align 4
@FontStyleRegular = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_logfont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_logfont() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = call i32 @GetDC(i32 0)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @GdipCreateFromHDC(i32 %14, i32** %6)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @Ok, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @expect(i32 %16, i32 %17)
  %19 = call i32 @memset(%struct.TYPE_5__* %1, i32 0, i32 72)
  %20 = call i32 @memset(%struct.TYPE_5__* %2, i32 255, i32 72)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 13
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @lstrcpyA(i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @GdipCreateFontFromLogfontA(i32 %24, %struct.TYPE_5__* %1, i32** %3)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @Ok, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @expect(i32 %26, i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @GdipGetLogFontA(i32* %29, i32* %30, %struct.TYPE_5__* %2)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @Ok, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @expect(i32 %32, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @expect(i32 0, i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @expect(i32 0, i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @expect(i32 0, i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = icmp sge i32 %50, 100
  br i1 %51, label %52, label %56

52:                                               ; preds = %0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = icmp sle i32 %54, 900
  br label %56

56:                                               ; preds = %52, %0
  %57 = phi i1 [ false, %0 ], [ %55, %52 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @expect(i32 0, i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @expect(i32 0, i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 7
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @expect(i32 0, i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 8
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i64 @GetTextCharset(i32 %71)
  %73 = icmp eq i64 %70, %72
  br i1 %73, label %79, label %74

74:                                               ; preds = %56
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 8
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ANSI_CHARSET, align 8
  %78 = icmp eq i64 %76, %77
  br label %79

79:                                               ; preds = %74, %56
  %80 = phi i1 [ true, %56 ], [ %78, %74 ]
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %7, align 4
  %83 = call i64 @GetTextCharset(i32 %82)
  %84 = load i64, i64* @ANSI_CHARSET, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 8
  %86 = load i64, i64* %85, align 8
  %87 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %83, i64 %84, i64 %86)
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 9
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @expect(i32 0, i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 10
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @expect(i32 0, i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 11
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @expect(i32 0, i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 12
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @expect(i32 0, i32 %98)
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @GdipDeleteFont(i32* %100)
  %102 = call i32 @memset(%struct.TYPE_5__* %1, i32 0, i32 72)
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i64 25, i64* %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i32 25, i32* %104, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 3
  store i32 50, i32* %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  store i32 50, i32* %106, align 4
  %107 = load i32, i32* @TRUE, align 4
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 7
  store i32 %107, i32* %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 6
  store i32 %107, i32* %109, align 4
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 5
  store i32 %107, i32* %110, align 8
  %111 = call i32 @memset(%struct.TYPE_5__* %2, i32 255, i32 72)
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 13
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @lstrcpyA(i32 %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @GdipCreateFontFromLogfontA(i32 %115, %struct.TYPE_5__* %1, i32** %3)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* @Ok, align 4
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @expect(i32 %117, i32 %118)
  %120 = load i32*, i32** %3, align 8
  %121 = load i32*, i32** %6, align 8
  %122 = call i32 @GdipGetLogFontA(i32* %120, i32* %121, %struct.TYPE_5__* %2)
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* @Ok, align 4
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @expect(i32 %123, i32 %124)
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp slt i64 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @expect(i32 0, i32 %132)
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @expect(i32 0, i32 %135)
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @expect(i32 0, i32 %138)
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = icmp sge i32 %141, 100
  br i1 %142, label %143, label %147

143:                                              ; preds = %79
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = icmp sle i32 %145, 900
  br label %147

147:                                              ; preds = %143, %79
  %148 = phi i1 [ false, %79 ], [ %146, %143 ]
  %149 = zext i1 %148 to i32
  %150 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %151 = load i32, i32* @TRUE, align 4
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @expect(i32 %151, i32 %153)
  %155 = load i32, i32* @TRUE, align 4
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 6
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @expect(i32 %155, i32 %157)
  %159 = load i32, i32* @TRUE, align 4
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 7
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @expect(i32 %159, i32 %161)
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 8
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* %7, align 4
  %166 = call i64 @GetTextCharset(i32 %165)
  %167 = icmp eq i64 %164, %166
  br i1 %167, label %173, label %168

168:                                              ; preds = %147
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 8
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @ANSI_CHARSET, align 8
  %172 = icmp eq i64 %170, %171
  br label %173

173:                                              ; preds = %168, %147
  %174 = phi i1 [ true, %147 ], [ %172, %168 ]
  %175 = zext i1 %174 to i32
  %176 = load i32, i32* %7, align 4
  %177 = call i64 @GetTextCharset(i32 %176)
  %178 = load i64, i64* @ANSI_CHARSET, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 8
  %180 = load i64, i64* %179, align 8
  %181 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %177, i64 %178, i64 %180)
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 9
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @expect(i32 0, i32 %183)
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 10
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @expect(i32 0, i32 %186)
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 11
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @expect(i32 0, i32 %189)
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 12
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @expect(i32 0, i32 %192)
  %194 = load i32*, i32** %3, align 8
  %195 = call i32 @GdipGetFontStyle(i32* %194, i32* %8)
  store i32 %195, i32* %5, align 4
  %196 = load i32, i32* @Ok, align 4
  %197 = load i32, i32* %5, align 4
  %198 = call i32 @expect(i32 %196, i32 %197)
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* @FontStyleItalic, align 4
  %201 = load i32, i32* @FontStyleUnderline, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @FontStyleStrikeout, align 4
  %204 = or i32 %202, %203
  %205 = icmp eq i32 %199, %204
  %206 = zext i1 %205 to i32
  %207 = load i32, i32* %8, align 4
  %208 = call i32 (i32, i8*, ...) @ok(i32 %206, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %207)
  %209 = load i32*, i32** %3, align 8
  %210 = call i32 @GdipGetFontUnit(i32* %209, i32* %12)
  store i32 %210, i32* %5, align 4
  %211 = load i32, i32* @Ok, align 4
  %212 = load i32, i32* %5, align 4
  %213 = call i32 @expect(i32 %211, i32 %212)
  %214 = load i32, i32* @UnitWorld, align 4
  %215 = load i32, i32* %12, align 4
  %216 = call i32 @expect(i32 %214, i32 %215)
  %217 = load i32*, i32** %3, align 8
  %218 = load i32*, i32** %6, align 8
  %219 = call i32 @GdipGetFontHeight(i32* %217, i32* %218, i32* %9)
  store i32 %219, i32* %5, align 4
  %220 = load i32, i32* @Ok, align 4
  %221 = load i32, i32* %5, align 4
  %222 = call i32 @expect(i32 %220, i32 %221)
  %223 = load i32, i32* %9, align 4
  %224 = call i32 @expectf(double 0x403958FFFBCE4218, i32 %223)
  %225 = load i32*, i32** %3, align 8
  %226 = call i32 @GdipGetFontSize(i32* %225, i32* %9)
  store i32 %226, i32* %5, align 4
  %227 = load i32, i32* @Ok, align 4
  %228 = load i32, i32* %5, align 4
  %229 = call i32 @expect(i32 %227, i32 %228)
  %230 = load i32, i32* %9, align 4
  %231 = call i32 @expectf(double 2.100000e+01, i32 %230)
  %232 = load i32*, i32** %3, align 8
  %233 = call i32 @GdipGetFamily(i32* %232, i32** %4)
  store i32 %233, i32* %5, align 4
  %234 = load i32, i32* @Ok, align 4
  %235 = load i32, i32* %5, align 4
  %236 = call i32 @expect(i32 %234, i32 %235)
  %237 = load i32*, i32** %4, align 8
  %238 = load i32, i32* @FontStyleRegular, align 4
  %239 = call i32 @GdipGetEmHeight(i32* %237, i32 %238, i32* %10)
  store i32 %239, i32* %5, align 4
  %240 = load i32, i32* @Ok, align 4
  %241 = load i32, i32* %5, align 4
  %242 = call i32 @expect(i32 %240, i32 %241)
  %243 = load i32, i32* %10, align 4
  %244 = call i32 @expect(i32 2048, i32 %243)
  %245 = load i32*, i32** %4, align 8
  %246 = load i32, i32* @FontStyleRegular, align 4
  %247 = call i32 @GdipGetLineSpacing(i32* %245, i32 %246, i32* %11)
  store i32 %247, i32* %5, align 4
  %248 = load i32, i32* @Ok, align 4
  %249 = load i32, i32* %5, align 4
  %250 = call i32 @expect(i32 %248, i32 %249)
  %251 = load i32, i32* %11, align 4
  %252 = call i32 @expect(i32 2472, i32 %251)
  %253 = load i32*, i32** %4, align 8
  %254 = call i32 @GdipDeleteFontFamily(i32* %253)
  %255 = load i32*, i32** %3, align 8
  %256 = call i32 @GdipDeleteFont(i32* %255)
  %257 = call i32 @memset(%struct.TYPE_5__* %1, i32 0, i32 72)
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i64 -25, i64* %258, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 13
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @lstrcpyA(i32 %260, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %262 = load i32, i32* %7, align 4
  %263 = call i32 @GdipCreateFontFromLogfontA(i32 %262, %struct.TYPE_5__* %1, i32** %3)
  store i32 %263, i32* %5, align 4
  %264 = load i32, i32* @Ok, align 4
  %265 = load i32, i32* %5, align 4
  %266 = call i32 @expect(i32 %264, i32 %265)
  %267 = call i32 @memset(%struct.TYPE_5__* %2, i32 255, i32 72)
  %268 = load i32*, i32** %3, align 8
  %269 = load i32*, i32** %6, align 8
  %270 = call i32 @GdipGetLogFontA(i32* %268, i32* %269, %struct.TYPE_5__* %2)
  store i32 %270, i32* %5, align 4
  %271 = load i32, i32* @Ok, align 4
  %272 = load i32, i32* %5, align 4
  %273 = call i32 @expect(i32 %271, i32 %272)
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = trunc i64 %275 to i32
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = trunc i64 %278 to i32
  %280 = call i32 @expect(i32 %276, i32 %279)
  %281 = load i32*, i32** %3, align 8
  %282 = call i32 @GdipGetFontUnit(i32* %281, i32* %12)
  store i32 %282, i32* %5, align 4
  %283 = load i32, i32* @Ok, align 4
  %284 = load i32, i32* %5, align 4
  %285 = call i32 @expect(i32 %283, i32 %284)
  %286 = load i32, i32* @UnitWorld, align 4
  %287 = load i32, i32* %12, align 4
  %288 = call i32 @expect(i32 %286, i32 %287)
  %289 = load i32*, i32** %3, align 8
  %290 = load i32*, i32** %6, align 8
  %291 = call i32 @GdipGetFontHeight(i32* %289, i32* %290, i32* %9)
  store i32 %291, i32* %5, align 4
  %292 = load i32, i32* @Ok, align 4
  %293 = load i32, i32* %5, align 4
  %294 = call i32 @expect(i32 %292, i32 %293)
  %295 = load i32, i32* %9, align 4
  %296 = call i32 @expectf(double 0x403E2CFFFBCE4218, i32 %295)
  %297 = load i32*, i32** %3, align 8
  %298 = call i32 @GdipGetFontSize(i32* %297, i32* %9)
  store i32 %298, i32* %5, align 4
  %299 = load i32, i32* @Ok, align 4
  %300 = load i32, i32* %5, align 4
  %301 = call i32 @expect(i32 %299, i32 %300)
  %302 = load i32, i32* %9, align 4
  %303 = call i32 @expectf(double 2.500000e+01, i32 %302)
  %304 = load i32*, i32** %3, align 8
  %305 = call i32 @GdipGetFamily(i32* %304, i32** %4)
  store i32 %305, i32* %5, align 4
  %306 = load i32, i32* @Ok, align 4
  %307 = load i32, i32* %5, align 4
  %308 = call i32 @expect(i32 %306, i32 %307)
  %309 = load i32*, i32** %4, align 8
  %310 = load i32, i32* @FontStyleRegular, align 4
  %311 = call i32 @GdipGetEmHeight(i32* %309, i32 %310, i32* %10)
  store i32 %311, i32* %5, align 4
  %312 = load i32, i32* @Ok, align 4
  %313 = load i32, i32* %5, align 4
  %314 = call i32 @expect(i32 %312, i32 %313)
  %315 = load i32, i32* %10, align 4
  %316 = call i32 @expect(i32 2048, i32 %315)
  %317 = load i32*, i32** %4, align 8
  %318 = load i32, i32* @FontStyleRegular, align 4
  %319 = call i32 @GdipGetLineSpacing(i32* %317, i32 %318, i32* %11)
  store i32 %319, i32* %5, align 4
  %320 = load i32, i32* @Ok, align 4
  %321 = load i32, i32* %5, align 4
  %322 = call i32 @expect(i32 %320, i32 %321)
  %323 = load i32, i32* %11, align 4
  %324 = call i32 @expect(i32 2472, i32 %323)
  %325 = load i32*, i32** %4, align 8
  %326 = call i32 @GdipDeleteFontFamily(i32* %325)
  %327 = load i32*, i32** %3, align 8
  %328 = call i32 @GdipDeleteFont(i32* %327)
  %329 = load i32*, i32** %6, align 8
  %330 = call i32 @GdipDeleteGraphics(i32* %329)
  %331 = load i32, i32* %7, align 4
  %332 = call i32 @ReleaseDC(i32 0, i32 %331)
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GdipCreateFromHDC(i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @lstrcpyA(i32, i8*) #1

declare dso_local i32 @GdipCreateFontFromLogfontA(i32, %struct.TYPE_5__*, i32**) #1

declare dso_local i32 @GdipGetLogFontA(i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetTextCharset(i32) #1

declare dso_local i32 @GdipDeleteFont(i32*) #1

declare dso_local i32 @GdipGetFontStyle(i32*, i32*) #1

declare dso_local i32 @GdipGetFontUnit(i32*, i32*) #1

declare dso_local i32 @GdipGetFontHeight(i32*, i32*, i32*) #1

declare dso_local i32 @expectf(double, i32) #1

declare dso_local i32 @GdipGetFontSize(i32*, i32*) #1

declare dso_local i32 @GdipGetFamily(i32*, i32**) #1

declare dso_local i32 @GdipGetEmHeight(i32*, i32, i32*) #1

declare dso_local i32 @GdipGetLineSpacing(i32*, i32, i32*) #1

declare dso_local i32 @GdipDeleteFontFamily(i32*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

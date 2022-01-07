; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_sysparams.c_test_SPI_SETFONTSMOOTHING.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_sysparams.c_test_SPI_SETFONTSMOOTHING.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_SPI_SETFONTSMOOTHING.vals = private unnamed_addr constant [4 x i32] [i32 -1, i32 0, i32 1, i32 2], align 16
@.str = private unnamed_addr constant [36 x i8] c"testing SPI_{GET,SET}FONTSMOOTHING\0A\00", align 1
@iswin9x = common dso_local global i64 0, align 8
@SPI_GETFONTSMOOTHING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"SPI_{GET,SET}FONTSMOOTHING\00", align 1
@SPI_GETFONTSMOOTHINGTYPE = common dso_local global i32 0, align 4
@SPI_GETFONTSMOOTHINGCONTRAST = common dso_local global i32 0, align 4
@SPI_GETFONTSMOOTHINGORIENTATION = common dso_local global i32 0, align 4
@SPI_SETFONTSMOOTHING = common dso_local global i32 0, align 4
@SPIF_UPDATEINIFILE = common dso_local global i32 0, align 4
@SPIF_SENDCHANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"SPI_SETFONTSMOOTHING\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%d: rc=%d err=%d\0A\00", align 1
@SPI_SETFONTSMOOTHING_REGKEY = common dso_local global i32 0, align 4
@SPI_SETFONTSMOOTHING_VALNAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@SPI_SETFONTSMOOTHINGTYPE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"SPI_SETFONTSMOOTHINGTYPE\00", align 1
@SPI_SETFONTSMOOTHINGTYPE_VALNAME = common dso_local global i32 0, align 4
@SPI_SETFONTSMOOTHINGCONTRAST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"SPI_SETFONTSMOOTHINGCONTRAST\00", align 1
@SPI_SETFONTSMOOTHINGCONTRAST_VALNAME = common dso_local global i32 0, align 4
@SPI_SETFONTSMOOTHINGORIENTATION = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"SPI_SETFONTSMOOTHINGORIENTATION\00", align 1
@SPI_SETFONTSMOOTHINGORIENTATION_VALNAME = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"SPI_GETFONTSMOOTHING\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"wrong value %x/%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [66 x i8] c"***warning*** failed to restore the original value: rc=%d err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SPI_SETFONTSMOOTHING to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SPI_SETFONTSMOOTHING() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([4 x i32]* @__const.test_SPI_SETFONTSMOOTHING.vals to i8*), i64 16, i1 false)
  %10 = call i32 @trace(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* @iswin9x, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  br label %261

14:                                               ; preds = %0
  %15 = call i32 @SetLastError(i32 -559038737)
  %16 = load i32, i32* @SPI_GETFONTSMOOTHING, align 4
  %17 = call i32 @SystemParametersInfoA(i32 %16, i32 0, i32* %2, i32 0)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @test_error_msg(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %261

22:                                               ; preds = %14
  %23 = load i32, i32* @SPI_GETFONTSMOOTHINGTYPE, align 4
  %24 = call i32 @SystemParametersInfoA(i32 %23, i32 0, i32* %3, i32 0)
  %25 = load i32, i32* @SPI_GETFONTSMOOTHINGCONTRAST, align 4
  %26 = call i32 @SystemParametersInfoA(i32 %25, i32 0, i32* %4, i32 0)
  %27 = load i32, i32* @SPI_GETFONTSMOOTHINGORIENTATION, align 4
  %28 = call i32 @SystemParametersInfoA(i32 %27, i32 0, i32* %5, i32 0)
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %225, %22
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %31, 4
  br i1 %32, label %33, label %228

33:                                               ; preds = %29
  %34 = load i32, i32* @SPI_SETFONTSMOOTHING, align 4
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %40 = load i32, i32* @SPIF_SENDCHANGE, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @SystemParametersInfoA(i32 %34, i32 %38, i32* null, i32 %41)
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* %1, align 4
  %44 = call i32 @test_error_msg(i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %33
  br label %261

47:                                               ; preds = %33
  %48 = load i32, i32* %1, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %1, align 4
  %51 = call i32 (...) @GetLastError()
  %52 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* @SPI_SETFONTSMOOTHING, align 4
  %54 = call i32 @test_change_message(i32 %53, i32 0)
  %55 = load i32, i32* @SPI_SETFONTSMOOTHING_REGKEY, align 4
  %56 = load i32, i32* @SPI_SETFONTSMOOTHING_VALNAME, align 4
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  %64 = call i32 @test_reg_key(i32 %55, i32 %56, i8* %63)
  %65 = load i32, i32* @SPI_SETFONTSMOOTHINGTYPE, align 4
  %66 = load i32, i32* %7, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32* @UlongToPtr(i32 %69)
  %71 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %72 = load i32, i32* @SPIF_SENDCHANGE, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @SystemParametersInfoA(i32 %65, i32 0, i32* %70, i32 %73)
  store i32 %74, i32* %1, align 4
  %75 = load i32, i32* %1, align 4
  %76 = call i32 @test_error_msg(i32 %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %47
  br label %261

79:                                               ; preds = %47
  %80 = load i32, i32* %1, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %1, align 4
  %83 = call i32 (...) @GetLastError()
  %84 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* @SPI_SETFONTSMOOTHINGTYPE, align 4
  %86 = call i32 @test_change_message(i32 %85, i32 0)
  %87 = load i32, i32* @SPI_SETFONTSMOOTHING_REGKEY, align 4
  %88 = load i32, i32* @SPI_SETFONTSMOOTHINGTYPE_VALNAME, align 4
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %90
  %92 = call i32 @test_reg_key_dword(i32 %87, i32 %88, i32* %91)
  %93 = load i32, i32* @SPI_SETFONTSMOOTHINGCONTRAST, align 4
  %94 = load i32, i32* %7, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32* @UlongToPtr(i32 %97)
  %99 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %100 = load i32, i32* @SPIF_SENDCHANGE, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @SystemParametersInfoA(i32 %93, i32 0, i32* %98, i32 %101)
  store i32 %102, i32* %1, align 4
  %103 = load i32, i32* %1, align 4
  %104 = call i32 @test_error_msg(i32 %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %79
  br label %261

107:                                              ; preds = %79
  %108 = load i32, i32* %1, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %1, align 4
  %111 = call i32 (...) @GetLastError()
  %112 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %108, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* @SPI_SETFONTSMOOTHINGCONTRAST, align 4
  %114 = call i32 @test_change_message(i32 %113, i32 0)
  %115 = load i32, i32* @SPI_SETFONTSMOOTHING_REGKEY, align 4
  %116 = load i32, i32* @SPI_SETFONTSMOOTHINGCONTRAST_VALNAME, align 4
  %117 = load i32, i32* %7, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %118
  %120 = call i32 @test_reg_key_dword(i32 %115, i32 %116, i32* %119)
  %121 = load i32, i32* @SPI_SETFONTSMOOTHINGORIENTATION, align 4
  %122 = load i32, i32* %7, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32* @UlongToPtr(i32 %125)
  %127 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %128 = load i32, i32* @SPIF_SENDCHANGE, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @SystemParametersInfoA(i32 %121, i32 0, i32* %126, i32 %129)
  store i32 %130, i32* %1, align 4
  %131 = load i32, i32* %1, align 4
  %132 = call i32 @test_error_msg(i32 %131, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %107
  br label %261

135:                                              ; preds = %107
  %136 = load i32, i32* %1, align 4
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %1, align 4
  %139 = call i32 (...) @GetLastError()
  %140 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %136, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %137, i32 %138, i32 %139)
  %141 = load i32, i32* @SPI_SETFONTSMOOTHINGORIENTATION, align 4
  %142 = call i32 @test_change_message(i32 %141, i32 0)
  %143 = load i32, i32* @SPI_SETFONTSMOOTHING_REGKEY, align 4
  %144 = load i32, i32* @SPI_SETFONTSMOOTHINGORIENTATION_VALNAME, align 4
  %145 = load i32, i32* %7, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %146
  %148 = call i32 @test_reg_key_dword(i32 %143, i32 %144, i32* %147)
  %149 = load i32, i32* @SPI_GETFONTSMOOTHING, align 4
  %150 = call i32 @SystemParametersInfoA(i32 %149, i32 0, i32* %8, i32 0)
  store i32 %150, i32* %1, align 4
  %151 = load i32, i32* %1, align 4
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %1, align 4
  %154 = call i32 (...) @GetLastError()
  %155 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %151, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %152, i32 %153, i32 %154)
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %7, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i32 1, i32 0
  %164 = call i32 @eq(i32 %156, i32 %163, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %165 = load i32, i32* @SPI_GETFONTSMOOTHINGTYPE, align 4
  %166 = call i32 @SystemParametersInfoA(i32 %165, i32 0, i32* %8, i32 0)
  store i32 %166, i32* %1, align 4
  %167 = load i32, i32* %1, align 4
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %1, align 4
  %170 = call i32 (...) @GetLastError()
  %171 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %167, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %168, i32 %169, i32 %170)
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* %7, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %172, %176
  %178 = zext i1 %177 to i32
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %7, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %178, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %179, i32 %183)
  %185 = load i32, i32* @SPI_GETFONTSMOOTHINGCONTRAST, align 4
  %186 = call i32 @SystemParametersInfoA(i32 %185, i32 0, i32* %8, i32 0)
  store i32 %186, i32* %1, align 4
  %187 = load i32, i32* %1, align 4
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* %1, align 4
  %190 = call i32 (...) @GetLastError()
  %191 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %187, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %188, i32 %189, i32 %190)
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* %7, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %192, %196
  %198 = zext i1 %197 to i32
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* %7, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %198, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %199, i32 %203)
  %205 = load i32, i32* @SPI_GETFONTSMOOTHINGORIENTATION, align 4
  %206 = call i32 @SystemParametersInfoA(i32 %205, i32 0, i32* %8, i32 0)
  store i32 %206, i32* %1, align 4
  %207 = load i32, i32* %1, align 4
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* %1, align 4
  %210 = call i32 (...) @GetLastError()
  %211 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %207, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %208, i32 %209, i32 %210)
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* %7, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %212, %216
  %218 = zext i1 %217 to i32
  %219 = load i32, i32* %8, align 4
  %220 = load i32, i32* %7, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %218, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %219, i32 %223)
  br label %225

225:                                              ; preds = %135
  %226 = load i32, i32* %7, align 4
  %227 = add i32 %226, 1
  store i32 %227, i32* %7, align 4
  br label %29

228:                                              ; preds = %29
  %229 = load i32, i32* @SPI_SETFONTSMOOTHING, align 4
  %230 = load i32, i32* %2, align 4
  %231 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %232 = call i32 @SystemParametersInfoA(i32 %229, i32 %230, i32* null, i32 %231)
  store i32 %232, i32* %1, align 4
  %233 = load i32, i32* %1, align 4
  %234 = load i32, i32* %1, align 4
  %235 = call i32 (...) @GetLastError()
  %236 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %233, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.12, i64 0, i64 0), i32 %234, i32 %235)
  %237 = load i32, i32* @SPI_SETFONTSMOOTHINGTYPE, align 4
  %238 = load i32, i32* %3, align 4
  %239 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %240 = call i32 @SystemParametersInfoA(i32 %237, i32 %238, i32* null, i32 %239)
  store i32 %240, i32* %1, align 4
  %241 = load i32, i32* %1, align 4
  %242 = load i32, i32* %1, align 4
  %243 = call i32 (...) @GetLastError()
  %244 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %241, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.12, i64 0, i64 0), i32 %242, i32 %243)
  %245 = load i32, i32* @SPI_SETFONTSMOOTHINGCONTRAST, align 4
  %246 = load i32, i32* %4, align 4
  %247 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %248 = call i32 @SystemParametersInfoA(i32 %245, i32 %246, i32* null, i32 %247)
  store i32 %248, i32* %1, align 4
  %249 = load i32, i32* %1, align 4
  %250 = load i32, i32* %1, align 4
  %251 = call i32 (...) @GetLastError()
  %252 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %249, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.12, i64 0, i64 0), i32 %250, i32 %251)
  %253 = load i32, i32* @SPI_SETFONTSMOOTHINGORIENTATION, align 4
  %254 = load i32, i32* %5, align 4
  %255 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %256 = call i32 @SystemParametersInfoA(i32 %253, i32 %254, i32* null, i32 %255)
  store i32 %256, i32* %1, align 4
  %257 = load i32, i32* %1, align 4
  %258 = load i32, i32* %1, align 4
  %259 = call i32 (...) @GetLastError()
  %260 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %257, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.12, i64 0, i64 0), i32 %258, i32 %259)
  br label %261

261:                                              ; preds = %228, %134, %106, %78, %46, %21, %13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @trace(i8*) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @SystemParametersInfoA(i32, i32, i32*, i32) #2

declare dso_local i32 @test_error_msg(i32, i8*) #2

declare dso_local i32 @ok(i32, i8*, i32, i32, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @test_change_message(i32, i32) #2

declare dso_local i32 @test_reg_key(i32, i32, i8*) #2

declare dso_local i32* @UlongToPtr(i32) #2

declare dso_local i32 @test_reg_key_dword(i32, i32, i32*) #2

declare dso_local i32 @eq(i32, i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_bitmap.c_test_GetDIBits_top_down.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_bitmap.c_test_GetDIBits_top_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@BI_RGB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Could not get a handle to a device context.\0A\00", align 1
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not create a DIB section.\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to call GetDIBits. Status code: %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"Bottom-up -> bottom-up: first pixel should be 0 but was %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"Top-down -> bottom-up: first pixel should be 2 but was %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"Top-down -> bottom-up: first pixel should be 0 but was %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"Bottom-up -> bottom-up: first pixel should be 2 but was %d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"Top-down -> bottom-up: first scanline should be 2 but was %d.\0A\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"Top-down -> bottom-up: second scanline should be 0 but was %d.\0A\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"Bottom up -> bottom-up: first scanline should be 0 but was %d.\0A\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"Bottom up -> bottom-up: second scanline should be 2 but was %d.\0A\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"Bottom-up -> top-down: first pixel should be 0 but was %d.\0A\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"Top-down -> top-down: first pixel should be 2 but was %d.\0A\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"Top-down -> top-down: first scanline should be 0 but was %d.\0A\00", align 1
@.str.14 = private unnamed_addr constant [63 x i8] c"Top-down -> top-down: second scanline should be 2 but was %d.\0A\00", align 1
@.str.15 = private unnamed_addr constant [63 x i8] c"Bottom up -> top-down: first scanline should be 2 but was %d.\0A\00", align 1
@.str.16 = private unnamed_addr constant [64 x i8] c"Bottom up -> top-down: second scanline should be 0 but was %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_GetDIBits_top_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetDIBits_top_down(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = call i32 @memset(%struct.TYPE_7__* %3, i32 0, i32 24)
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 24, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store i32 2, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  store i32 2, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* %2, align 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @BI_RGB, align 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = call i32* @GetDC(i32* null)
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @DIB_RGB_COLORS, align 4
  %32 = bitcast i32** %8 to i8**
  %33 = call i32* @CreateDIBSection(i32* %30, %struct.TYPE_7__* %3, i32 %31, i8** %32, i32* null, i32 0)
  store i32* %33, i32** %5, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32*, i32** %8, align 8
  %39 = bitcast i32* %38 to i8*
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @setup_picture(i8* %39, i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  store i32 -2, i32* %43, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @DIB_RGB_COLORS, align 4
  %46 = bitcast i32** %8 to i8**
  %47 = call i32* @CreateDIBSection(i32* %44, %struct.TYPE_7__* %3, i32 %45, i8** %46, i32* null, i32 0)
  store i32* %47, i32** %4, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = icmp ne i32* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32*, i32** %8, align 8
  %53 = bitcast i32* %52 to i8*
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @setup_picture(i8* %53, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  store i32 2, i32* %59, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %63 = load i32, i32* @DIB_RGB_COLORS, align 4
  %64 = call i32 @GetDIBits(i32* %60, i32* %61, i32 0, i32 1, i32* %62, %struct.TYPE_7__* %3, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %69 = load i32, i32* %68, align 16
  %70 = trunc i32 %69 to i8
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %75 = load i32, i32* %74, align 16
  %76 = trunc i32 %75 to i8
  %77 = sext i8 %76 to i32
  %78 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load i32*, i32** %6, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %82 = load i32, i32* @DIB_RGB_COLORS, align 4
  %83 = call i32 @GetDIBits(i32* %79, i32* %80, i32 0, i32 1, i32* %81, %struct.TYPE_7__* %3, i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %88 = load i32, i32* %87, align 16
  %89 = trunc i32 %88 to i8
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 2
  %92 = zext i1 %91 to i32
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %94 = load i32, i32* %93, align 16
  %95 = trunc i32 %94 to i8
  %96 = sext i8 %95 to i32
  %97 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  %98 = load i32*, i32** %6, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %101 = load i32, i32* @DIB_RGB_COLORS, align 4
  %102 = call i32 @GetDIBits(i32* %98, i32* %99, i32 1, i32 1, i32* %100, %struct.TYPE_7__* %3, i32 %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %107 = load i32, i32* %106, align 16
  %108 = trunc i32 %107 to i8
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %113 = load i32, i32* %112, align 16
  %114 = trunc i32 %113 to i8
  %115 = sext i8 %114 to i32
  %116 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 %115)
  %117 = load i32*, i32** %6, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %120 = load i32, i32* @DIB_RGB_COLORS, align 4
  %121 = call i32 @GetDIBits(i32* %117, i32* %118, i32 1, i32 1, i32* %119, %struct.TYPE_7__* %3, i32 %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %126 = load i32, i32* %125, align 16
  %127 = trunc i32 %126 to i8
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 2
  %130 = zext i1 %129 to i32
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %132 = load i32, i32* %131, align 16
  %133 = trunc i32 %132 to i8
  %134 = sext i8 %133 to i32
  %135 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i32 %134)
  %136 = load i32*, i32** %6, align 8
  %137 = load i32*, i32** %4, align 8
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %139 = load i32, i32* @DIB_RGB_COLORS, align 4
  %140 = call i32 @GetDIBits(i32* %136, i32* %137, i32 0, i32 2, i32* %138, %struct.TYPE_7__* %3, i32 %139)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = call i32 (i32, i8*, ...) @ok(i32 %141, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  %144 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %145 = load i32, i32* %144, align 16
  %146 = trunc i32 %145 to i8
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 2
  %149 = zext i1 %148 to i32
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %151 = load i32, i32* %150, align 16
  %152 = trunc i32 %151 to i8
  %153 = sext i8 %152 to i32
  %154 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 %153)
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %156 = load i32, i32* %155, align 4
  %157 = trunc i32 %156 to i8
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 0
  %160 = zext i1 %159 to i32
  %161 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %162 = load i32, i32* %161, align 16
  %163 = trunc i32 %162 to i8
  %164 = sext i8 %163 to i32
  %165 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0), i32 %164)
  %166 = load i32*, i32** %6, align 8
  %167 = load i32*, i32** %5, align 8
  %168 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %169 = load i32, i32* @DIB_RGB_COLORS, align 4
  %170 = call i32 @GetDIBits(i32* %166, i32* %167, i32 0, i32 2, i32* %168, %struct.TYPE_7__* %3, i32 %169)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %9, align 4
  %173 = call i32 (i32, i8*, ...) @ok(i32 %171, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %172)
  %174 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %175 = load i32, i32* %174, align 16
  %176 = trunc i32 %175 to i8
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 0
  %179 = zext i1 %178 to i32
  %180 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %181 = load i32, i32* %180, align 16
  %182 = trunc i32 %181 to i8
  %183 = sext i8 %182 to i32
  %184 = call i32 (i32, i8*, ...) @ok(i32 %179, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i64 0, i64 0), i32 %183)
  %185 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = trunc i32 %186 to i8
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 2
  %190 = zext i1 %189 to i32
  %191 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %192 = load i32, i32* %191, align 16
  %193 = trunc i32 %192 to i8
  %194 = sext i8 %193 to i32
  %195 = call i32 (i32, i8*, ...) @ok(i32 %190, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i64 0, i64 0), i32 %194)
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 2
  store i32 -2, i32* %197, align 4
  %198 = load i32*, i32** %6, align 8
  %199 = load i32*, i32** %5, align 8
  %200 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %201 = load i32, i32* @DIB_RGB_COLORS, align 4
  %202 = call i32 @GetDIBits(i32* %198, i32* %199, i32 0, i32 1, i32* %200, %struct.TYPE_7__* %3, i32 %201)
  store i32 %202, i32* %9, align 4
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* %9, align 4
  %205 = call i32 (i32, i8*, ...) @ok(i32 %203, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %204)
  %206 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %207 = load i32, i32* %206, align 16
  %208 = trunc i32 %207 to i8
  %209 = sext i8 %208 to i32
  %210 = icmp eq i32 %209, 0
  %211 = zext i1 %210 to i32
  %212 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %213 = load i32, i32* %212, align 16
  %214 = trunc i32 %213 to i8
  %215 = sext i8 %214 to i32
  %216 = call i32 (i32, i8*, ...) @ok(i32 %211, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i64 0, i64 0), i32 %215)
  %217 = load i32*, i32** %6, align 8
  %218 = load i32*, i32** %4, align 8
  %219 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %220 = load i32, i32* @DIB_RGB_COLORS, align 4
  %221 = call i32 @GetDIBits(i32* %217, i32* %218, i32 0, i32 1, i32* %219, %struct.TYPE_7__* %3, i32 %220)
  store i32 %221, i32* %9, align 4
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* %9, align 4
  %224 = call i32 (i32, i8*, ...) @ok(i32 %222, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %223)
  %225 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %226 = load i32, i32* %225, align 16
  %227 = trunc i32 %226 to i8
  %228 = sext i8 %227 to i32
  %229 = icmp eq i32 %228, 2
  %230 = zext i1 %229 to i32
  %231 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %232 = load i32, i32* %231, align 16
  %233 = trunc i32 %232 to i8
  %234 = sext i8 %233 to i32
  %235 = call i32 (i32, i8*, ...) @ok(i32 %230, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0), i32 %234)
  %236 = load i32*, i32** %6, align 8
  %237 = load i32*, i32** %4, align 8
  %238 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %239 = load i32, i32* @DIB_RGB_COLORS, align 4
  %240 = call i32 @GetDIBits(i32* %236, i32* %237, i32 1, i32 1, i32* %238, %struct.TYPE_7__* %3, i32 %239)
  store i32 %240, i32* %9, align 4
  %241 = load i32, i32* %9, align 4
  %242 = load i32, i32* %9, align 4
  %243 = call i32 (i32, i8*, ...) @ok(i32 %241, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %242)
  %244 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %245 = load i32, i32* %244, align 16
  %246 = trunc i32 %245 to i8
  %247 = sext i8 %246 to i32
  %248 = icmp eq i32 %247, 0
  %249 = zext i1 %248 to i32
  %250 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %251 = load i32, i32* %250, align 16
  %252 = trunc i32 %251 to i8
  %253 = sext i8 %252 to i32
  %254 = call i32 (i32, i8*, ...) @ok(i32 %249, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 %253)
  %255 = load i32*, i32** %6, align 8
  %256 = load i32*, i32** %5, align 8
  %257 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %258 = load i32, i32* @DIB_RGB_COLORS, align 4
  %259 = call i32 @GetDIBits(i32* %255, i32* %256, i32 1, i32 1, i32* %257, %struct.TYPE_7__* %3, i32 %258)
  store i32 %259, i32* %9, align 4
  %260 = load i32, i32* %9, align 4
  %261 = load i32, i32* %9, align 4
  %262 = call i32 (i32, i8*, ...) @ok(i32 %260, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %261)
  %263 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %264 = load i32, i32* %263, align 16
  %265 = trunc i32 %264 to i8
  %266 = sext i8 %265 to i32
  %267 = icmp eq i32 %266, 2
  %268 = zext i1 %267 to i32
  %269 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %270 = load i32, i32* %269, align 16
  %271 = trunc i32 %270 to i8
  %272 = sext i8 %271 to i32
  %273 = call i32 (i32, i8*, ...) @ok(i32 %268, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %272)
  %274 = load i32*, i32** %6, align 8
  %275 = load i32*, i32** %4, align 8
  %276 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %277 = load i32, i32* @DIB_RGB_COLORS, align 4
  %278 = call i32 @GetDIBits(i32* %274, i32* %275, i32 0, i32 2, i32* %276, %struct.TYPE_7__* %3, i32 %277)
  store i32 %278, i32* %9, align 4
  %279 = load i32, i32* %9, align 4
  %280 = load i32, i32* %9, align 4
  %281 = call i32 (i32, i8*, ...) @ok(i32 %279, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %280)
  %282 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %283 = load i32, i32* %282, align 16
  %284 = trunc i32 %283 to i8
  %285 = sext i8 %284 to i32
  %286 = icmp eq i32 %285, 0
  %287 = zext i1 %286 to i32
  %288 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %289 = load i32, i32* %288, align 16
  %290 = trunc i32 %289 to i8
  %291 = sext i8 %290 to i32
  %292 = call i32 (i32, i8*, ...) @ok(i32 %287, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i64 0, i64 0), i32 %291)
  %293 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %294 = load i32, i32* %293, align 4
  %295 = trunc i32 %294 to i8
  %296 = sext i8 %295 to i32
  %297 = icmp eq i32 %296, 2
  %298 = zext i1 %297 to i32
  %299 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %300 = load i32, i32* %299, align 16
  %301 = trunc i32 %300 to i8
  %302 = sext i8 %301 to i32
  %303 = call i32 (i32, i8*, ...) @ok(i32 %298, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.14, i64 0, i64 0), i32 %302)
  %304 = load i32*, i32** %6, align 8
  %305 = load i32*, i32** %5, align 8
  %306 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %307 = load i32, i32* @DIB_RGB_COLORS, align 4
  %308 = call i32 @GetDIBits(i32* %304, i32* %305, i32 0, i32 2, i32* %306, %struct.TYPE_7__* %3, i32 %307)
  store i32 %308, i32* %9, align 4
  %309 = load i32, i32* %9, align 4
  %310 = load i32, i32* %9, align 4
  %311 = call i32 (i32, i8*, ...) @ok(i32 %309, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %310)
  %312 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %313 = load i32, i32* %312, align 16
  %314 = trunc i32 %313 to i8
  %315 = sext i8 %314 to i32
  %316 = icmp eq i32 %315, 2
  %317 = zext i1 %316 to i32
  %318 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %319 = load i32, i32* %318, align 16
  %320 = trunc i32 %319 to i8
  %321 = sext i8 %320 to i32
  %322 = call i32 (i32, i8*, ...) @ok(i32 %317, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.15, i64 0, i64 0), i32 %321)
  %323 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %324 = load i32, i32* %323, align 4
  %325 = trunc i32 %324 to i8
  %326 = sext i8 %325 to i32
  %327 = icmp eq i32 %326, 0
  %328 = zext i1 %327 to i32
  %329 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %330 = load i32, i32* %329, align 16
  %331 = trunc i32 %330 to i8
  %332 = sext i8 %331 to i32
  %333 = call i32 (i32, i8*, ...) @ok(i32 %328, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.16, i64 0, i64 0), i32 %332)
  %334 = load i32*, i32** %5, align 8
  %335 = call i32 @DeleteObject(i32* %334)
  %336 = load i32*, i32** %4, align 8
  %337 = call i32 @DeleteObject(i32* %336)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32* @GetDC(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @CreateDIBSection(i32*, %struct.TYPE_7__*, i32, i8**, i32*, i32) #1

declare dso_local i32 @setup_picture(i8*, i32) #1

declare dso_local i32 @GetDIBits(i32*, i32*, i32, i32, i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @DeleteObject(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

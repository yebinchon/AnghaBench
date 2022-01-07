; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/appshim/extr_versionlie.c_verify_shimw_imp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/appshim/extr_versionlie.c_verify_shimw_imp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 (i32)*, i64 }
%struct.TYPE_9__ = type { i64, i64, i64, i64, i64, i32, i64 }
%struct.TYPE_11__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32*, i32 }

@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Skipping implementation tests for %s\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [76 x i8] c"Skipping first check because 0x%x is (falsely) not accepted by the shim %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Expected ok1 to equal ok2, was: %i, %i for %s(first:%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"Expected dwOSVersionInfoSize to be equal, was: %u, %u for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Expected dwMajorVersion to be equal, was: %u, %u for %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"Expected dwMinorVersion to be equal, was: %u, %u for %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"Expected dwBuildNumber to be equal, was: %u, %u for %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"Expected dwPlatformId to be equal, was: %u, %u for %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i32] [i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 32, i32 80, i32 97, i32 99, i32 107, i32 32, i32 37, i32 117, i32 0], align 4
@.str.9 = private unnamed_addr constant [55 x i8] c"Expected szCSDVersion to be equal, was: %s, %s for %s\0A\00", align 1
@FLAG_BUGGY_ServicePackMajorMinor = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [60 x i8] c"Expected wServicePackMajor to be equal, was: %i, %i for %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"Expected wServicePackMinor to be equal, was: %i, %i for %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"Expected wSuiteMask to be equal, was: %i, %i for %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"Expected wProductType to be equal, was: %i, %i for %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"Expected wReserved to be equal, was: %i, %i for %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"Expected wServicePackMajor to be 0, was: %i, %i for %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"Expected wServicePackMinor to be 0, was: %i, %i for %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"Expected wSuiteMask to be 0, was: %i, %i for %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"Expected wProductType to be 0, was: %i, %i for %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"Expected wReserved to be 0, was: %i, %i for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32, i32)* @verify_shimw_imp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_shimw_imp(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__, align 8
  %12 = alloca %struct.TYPE_11__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [128 x i32], align 16
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = bitcast %struct.TYPE_11__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 96, i1 false)
  %18 = bitcast i8* %17 to %struct.TYPE_11__*
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i32 96, i32* %19, align 8
  %20 = bitcast %struct.TYPE_11__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 96, i1 false)
  %21 = bitcast i8* %20 to %struct.TYPE_11__*
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  store i32 96, i32* %22, align 8
  %23 = load i64, i64* @TRUE, align 8
  store i64 %23, i64* %15, align 8
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* %8, align 4
  %28 = call i32 (i8*, i32, ...) @skip(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %370

29:                                               ; preds = %5
  br label %30

30:                                               ; preds = %368, %29
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %370

34:                                               ; preds = %30
  %35 = ptrtoint %struct.TYPE_11__* %11 to i32
  %36 = call i64 @GetVersionExW(i32 %35)
  store i64 %36, i64* %13, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i64 (i32)* @GetVersionExW, i64 (i32)** %38, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i64 (%struct.TYPE_11__*)*
  %43 = call i64 %42(%struct.TYPE_11__* %12)
  store i64 %43, i64* %14, align 8
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %34
  %47 = load i64, i64* %15, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* @TRUE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* @FALSE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = call i32 (i8*, i32, ...) @skip(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 96, i32 %58)
  br label %70

60:                                               ; preds = %53, %49, %46, %34
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* %14, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %14, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i64, i64* %15, align 8
  %69 = call i32 (i32, i8*, i64, i64, i32, ...) @winetest_ok(i32 %64, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %65, i64 %66, i32 %67, i64 %68)
  br label %70

70:                                               ; preds = %60, %57
  %71 = load i64, i64* %13, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %358

73:                                               ; preds = %70
  %74 = load i64, i64* %14, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %358

76:                                               ; preds = %73
  %77 = bitcast [128 x i32]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %77, i8 0, i64 512, i1 false)
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %79, %81
  %83 = zext i1 %82 to i32
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = load i32, i32* %8, align 4
  %91 = call i32 (i32, i8*, i64, i64, i32, ...) @winetest_ok(i32 %83, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i64 %86, i64 %89, i32 %90)
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %94, %96
  %98 = zext i1 %97 to i32
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 (i32, i8*, i64, i64, i32, ...) @winetest_ok(i32 %98, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i64 %101, i64 %103, i32 %104)
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %108, %110
  %112 = zext i1 %111 to i32
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 (i32, i8*, i64, i64, i32, ...) @winetest_ok(i32 %112, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i64 %115, i64 %117, i32 %118)
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %122, %124
  %126 = zext i1 %125 to i32
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i32 (i32, i8*, i64, i64, i32, ...) @winetest_ok(i32 %126, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i64 %129, i64 %131, i32 %132)
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %136, %138
  %140 = zext i1 %139 to i32
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 (i32, i8*, i64, i64, i32, ...) @winetest_ok(i32 %140, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i64 %143, i64 %145, i32 %146)
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %76
  %153 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 0
  %154 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 0
  %155 = call i32 @_countof(i32* %154)
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @StringCchPrintfW(i32* %153, i32 %155, i8* bitcast ([16 x i32]* @.str.8 to i8*), i64 %158)
  br label %160

160:                                              ; preds = %152, %76
  %161 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 0
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 11
  %163 = load i32*, i32** %162, align 8
  %164 = call i64 @lstrcmpW(i32* %161, i32* %163)
  %165 = icmp eq i64 %164, 0
  %166 = zext i1 %165 to i32
  %167 = getelementptr inbounds [128 x i32], [128 x i32]* %16, i64 0, i64 0
  %168 = call i64 @wine_dbgstr_w(i32* %167)
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 11
  %170 = load i32*, i32** %169, align 8
  %171 = call i64 @wine_dbgstr_w(i32* %170)
  %172 = load i32, i32* %8, align 4
  %173 = call i32 (i32, i8*, i64, i64, i32, ...) @winetest_ok(i32 %166, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i64 %168, i64 %171, i32 %172)
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = icmp eq i64 %176, 96
  br i1 %177, label %178, label %276

178:                                              ; preds = %160
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @FLAG_BUGGY_ServicePackMajorMinor, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %214, label %185

185:                                              ; preds = %178
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 6
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %188, %190
  %192 = zext i1 %191 to i32
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 6
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* %8, align 4
  %199 = call i32 (i32, i8*, i64, i64, i32, ...) @winetest_ok(i32 %192, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0), i64 %195, i64 %197, i32 %198)
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 6
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 7
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %202, %204
  %206 = zext i1 %205 to i32
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 6
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 7
  %211 = load i64, i64* %210, align 8
  %212 = load i32, i32* %8, align 4
  %213 = call i32 (i32, i8*, i64, i64, i32, ...) @winetest_ok(i32 %206, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i64 0, i64 0), i64 %209, i64 %211, i32 %212)
  br label %239

214:                                              ; preds = %178
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 6
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 6
  %218 = load i64, i64* %217, align 8
  %219 = icmp eq i64 %216, %218
  %220 = zext i1 %219 to i32
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 6
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 6
  %224 = load i64, i64* %223, align 8
  %225 = load i32, i32* %8, align 4
  %226 = call i32 (i32, i8*, i64, i64, i32, ...) @winetest_ok(i32 %220, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0), i64 %222, i64 %224, i32 %225)
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 7
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 7
  %230 = load i64, i64* %229, align 8
  %231 = icmp eq i64 %228, %230
  %232 = zext i1 %231 to i32
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 7
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 7
  %236 = load i64, i64* %235, align 8
  %237 = load i32, i32* %8, align 4
  %238 = call i32 (i32, i8*, i64, i64, i32, ...) @winetest_ok(i32 %232, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i64 0, i64 0), i64 %234, i64 %236, i32 %237)
  br label %239

239:                                              ; preds = %214, %185
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 8
  %241 = load i64, i64* %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 8
  %243 = load i64, i64* %242, align 8
  %244 = icmp eq i64 %241, %243
  %245 = zext i1 %244 to i32
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 8
  %247 = load i64, i64* %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 8
  %249 = load i64, i64* %248, align 8
  %250 = load i32, i32* %8, align 4
  %251 = call i32 (i32, i8*, i64, i64, i32, ...) @winetest_ok(i32 %245, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0), i64 %247, i64 %249, i32 %250)
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 9
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 9
  %255 = load i64, i64* %254, align 8
  %256 = icmp eq i64 %253, %255
  %257 = zext i1 %256 to i32
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 9
  %259 = load i64, i64* %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 9
  %261 = load i64, i64* %260, align 8
  %262 = load i32, i32* %8, align 4
  %263 = call i32 (i32, i8*, i64, i64, i32, ...) @winetest_ok(i32 %257, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i64 0, i64 0), i64 %259, i64 %261, i32 %262)
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 10
  %265 = load i64, i64* %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 10
  %267 = load i64, i64* %266, align 8
  %268 = icmp eq i64 %265, %267
  %269 = zext i1 %268 to i32
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 10
  %271 = load i64, i64* %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 10
  %273 = load i64, i64* %272, align 8
  %274 = load i32, i32* %8, align 4
  %275 = call i32 (i32, i8*, i64, i64, i32, ...) @winetest_ok(i32 %269, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i64 0, i64 0), i64 %271, i64 %273, i32 %274)
  br label %357

276:                                              ; preds = %160
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 6
  %278 = load i64, i64* %277, align 8
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 6
  %282 = load i64, i64* %281, align 8
  %283 = icmp eq i64 %282, 0
  br label %284

284:                                              ; preds = %280, %276
  %285 = phi i1 [ false, %276 ], [ %283, %280 ]
  %286 = zext i1 %285 to i32
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 6
  %288 = load i64, i64* %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 6
  %290 = load i64, i64* %289, align 8
  %291 = load i32, i32* %8, align 4
  %292 = call i32 (i32, i8*, i64, i64, i32, ...) @winetest_ok(i32 %286, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.15, i64 0, i64 0), i64 %288, i64 %290, i32 %291)
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 7
  %294 = load i64, i64* %293, align 8
  %295 = icmp eq i64 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %284
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 7
  %298 = load i64, i64* %297, align 8
  %299 = icmp eq i64 %298, 0
  br label %300

300:                                              ; preds = %296, %284
  %301 = phi i1 [ false, %284 ], [ %299, %296 ]
  %302 = zext i1 %301 to i32
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 7
  %304 = load i64, i64* %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 7
  %306 = load i64, i64* %305, align 8
  %307 = load i32, i32* %8, align 4
  %308 = call i32 (i32, i8*, i64, i64, i32, ...) @winetest_ok(i32 %302, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0), i64 %304, i64 %306, i32 %307)
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 8
  %310 = load i64, i64* %309, align 8
  %311 = icmp eq i64 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %300
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 8
  %314 = load i64, i64* %313, align 8
  %315 = icmp eq i64 %314, 0
  br label %316

316:                                              ; preds = %312, %300
  %317 = phi i1 [ false, %300 ], [ %315, %312 ]
  %318 = zext i1 %317 to i32
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 8
  %320 = load i64, i64* %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 8
  %322 = load i64, i64* %321, align 8
  %323 = load i32, i32* %8, align 4
  %324 = call i32 (i32, i8*, i64, i64, i32, ...) @winetest_ok(i32 %318, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.17, i64 0, i64 0), i64 %320, i64 %322, i32 %323)
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 9
  %326 = load i64, i64* %325, align 8
  %327 = icmp eq i64 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %316
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 9
  %330 = load i64, i64* %329, align 8
  %331 = icmp eq i64 %330, 0
  br label %332

332:                                              ; preds = %328, %316
  %333 = phi i1 [ false, %316 ], [ %331, %328 ]
  %334 = zext i1 %333 to i32
  %335 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 9
  %336 = load i64, i64* %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 9
  %338 = load i64, i64* %337, align 8
  %339 = load i32, i32* %8, align 4
  %340 = call i32 (i32, i8*, i64, i64, i32, ...) @winetest_ok(i32 %334, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.18, i64 0, i64 0), i64 %336, i64 %338, i32 %339)
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 10
  %342 = load i64, i64* %341, align 8
  %343 = icmp eq i64 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %332
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 10
  %346 = load i64, i64* %345, align 8
  %347 = icmp eq i64 %346, 0
  br label %348

348:                                              ; preds = %344, %332
  %349 = phi i1 [ false, %332 ], [ %347, %344 ]
  %350 = zext i1 %349 to i32
  %351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 10
  %352 = load i64, i64* %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 10
  %354 = load i64, i64* %353, align 8
  %355 = load i32, i32* %8, align 4
  %356 = call i32 (i32, i8*, i64, i64, i32, ...) @winetest_ok(i32 %350, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i64 0, i64 0), i64 %352, i64 %354, i32 %355)
  br label %357

357:                                              ; preds = %348, %239
  br label %358

358:                                              ; preds = %357, %73, %70
  %359 = call i32 @ZeroMemory(%struct.TYPE_11__* %11, i32 96)
  %360 = call i32 @ZeroMemory(%struct.TYPE_11__* %12, i32 96)
  %361 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = sext i32 %362 to i64
  %364 = icmp eq i64 %363, 96
  br i1 %364, label %365, label %368

365:                                              ; preds = %358
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  store i32 4, i32* %366, align 4
  %367 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  store i32 4, i32* %367, align 4
  br label %368

368:                                              ; preds = %365, %358
  %369 = load i64, i64* @FALSE, align 8
  store i64 %369, i64* %15, align 8
  br label %30

370:                                              ; preds = %26, %30
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @skip(i8*, i32, ...) #2

declare dso_local i64 @GetVersionExW(i32) #2

declare dso_local i32 @winetest_ok(i32, i8*, i64, i64, i32, ...) #2

declare dso_local i32 @StringCchPrintfW(i32*, i32, i8*, i64) #2

declare dso_local i32 @_countof(i32*) #2

declare dso_local i64 @lstrcmpW(i32*, i32*) #2

declare dso_local i64 @wine_dbgstr_w(i32*) #2

declare dso_local i32 @ZeroMemory(%struct.TYPE_11__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

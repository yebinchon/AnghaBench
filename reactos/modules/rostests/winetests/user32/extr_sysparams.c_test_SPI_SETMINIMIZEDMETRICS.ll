; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_sysparams.c_test_SPI_SETMINIMIZEDMETRICS.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_sysparams.c_test_SPI_SETMINIMIZEDMETRICS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"testing SPI_{GET,SET}MINIMIZEDMETRICS\0A\00", align 1
@SPI_GETMINIMIZEDMETRICS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"SPI_{GET,SET}MINIMIZEDMETRICS\00", align 1
@SPI_MINIMIZEDMETRICS_REGKEY = common dso_local global i32 0, align 4
@SPI_MINWIDTH_VALNAME = common dso_local global i32 0, align 4
@dpi = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"wrong value in registry %d, expected %d\0A\00", align 1
@SPI_MINHORZGAP_VALNAME = common dso_local global i32 0, align 4
@SPI_MINVERTGAP_VALNAME = common dso_local global i32 0, align 4
@SPI_MINARRANGE_VALNAME = common dso_local global i32 0, align 4
@SPI_SETMINIMIZEDMETRICS = common dso_local global i32 0, align 4
@SPIF_UPDATEINIFILE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"SPI_SETMINIMIZEDMETRICS\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"SystemParametersInfoA: rc=%d err=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"iWidth\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"iHorzGap\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"iVertGap\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"iArrange\00", align 1
@SM_CXMINIMIZED = common dso_local global i32 0, align 4
@SM_CXMINSPACING = common dso_local global i32 0, align 4
@SM_CYMINSPACING = common dso_local global i32 0, align 4
@SM_CYMINIMIZED = common dso_local global i32 0, align 4
@SM_ARRANGE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [66 x i8] c"***warning*** failed to restore the original value: rc=%d err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SPI_SETMINIMIZEDMETRICS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SPI_SETMINIMIZEDMETRICS() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 20, i32* %6, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 20, i32* %7, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 20, i32* %8, align 4
  %9 = call i32 @trace(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @SetLastError(i32 -559038737)
  %11 = load i32, i32* @SPI_GETMINIMIZEDMETRICS, align 4
  %12 = load i32, i32* @FALSE, align 4
  %13 = call i32 @SystemParametersInfoA(i32 %11, i32 20, %struct.TYPE_3__* %3, i32 %12)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @test_error_msg(i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %0
  br label %307

18:                                               ; preds = %0
  %19 = load i32, i32* @SPI_MINIMIZEDMETRICS_REGKEY, align 4
  %20 = load i32, i32* @SPI_MINWIDTH_VALNAME, align 4
  %21 = load i32, i32* @dpi, align 4
  %22 = call i32 @metricfromreg(i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %2, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %26, %28
  br label %30

30:                                               ; preds = %25, %18
  %31 = phi i1 [ true, %18 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %2, align 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 %35)
  %37 = load i32, i32* @SPI_MINIMIZEDMETRICS_REGKEY, align 4
  %38 = load i32, i32* @SPI_MINHORZGAP_VALNAME, align 4
  %39 = load i32, i32* @dpi, align 4
  %40 = call i32 @metricfromreg(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %48, label %43

43:                                               ; preds = %30
  %44 = load i32, i32* %2, align 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %44, %46
  br label %48

48:                                               ; preds = %43, %30
  %49 = phi i1 [ true, %30 ], [ %47, %43 ]
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %2, align 4
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %53)
  %55 = load i32, i32* @SPI_MINIMIZEDMETRICS_REGKEY, align 4
  %56 = load i32, i32* @SPI_MINVERTGAP_VALNAME, align 4
  %57 = load i32, i32* @dpi, align 4
  %58 = call i32 @metricfromreg(i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %2, align 4
  %59 = load i32, i32* %2, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %66, label %61

61:                                               ; preds = %48
  %62 = load i32, i32* %2, align 4
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %62, %64
  br label %66

66:                                               ; preds = %61, %48
  %67 = phi i1 [ true, %48 ], [ %65, %61 ]
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %2, align 4
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %71)
  %73 = load i32, i32* @SPI_MINIMIZEDMETRICS_REGKEY, align 4
  %74 = load i32, i32* @SPI_MINARRANGE_VALNAME, align 4
  %75 = load i32, i32* @dpi, align 4
  %76 = call i32 @metricfromreg(i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %2, align 4
  %77 = load i32, i32* %2, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %84, label %79

79:                                               ; preds = %66
  %80 = load i32, i32* %2, align 4
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %80, %82
  br label %84

84:                                               ; preds = %79, %66
  %85 = phi i1 [ true, %66 ], [ %83, %79 ]
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %2, align 4
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ok(i32 %86, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 180, i32* %91, align 4
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i32 1, i32* %92, align 4
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  store i32 1, i32* %93, align 4
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  store i32 5, i32* %94, align 4
  %95 = load i32, i32* @SPI_SETMINIMIZEDMETRICS, align 4
  %96 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %97 = call i32 @SystemParametersInfoA(i32 %95, i32 20, %struct.TYPE_3__* %5, i32 %96)
  store i32 %97, i32* %1, align 4
  %98 = load i32, i32* %1, align 4
  %99 = call i32 @test_error_msg(i32 %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %84
  br label %307

102:                                              ; preds = %84
  %103 = load i32, i32* %1, align 4
  %104 = load i32, i32* %1, align 4
  %105 = call i32 (...) @GetLastError()
  %106 = call i32 @ok(i32 %103, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load i32, i32* @SPI_GETMINIMIZEDMETRICS, align 4
  %108 = load i32, i32* @FALSE, align 4
  %109 = call i32 @SystemParametersInfoA(i32 %107, i32 20, %struct.TYPE_3__* %4, i32 %108)
  store i32 %109, i32* %1, align 4
  %110 = load i32, i32* %1, align 4
  %111 = load i32, i32* %1, align 4
  %112 = call i32 (...) @GetLastError()
  %113 = call i32 @ok(i32 %110, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %111, i32 %112)
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @eq(i32 %115, i32 %117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @eq(i32 %120, i32 %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @eq(i32 %125, i32 %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @eq(i32 %130, i32 %132, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %134 = load i32, i32* @SPI_MINIMIZEDMETRICS_REGKEY, align 4
  %135 = load i32, i32* @SPI_MINWIDTH_VALNAME, align 4
  %136 = load i32, i32* @dpi, align 4
  %137 = call i32 @metricfromreg(i32 %134, i32 %135, i32 %136)
  store i32 %137, i32* %2, align 4
  %138 = load i32, i32* %2, align 4
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %138, %140
  %142 = zext i1 %141 to i32
  %143 = load i32, i32* %2, align 4
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ok(i32 %142, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %143, i32 %145)
  %147 = load i32, i32* @SPI_MINIMIZEDMETRICS_REGKEY, align 4
  %148 = load i32, i32* @SPI_MINHORZGAP_VALNAME, align 4
  %149 = load i32, i32* @dpi, align 4
  %150 = call i32 @metricfromreg(i32 %147, i32 %148, i32 %149)
  store i32 %150, i32* %2, align 4
  %151 = load i32, i32* %2, align 4
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %151, %153
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %2, align 4
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @ok(i32 %155, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %156, i32 %158)
  %160 = load i32, i32* @SPI_MINIMIZEDMETRICS_REGKEY, align 4
  %161 = load i32, i32* @SPI_MINVERTGAP_VALNAME, align 4
  %162 = load i32, i32* @dpi, align 4
  %163 = call i32 @metricfromreg(i32 %160, i32 %161, i32 %162)
  store i32 %163, i32* %2, align 4
  %164 = load i32, i32* %2, align 4
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %164, %166
  %168 = zext i1 %167 to i32
  %169 = load i32, i32* %2, align 4
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @ok(i32 %168, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %169, i32 %171)
  %173 = load i32, i32* @SPI_MINIMIZEDMETRICS_REGKEY, align 4
  %174 = load i32, i32* @SPI_MINARRANGE_VALNAME, align 4
  %175 = load i32, i32* @dpi, align 4
  %176 = call i32 @metricfromreg(i32 %173, i32 %174, i32 %175)
  store i32 %176, i32* %2, align 4
  %177 = load i32, i32* %2, align 4
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %177, %179
  %181 = zext i1 %180 to i32
  %182 = load i32, i32* %2, align 4
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @ok(i32 %181, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %182, i32 %184)
  %186 = load i32, i32* @SM_CXMINIMIZED, align 4
  %187 = call i32 @GetSystemMetrics(i32 %186)
  %188 = sub nsw i32 %187, 6
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @eq(i32 %188, i32 %190, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %192 = load i32, i32* @SM_CXMINSPACING, align 4
  %193 = call i32 @GetSystemMetrics(i32 %192)
  %194 = load i32, i32* @SM_CXMINIMIZED, align 4
  %195 = call i32 @GetSystemMetrics(i32 %194)
  %196 = sub nsw i32 %193, %195
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @eq(i32 %196, i32 %198, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %200 = load i32, i32* @SM_CYMINSPACING, align 4
  %201 = call i32 @GetSystemMetrics(i32 %200)
  %202 = load i32, i32* @SM_CYMINIMIZED, align 4
  %203 = call i32 @GetSystemMetrics(i32 %202)
  %204 = sub nsw i32 %201, %203
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @eq(i32 %204, i32 %206, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %208 = load i32, i32* @SM_ARRANGE, align 4
  %209 = call i32 @GetSystemMetrics(i32 %208)
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @eq(i32 %209, i32 %211, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 -1, i32* %213, align 4
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i32 -1, i32* %214, align 4
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  store i32 -1, i32* %215, align 4
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  store i32 -1, i32* %216, align 4
  %217 = load i32, i32* @SPI_SETMINIMIZEDMETRICS, align 4
  %218 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %219 = call i32 @SystemParametersInfoA(i32 %217, i32 20, %struct.TYPE_3__* %5, i32 %218)
  store i32 %219, i32* %1, align 4
  %220 = load i32, i32* %1, align 4
  %221 = load i32, i32* %1, align 4
  %222 = call i32 (...) @GetLastError()
  %223 = call i32 @ok(i32 %220, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %221, i32 %222)
  %224 = load i32, i32* @SPI_GETMINIMIZEDMETRICS, align 4
  %225 = load i32, i32* @FALSE, align 4
  %226 = call i32 @SystemParametersInfoA(i32 %224, i32 20, %struct.TYPE_3__* %4, i32 %225)
  store i32 %226, i32* %1, align 4
  %227 = load i32, i32* %1, align 4
  %228 = load i32, i32* %1, align 4
  %229 = call i32 (...) @GetLastError()
  %230 = call i32 @ok(i32 %227, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %228, i32 %229)
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @eq(i32 %232, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @eq(i32 %235, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @eq(i32 %238, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 4
  %241 = load i32, i32* %240, align 4
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %243 = load i32, i32* %242, align 4
  %244 = and i32 15, %243
  %245 = call i32 @eq(i32 %241, i32 %244, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %246 = load i32, i32* @SM_CXMINIMIZED, align 4
  %247 = call i32 @GetSystemMetrics(i32 %246)
  %248 = sub nsw i32 %247, 6
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @eq(i32 %248, i32 %250, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %252 = load i32, i32* @SM_CXMINSPACING, align 4
  %253 = call i32 @GetSystemMetrics(i32 %252)
  %254 = load i32, i32* @SM_CXMINIMIZED, align 4
  %255 = call i32 @GetSystemMetrics(i32 %254)
  %256 = sub nsw i32 %253, %255
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @eq(i32 %256, i32 %258, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %260 = load i32, i32* @SM_CYMINSPACING, align 4
  %261 = call i32 @GetSystemMetrics(i32 %260)
  %262 = load i32, i32* @SM_CYMINIMIZED, align 4
  %263 = call i32 @GetSystemMetrics(i32 %262)
  %264 = sub nsw i32 %261, %263
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @eq(i32 %264, i32 %266, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %268 = load i32, i32* @SM_ARRANGE, align 4
  %269 = call i32 @GetSystemMetrics(i32 %268)
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 4
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @eq(i32 %269, i32 %271, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %273 = load i32, i32* @SPI_SETMINIMIZEDMETRICS, align 4
  %274 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %275 = call i32 @SystemParametersInfoA(i32 %273, i32 20, %struct.TYPE_3__* %3, i32 %274)
  store i32 %275, i32* %1, align 4
  %276 = load i32, i32* %1, align 4
  %277 = load i32, i32* %1, align 4
  %278 = call i32 (...) @GetLastError()
  %279 = call i32 @ok(i32 %276, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.10, i64 0, i64 0), i32 %277, i32 %278)
  %280 = load i32, i32* @SPI_GETMINIMIZEDMETRICS, align 4
  %281 = load i32, i32* @FALSE, align 4
  %282 = call i32 @SystemParametersInfoA(i32 %280, i32 20, %struct.TYPE_3__* %4, i32 %281)
  store i32 %282, i32* %1, align 4
  %283 = load i32, i32* %1, align 4
  %284 = load i32, i32* %1, align 4
  %285 = call i32 (...) @GetLastError()
  %286 = call i32 @ok(i32 %283, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %284, i32 %285)
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @eq(i32 %288, i32 %290, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @eq(i32 %293, i32 %295, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @eq(i32 %298, i32 %300, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 4
  %303 = load i32, i32* %302, align 4
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 4
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @eq(i32 %303, i32 %305, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %307

307:                                              ; preds = %102, %101, %17
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @SystemParametersInfoA(i32, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @test_error_msg(i32, i8*) #1

declare dso_local i32 @metricfromreg(i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @eq(i32, i32, i8*, i8*) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

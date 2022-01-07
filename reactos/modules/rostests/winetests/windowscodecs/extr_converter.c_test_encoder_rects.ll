; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_converter.c_test_encoder_rects.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_converter.c_test_encoder_rects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_data = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }

@testdata_24bppBGR = common dso_local global %struct.bitmap_data zeroinitializer, align 4
@CLSID_WICTiffEncoder = common dso_local global i32 0, align 4
@CLSID_WICTiffDecoder = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"test_encoder_rects full\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"test_encoder_rects width=0\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"test_encoder_rects width=-1\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"test_encoder_rects height=0\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"test_encoder_rects height=-1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_encoder_rects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_encoder_rects() #0 {
  %1 = alloca [2 x %struct.bitmap_data*], align 16
  %2 = alloca [2 x %struct.bitmap_data*], align 16
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = getelementptr inbounds [2 x %struct.bitmap_data*], [2 x %struct.bitmap_data*]* %1, i64 0, i64 0
  store %struct.bitmap_data* @testdata_24bppBGR, %struct.bitmap_data** %4, align 16
  %5 = getelementptr inbounds [2 x %struct.bitmap_data*], [2 x %struct.bitmap_data*]* %1, i64 0, i64 1
  store %struct.bitmap_data* null, %struct.bitmap_data** %5, align 8
  %6 = getelementptr inbounds [2 x %struct.bitmap_data*], [2 x %struct.bitmap_data*]* %2, i64 0, i64 0
  store %struct.bitmap_data* @testdata_24bppBGR, %struct.bitmap_data** %6, align 16
  %7 = getelementptr inbounds [2 x %struct.bitmap_data*], [2 x %struct.bitmap_data*]* %2, i64 0, i64 1
  store %struct.bitmap_data* null, %struct.bitmap_data** %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 32, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 2, i32* %11, align 4
  %12 = getelementptr inbounds [2 x %struct.bitmap_data*], [2 x %struct.bitmap_data*]* %1, i64 0, i64 0
  %13 = getelementptr inbounds [2 x %struct.bitmap_data*], [2 x %struct.bitmap_data*]* %2, i64 0, i64 0
  %14 = call i32 @test_multi_encoder(%struct.bitmap_data** %12, i32* @CLSID_WICTiffEncoder, %struct.bitmap_data** %13, i32* @CLSID_WICTiffDecoder, %struct.TYPE_3__* %3, i32* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* null)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds [2 x %struct.bitmap_data*], [2 x %struct.bitmap_data*]* %1, i64 0, i64 0
  %17 = getelementptr inbounds [2 x %struct.bitmap_data*], [2 x %struct.bitmap_data*]* %2, i64 0, i64 0
  %18 = call i32 @test_multi_encoder(%struct.bitmap_data** %16, i32* @CLSID_WICTiffEncoder, %struct.bitmap_data** %17, i32* @CLSID_WICTiffDecoder, %struct.TYPE_3__* %3, i32* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 -1, i32* %19, align 8
  %20 = getelementptr inbounds [2 x %struct.bitmap_data*], [2 x %struct.bitmap_data*]* %1, i64 0, i64 0
  %21 = getelementptr inbounds [2 x %struct.bitmap_data*], [2 x %struct.bitmap_data*]* %2, i64 0, i64 0
  %22 = call i32 @test_multi_encoder(%struct.bitmap_data** %20, i32* @CLSID_WICTiffEncoder, %struct.bitmap_data** %21, i32* @CLSID_WICTiffDecoder, %struct.TYPE_3__* %3, i32* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 32, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds [2 x %struct.bitmap_data*], [2 x %struct.bitmap_data*]* %1, i64 0, i64 0
  %26 = getelementptr inbounds [2 x %struct.bitmap_data*], [2 x %struct.bitmap_data*]* %2, i64 0, i64 0
  %27 = call i32 @test_multi_encoder(%struct.bitmap_data** %25, i32* @CLSID_WICTiffEncoder, %struct.bitmap_data** %26, i32* @CLSID_WICTiffDecoder, %struct.TYPE_3__* %3, i32* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 -1, i32* %28, align 4
  %29 = getelementptr inbounds [2 x %struct.bitmap_data*], [2 x %struct.bitmap_data*]* %1, i64 0, i64 0
  %30 = getelementptr inbounds [2 x %struct.bitmap_data*], [2 x %struct.bitmap_data*]* %2, i64 0, i64 0
  %31 = call i32 @test_multi_encoder(%struct.bitmap_data** %29, i32* @CLSID_WICTiffEncoder, %struct.bitmap_data** %30, i32* @CLSID_WICTiffDecoder, %struct.TYPE_3__* %3, i32* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32* null)
  ret void
}

declare dso_local i32 @test_multi_encoder(%struct.bitmap_data**, i32*, %struct.bitmap_data**, i32*, %struct.TYPE_3__*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

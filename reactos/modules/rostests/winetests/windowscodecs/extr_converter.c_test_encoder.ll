; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_converter.c_test_encoder.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_converter.c_test_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_data = type { i32 }

@factory = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"CreatePalette error %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"InitializeCustom error %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bitmap_data*, i32*, %struct.bitmap_data*, i32*, i8*)* @test_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_encoder(%struct.bitmap_data* %0, i32* %1, %struct.bitmap_data* %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.bitmap_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bitmap_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [2 x %struct.bitmap_data*], align 16
  %12 = alloca [2 x %struct.bitmap_data*], align 16
  %13 = alloca [256 x i32], align 16
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store %struct.bitmap_data* %0, %struct.bitmap_data** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.bitmap_data* %2, %struct.bitmap_data** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  %16 = load i32, i32* @factory, align 4
  %17 = call i64 @IWICImagingFactory_CreatePalette(i32 %16, i32** %14)
  store i64 %17, i64* %15, align 8
  %18 = load i64, i64* %15, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %15, align 8
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %25 = call i32 @memset(i32* %24, i32 0, i32 1024)
  %26 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  store i32 286331153, i32* %26, align 16
  %27 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 1
  store i32 572662306, i32* %27, align 4
  %28 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 2
  store i32 858993459, i32* %28, align 8
  %29 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 3
  store i32 1145324612, i32* %29, align 4
  %30 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 4
  store i32 1431655765, i32* %30, align 16
  %31 = load i32*, i32** %14, align 8
  %32 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %33 = call i64 @IWICPalette_InitializeCustom(i32* %31, i32* %32, i32 256)
  store i64 %33, i64* %15, align 8
  %34 = load i64, i64* %15, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %15, align 8
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load %struct.bitmap_data*, %struct.bitmap_data** %6, align 8
  %41 = getelementptr inbounds [2 x %struct.bitmap_data*], [2 x %struct.bitmap_data*]* %11, i64 0, i64 0
  store %struct.bitmap_data* %40, %struct.bitmap_data** %41, align 16
  %42 = getelementptr inbounds [2 x %struct.bitmap_data*], [2 x %struct.bitmap_data*]* %11, i64 0, i64 1
  store %struct.bitmap_data* null, %struct.bitmap_data** %42, align 8
  %43 = load %struct.bitmap_data*, %struct.bitmap_data** %8, align 8
  %44 = getelementptr inbounds [2 x %struct.bitmap_data*], [2 x %struct.bitmap_data*]* %12, i64 0, i64 0
  store %struct.bitmap_data* %43, %struct.bitmap_data** %44, align 16
  %45 = getelementptr inbounds [2 x %struct.bitmap_data*], [2 x %struct.bitmap_data*]* %12, i64 0, i64 1
  store %struct.bitmap_data* null, %struct.bitmap_data** %45, align 8
  %46 = getelementptr inbounds [2 x %struct.bitmap_data*], [2 x %struct.bitmap_data*]* %11, i64 0, i64 0
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds [2 x %struct.bitmap_data*], [2 x %struct.bitmap_data*]* %12, i64 0, i64 0
  %49 = load i32*, i32** %9, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = call i32 @test_multi_encoder(%struct.bitmap_data** %46, i32* %47, %struct.bitmap_data** %48, i32* %49, i32* null, i32* null, i8* %50, i32* %51)
  %53 = load i32*, i32** %14, align 8
  %54 = call i32 @IWICPalette_Release(i32* %53)
  ret void
}

declare dso_local i64 @IWICImagingFactory_CreatePalette(i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @IWICPalette_InitializeCustom(i32*, i32*, i32) #1

declare dso_local i32 @test_multi_encoder(%struct.bitmap_data**, i32*, %struct.bitmap_data**, i32*, i32*, i32*, i8*, i32*) #1

declare dso_local i32 @IWICPalette_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

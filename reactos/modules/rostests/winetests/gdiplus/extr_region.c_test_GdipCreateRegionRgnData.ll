; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_region.c_test_GdipCreateRegionRgnData.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_region.c_test_GdipCreateRegionRgnData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidParameter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"status %d\0A\00", align 1
@Ok = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GdipCreateRegionRgnData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GdipCreateRegionRgnData() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [512 x i32], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  %9 = call i32 @GetDC(i32 0)
  store i32 %9, i32* %4, align 4
  %10 = call i32 @GdipCreateRegionRgnData(i32* null, i64 0, i32** null)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @InvalidParameter, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @GdipCreateFromHDC(i32 %17, i32** %1)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @Ok, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = call i32 @GdipCreateRegion(i32** %2)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @Ok, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %33 = call i32 @memset(i32* %32, i32 238, i32 2048)
  store i64 0, i64* %7, align 8
  %34 = load i32*, i32** %2, align 8
  %35 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %36 = call i32 @GdipGetRegionData(i32* %34, i32* %35, i32 2048, i64* %7)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @Ok, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @expect(i32 20, i64 %43)
  %45 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @GdipCreateRegionRgnData(i32* %45, i64 %46, i32** null)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @InvalidParameter, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @GdipCreateRegionRgnData(i32* %54, i64 %55, i32** %3)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @Ok, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %8, align 4
  %64 = load i32*, i32** %3, align 8
  %65 = load i32*, i32** %1, align 8
  %66 = call i32 @GdipIsInfiniteRegion(i32* %64, i32* %65, i32* %8)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @Ok, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @GdipDeleteRegion(i32* %76)
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 @GdipSetEmpty(i32* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @Ok, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %87 = call i32 @memset(i32* %86, i32 238, i32 2048)
  store i64 0, i64* %7, align 8
  %88 = load i32*, i32** %2, align 8
  %89 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %90 = call i32 @GdipGetRegionData(i32* %88, i32* %89, i32 2048, i64* %7)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @Ok, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @ok(i32 %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @expect(i32 20, i64 %97)
  %99 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @GdipCreateRegionRgnData(i32* %99, i64 %100, i32** %3)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @Ok, align 4
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @ok(i32 %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @FALSE, align 4
  store i32 %108, i32* %8, align 4
  %109 = load i32*, i32** %3, align 8
  %110 = load i32*, i32** %1, align 8
  %111 = call i32 @GdipIsEmptyRegion(i32* %109, i32* %110, i32* %8)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @Ok, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @ok(i32 %115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @ok(i32 %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @GdipDeleteRegion(i32* %121)
  %123 = load i32*, i32** %1, align 8
  %124 = call i32 @GdipDeleteGraphics(i32* %123)
  %125 = load i32*, i32** %2, align 8
  %126 = call i32 @GdipDeleteRegion(i32* %125)
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @ReleaseDC(i32 0, i32 %127)
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GdipCreateRegionRgnData(i32*, i64, i32**) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GdipCreateFromHDC(i32, i32**) #1

declare dso_local i32 @GdipCreateRegion(i32**) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @GdipGetRegionData(i32*, i32*, i32, i64*) #1

declare dso_local i32 @expect(i32, i64) #1

declare dso_local i32 @GdipIsInfiniteRegion(i32*, i32*, i32*) #1

declare dso_local i32 @GdipDeleteRegion(i32*) #1

declare dso_local i32 @GdipSetEmpty(i32*) #1

declare dso_local i32 @GdipIsEmptyRegion(i32*, i32*, i32*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

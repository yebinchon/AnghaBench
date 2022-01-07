; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/shaptest/extr_shaptest.c_PolygonTest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/shaptest/extr_shaptest.c_PolygonTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@__const.PolygonTest.PointsAlternate = private unnamed_addr constant [5 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 20, i32 80 }, %struct.TYPE_4__ { i32 60, i32 20 }, %struct.TYPE_4__ { i32 90, i32 80 }, %struct.TYPE_4__ { i32 20, i32 40 }, %struct.TYPE_4__ { i32 100, i32 40 }], align 16
@__const.PolygonTest.PointsWinding = private unnamed_addr constant [5 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 130, i32 80 }, %struct.TYPE_4__ { i32 170, i32 20 }, %struct.TYPE_4__ { i32 200, i32 80 }, %struct.TYPE_4__ { i32 130, i32 40 }, %struct.TYPE_4__ { i32 210, i32 40 }], align 16
@__const.PolygonTest.Tri1 = private unnamed_addr constant [3 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 3, i32 3 }, %struct.TYPE_4__ { i32 5, i32 3 }, %struct.TYPE_4__ { i32 3, i32 5 }], align 16
@__const.PolygonTest.Tri2 = private unnamed_addr constant [3 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 7, i32 3 }, %struct.TYPE_4__ { i32 7, i32 7 }, %struct.TYPE_4__ { i32 3, i32 7 }], align 16
@__const.PolygonTest.Square1 = private unnamed_addr constant [4 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 1, i32 15 }, %struct.TYPE_4__ { i32 3, i32 15 }, %struct.TYPE_4__ { i32 3, i32 17 }, %struct.TYPE_4__ { i32 1, i32 17 }], align 16
@__const.PolygonTest.Square2 = private unnamed_addr constant [4 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 5, i32 15 }, %struct.TYPE_4__ { i32 7, i32 15 }, %struct.TYPE_4__ { i32 7, i32 17 }, %struct.TYPE_4__ { i32 5, i32 17 }], align 16
@__const.PolygonTest.Square3 = private unnamed_addr constant [4 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 1, i32 23 }, %struct.TYPE_4__ { i32 3, i32 23 }, %struct.TYPE_4__ { i32 3, i32 25 }, %struct.TYPE_4__ { i32 1, i32 25 }], align 16
@__const.PolygonTest.Square4 = private unnamed_addr constant [4 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 5, i32 23 }, %struct.TYPE_4__ { i32 7, i32 23 }, %struct.TYPE_4__ { i32 7, i32 25 }, %struct.TYPE_4__ { i32 5, i32 25 }], align 16
@__const.PolygonTest.Square5 = private unnamed_addr constant [4 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 1, i32 31 }, %struct.TYPE_4__ { i32 3, i32 31 }, %struct.TYPE_4__ { i32 3, i32 33 }, %struct.TYPE_4__ { i32 1, i32 33 }], align 16
@__const.PolygonTest.Square6 = private unnamed_addr constant [4 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 5, i32 31 }, %struct.TYPE_4__ { i32 7, i32 31 }, %struct.TYPE_4__ { i32 7, i32 33 }, %struct.TYPE_4__ { i32 5, i32 33 }], align 16
@PS_SOLID = common dso_local global i32 0, align 4
@ALTERNATE = common dso_local global i32 0, align 4
@WINDING = common dso_local global i32 0, align 4
@PS_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PolygonTest(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [5 x %struct.TYPE_4__], align 16
  %9 = alloca [5 x %struct.TYPE_4__], align 16
  %10 = alloca [3 x %struct.TYPE_4__], align 16
  %11 = alloca [3 x %struct.TYPE_4__], align 16
  %12 = alloca [4 x %struct.TYPE_4__], align 16
  %13 = alloca [4 x %struct.TYPE_4__], align 16
  %14 = alloca [4 x %struct.TYPE_4__], align 16
  %15 = alloca [4 x %struct.TYPE_4__], align 16
  %16 = alloca [4 x %struct.TYPE_4__], align 16
  %17 = alloca [4 x %struct.TYPE_4__], align 16
  store i32 %0, i32* %2, align 4
  %18 = bitcast [5 x %struct.TYPE_4__]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([5 x %struct.TYPE_4__]* @__const.PolygonTest.PointsAlternate to i8*), i64 40, i1 false)
  %19 = bitcast [5 x %struct.TYPE_4__]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([5 x %struct.TYPE_4__]* @__const.PolygonTest.PointsWinding to i8*), i64 40, i1 false)
  %20 = bitcast [3 x %struct.TYPE_4__]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([3 x %struct.TYPE_4__]* @__const.PolygonTest.Tri1 to i8*), i64 24, i1 false)
  %21 = bitcast [3 x %struct.TYPE_4__]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([3 x %struct.TYPE_4__]* @__const.PolygonTest.Tri2 to i8*), i64 24, i1 false)
  %22 = bitcast [4 x %struct.TYPE_4__]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([4 x %struct.TYPE_4__]* @__const.PolygonTest.Square1 to i8*), i64 32, i1 false)
  %23 = bitcast [4 x %struct.TYPE_4__]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 bitcast ([4 x %struct.TYPE_4__]* @__const.PolygonTest.Square2 to i8*), i64 32, i1 false)
  %24 = bitcast [4 x %struct.TYPE_4__]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([4 x %struct.TYPE_4__]* @__const.PolygonTest.Square3 to i8*), i64 32, i1 false)
  %25 = bitcast [4 x %struct.TYPE_4__]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %25, i8* align 16 bitcast ([4 x %struct.TYPE_4__]* @__const.PolygonTest.Square4 to i8*), i64 32, i1 false)
  %26 = bitcast [4 x %struct.TYPE_4__]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %26, i8* align 16 bitcast ([4 x %struct.TYPE_4__]* @__const.PolygonTest.Square5 to i8*), i64 32, i1 false)
  %27 = bitcast [4 x %struct.TYPE_4__]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %27, i8* align 16 bitcast ([4 x %struct.TYPE_4__]* @__const.PolygonTest.Square6 to i8*), i64 32, i1 false)
  %28 = load i32, i32* @PS_SOLID, align 4
  %29 = call i32 @RGB(i32 0, i32 0, i32 255)
  %30 = call i64 @CreatePen(i32 %28, i32 1, i32 %29)
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @ASSERT(i64 %31)
  %33 = call i32 @RGB(i32 255, i32 0, i32 0)
  %34 = call i64 @CreateSolidBrush(i32 %33)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @ASSERT(i64 %35)
  %37 = load i32, i32* %2, align 4
  %38 = load i64, i64* %3, align 8
  %39 = call i64 @SelectObject(i32 %37, i64 %38)
  store i64 %39, i64* %4, align 8
  %40 = load i32, i32* %2, align 4
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @SelectObject(i32 %40, i64 %41)
  store i64 %42, i64* %6, align 8
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @GetPolyFillMode(i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @RoundRect(i32 %45, i32 32, i32 8, i32 48, i32 24, i32 8, i32 8)
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @ALTERNATE, align 4
  %49 = call i32 @SetPolyFillMode(i32 %47, i32 %48)
  %50 = load i32, i32* %2, align 4
  %51 = getelementptr inbounds [5 x %struct.TYPE_4__], [5 x %struct.TYPE_4__]* %8, i64 0, i64 0
  %52 = getelementptr inbounds [5 x %struct.TYPE_4__], [5 x %struct.TYPE_4__]* %8, i64 0, i64 0
  %53 = call i32 @nelem(%struct.TYPE_4__* %52)
  %54 = call i32 @Polygon(i32 %50, %struct.TYPE_4__* %51, i32 %53)
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @WINDING, align 4
  %57 = call i32 @SetPolyFillMode(i32 %55, i32 %56)
  %58 = load i32, i32* %2, align 4
  %59 = getelementptr inbounds [5 x %struct.TYPE_4__], [5 x %struct.TYPE_4__]* %9, i64 0, i64 0
  %60 = getelementptr inbounds [5 x %struct.TYPE_4__], [5 x %struct.TYPE_4__]* %9, i64 0, i64 0
  %61 = call i32 @nelem(%struct.TYPE_4__* %60)
  %62 = call i32 @Polygon(i32 %58, %struct.TYPE_4__* %59, i32 %61)
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @Rectangle(i32 %63, i32 1, i32 1, i32 10, i32 10)
  %65 = load i32, i32* %2, align 4
  %66 = getelementptr inbounds [3 x %struct.TYPE_4__], [3 x %struct.TYPE_4__]* %10, i64 0, i64 0
  %67 = getelementptr inbounds [3 x %struct.TYPE_4__], [3 x %struct.TYPE_4__]* %10, i64 0, i64 0
  %68 = call i32 @nelem(%struct.TYPE_4__* %67)
  %69 = call i32 @Polygon(i32 %65, %struct.TYPE_4__* %66, i32 %68)
  %70 = load i32, i32* %2, align 4
  %71 = getelementptr inbounds [3 x %struct.TYPE_4__], [3 x %struct.TYPE_4__]* %11, i64 0, i64 0
  %72 = getelementptr inbounds [3 x %struct.TYPE_4__], [3 x %struct.TYPE_4__]* %11, i64 0, i64 0
  %73 = call i32 @nelem(%struct.TYPE_4__* %72)
  %74 = call i32 @Polygon(i32 %70, %struct.TYPE_4__* %71, i32 %73)
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @Rectangle(i32 %75, i32 1, i32 11, i32 4, i32 14)
  %77 = load i32, i32* %2, align 4
  %78 = call i32 @Rectangle(i32 %77, i32 5, i32 11, i32 8, i32 14)
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @Rectangle(i32 %79, i32 9, i32 11, i32 12, i32 14)
  %81 = load i32, i32* %2, align 4
  %82 = call i32 @Rectangle(i32 %81, i32 13, i32 11, i32 16, i32 14)
  %83 = load i32, i32* %2, align 4
  %84 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %12, i64 0, i64 0
  %85 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %12, i64 0, i64 0
  %86 = call i32 @nelem(%struct.TYPE_4__* %85)
  %87 = call i32 @Polygon(i32 %83, %struct.TYPE_4__* %84, i32 %86)
  %88 = load i32, i32* %2, align 4
  %89 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %13, i64 0, i64 0
  %90 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %13, i64 0, i64 0
  %91 = call i32 @nelem(%struct.TYPE_4__* %90)
  %92 = call i32 @Polygon(i32 %88, %struct.TYPE_4__* %89, i32 %91)
  %93 = load i32, i32* %2, align 4
  %94 = call i32 @Rectangle(i32 %93, i32 1, i32 19, i32 4, i32 22)
  %95 = load i32, i32* %2, align 4
  %96 = call i32 @Rectangle(i32 %95, i32 5, i32 19, i32 8, i32 22)
  %97 = load i32, i32* %2, align 4
  %98 = call i32 @Rectangle(i32 %97, i32 9, i32 19, i32 12, i32 22)
  %99 = load i32, i32* %2, align 4
  %100 = call i32 @Rectangle(i32 %99, i32 13, i32 19, i32 16, i32 22)
  %101 = load i32, i32* %2, align 4
  %102 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %14, i64 0, i64 0
  %103 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %14, i64 0, i64 0
  %104 = call i32 @nelem(%struct.TYPE_4__* %103)
  %105 = call i32 @Polygon(i32 %101, %struct.TYPE_4__* %102, i32 %104)
  %106 = load i32, i32* %2, align 4
  %107 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %15, i64 0, i64 0
  %108 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %15, i64 0, i64 0
  %109 = call i32 @nelem(%struct.TYPE_4__* %108)
  %110 = call i32 @Polygon(i32 %106, %struct.TYPE_4__* %107, i32 %109)
  %111 = load i32, i32* %2, align 4
  %112 = call i32 @Rectangle(i32 %111, i32 1, i32 27, i32 4, i32 30)
  %113 = load i32, i32* %2, align 4
  %114 = call i32 @Rectangle(i32 %113, i32 5, i32 27, i32 8, i32 30)
  %115 = load i32, i32* %2, align 4
  %116 = call i32 @Rectangle(i32 %115, i32 9, i32 27, i32 12, i32 30)
  %117 = load i32, i32* %2, align 4
  %118 = call i32 @Rectangle(i32 %117, i32 13, i32 27, i32 16, i32 30)
  %119 = load i32, i32* %2, align 4
  %120 = load i64, i64* %4, align 8
  %121 = call i64 @SelectObject(i32 %119, i64 %120)
  %122 = call i32 @DeleteObject(i64 %121)
  %123 = load i32, i32* @PS_NULL, align 4
  %124 = call i64 @CreatePen(i32 %123, i32 0, i32 0)
  store i64 %124, i64* %3, align 8
  %125 = load i64, i64* %3, align 8
  %126 = call i32 @ASSERT(i64 %125)
  %127 = load i32, i32* %2, align 4
  %128 = load i64, i64* %3, align 8
  %129 = call i64 @SelectObject(i32 %127, i64 %128)
  store i64 %129, i64* %4, align 8
  %130 = load i32, i32* %2, align 4
  %131 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %16, i64 0, i64 0
  %132 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %16, i64 0, i64 0
  %133 = call i32 @nelem(%struct.TYPE_4__* %132)
  %134 = call i32 @Polygon(i32 %130, %struct.TYPE_4__* %131, i32 %133)
  %135 = load i32, i32* %2, align 4
  %136 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %17, i64 0, i64 0
  %137 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %17, i64 0, i64 0
  %138 = call i32 @nelem(%struct.TYPE_4__* %137)
  %139 = call i32 @Polygon(i32 %135, %struct.TYPE_4__* %136, i32 %138)
  %140 = load i32, i32* %2, align 4
  %141 = call i32 @Rectangle(i32 %140, i32 1, i32 35, i32 4, i32 38)
  %142 = load i32, i32* %2, align 4
  %143 = call i32 @Rectangle(i32 %142, i32 5, i32 35, i32 8, i32 38)
  %144 = load i32, i32* %2, align 4
  %145 = call i32 @Rectangle(i32 %144, i32 9, i32 35, i32 12, i32 38)
  %146 = load i32, i32* %2, align 4
  %147 = call i32 @Rectangle(i32 %146, i32 13, i32 35, i32 16, i32 38)
  %148 = load i32, i32* %2, align 4
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @SetPolyFillMode(i32 %148, i32 %149)
  %151 = load i32, i32* %2, align 4
  %152 = load i64, i64* %4, align 8
  %153 = call i64 @SelectObject(i32 %151, i64 %152)
  %154 = call i32 @DeleteObject(i64 %153)
  %155 = load i32, i32* %2, align 4
  %156 = load i64, i64* %6, align 8
  %157 = call i64 @SelectObject(i32 %155, i64 %156)
  %158 = call i32 @DeleteObject(i64 %157)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @CreatePen(i32, i32, i32) #2

declare dso_local i32 @RGB(i32, i32, i32) #2

declare dso_local i32 @ASSERT(i64) #2

declare dso_local i64 @CreateSolidBrush(i32) #2

declare dso_local i64 @SelectObject(i32, i64) #2

declare dso_local i32 @GetPolyFillMode(i32) #2

declare dso_local i32 @RoundRect(i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SetPolyFillMode(i32, i32) #2

declare dso_local i32 @Polygon(i32, %struct.TYPE_4__*, i32) #2

declare dso_local i32 @nelem(%struct.TYPE_4__*) #2

declare dso_local i32 @Rectangle(i32, i32, i32, i32, i32) #2

declare dso_local i32 @DeleteObject(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

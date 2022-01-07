; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_PaintRgn.c_Test_PaintRgn.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_PaintRgn.c_Test_PaintRgn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { double, float, double, double, double, double }

@__const.Test_PaintRgn.rc = private unnamed_addr constant %struct.TYPE_6__ { i32 0, i32 0, i32 100, i32 100 }, align 4
@gpvDIB1 = common dso_local global i32* null, align 8
@ghdcDIB1 = common dso_local global i32 0, align 4
@BLACK_BRUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to create region\0A\00", align 1
@RGN_OR = common dso_local global i32 0, align 4
@GM_ADVANCED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"SetWorldTransform failed\0A\00", align 1
@WHITE_BRUSH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"PaintRgn failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_PaintRgn() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i32*, align 8
  %7 = bitcast %struct.TYPE_6__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_6__* @__const.Test_PaintRgn.rc to i8*), i64 16, i1 false)
  %8 = load i32*, i32** @gpvDIB1, align 8
  store i32* %8, i32** %6, align 8
  %9 = load i32, i32* @ghdcDIB1, align 4
  %10 = load i32, i32* @BLACK_BRUSH, align 4
  %11 = call i32 @GetStockObject(i32 %10)
  %12 = call i32 @FillRect(i32 %9, %struct.TYPE_6__* %1, i32 %11)
  %13 = call i32* @CreateRectRgn(i32 0, i32 0, i32 8, i32 3)
  store i32* %13, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %18 = call i32* @CreateRectRgn(i32 2, i32 3, i32 5, i32 8)
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %2, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @RGN_OR, align 4
  %27 = call i32 @CombineRgn(i32* %23, i32* %24, i32* %25, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store double 1.000000e+00, double* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store float 5.000000e-01, float* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  store double 0.000000e+00, double* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  store double 1.000000e+00, double* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 4
  store double 0.000000e+00, double* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 5
  store double 0.000000e+00, double* %33, align 8
  %34 = load i32, i32* @ghdcDIB1, align 4
  %35 = load i32, i32* @GM_ADVANCED, align 4
  %36 = call i32 @SetGraphicsMode(i32 %34, i32 %35)
  %37 = load i32, i32* @ghdcDIB1, align 4
  %38 = call i64 @SetWorldTransform(i32 %37, %struct.TYPE_5__* %5)
  %39 = load i64, i64* @TRUE, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ghdcDIB1, align 4
  %44 = load i32, i32* @WHITE_BRUSH, align 4
  %45 = call i32 @GetStockObject(i32 %44)
  %46 = call i32 @SelectObject(i32 %43, i32 %45)
  %47 = load i32, i32* @ghdcDIB1, align 4
  %48 = load i32*, i32** %2, align 8
  %49 = call i64 @PaintRgn(i32 %47, i32* %48)
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @TRUE, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ok_long(i32 %57, i32 0)
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ok_long(i32 %61, i32 192)
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ok_long(i32 %65, i32 240)
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ok_long(i32 %69, i32 252)
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ok_long(i32 %73, i32 63)
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 5
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ok_long(i32 %77, i32 63)
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 6
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ok_long(i32 %81, i32 59)
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 7
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ok_long(i32 %85, i32 56)
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 8
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ok_long(i32 %89, i32 56)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @FillRect(i32, %struct.TYPE_6__*, i32) #2

declare dso_local i32 @GetStockObject(i32) #2

declare dso_local i32* @CreateRectRgn(i32, i32, i32, i32) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i32 @CombineRgn(i32*, i32*, i32*, i32) #2

declare dso_local i32 @SetGraphicsMode(i32, i32) #2

declare dso_local i64 @SetWorldTransform(i32, %struct.TYPE_5__*) #2

declare dso_local i32 @SelectObject(i32, i32) #2

declare dso_local i64 @PaintRgn(i32, i32*) #2

declare dso_local i32 @ok_long(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_Create_AboveRGB.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_Create_AboveRGB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { double, double, i32 }
%struct.TYPE_7__ = type { double, double, i32 }
%struct.TYPE_6__ = type { double, double, i32 }

@__const.Create_AboveRGB.Primaries = private unnamed_addr constant %struct.TYPE_9__ { %struct.TYPE_8__ { double 6.400000e-01, double 3.300000e-01, i32 1 }, %struct.TYPE_7__ { double 2.100000e-01, double 7.100000e-01, i32 1 }, %struct.TYPE_6__ { double 1.500000e-01, double 6.000000e-02, i32 1 } }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @Create_AboveRGB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Create_AboveRGB() #0 {
  %1 = alloca [3 x i32*], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.TYPE_9__* @__const.Create_AboveRGB.Primaries to i8*), i64 72, i1 false)
  %6 = call i32 (...) @DbgThread()
  %7 = call i32* @cmsBuildGamma(i32 %6, double 0x4001980000000000)
  %8 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1, i64 0, i64 2
  store i32* %7, i32** %8, align 16
  %9 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1, i64 0, i64 1
  store i32* %7, i32** %9, align 8
  %10 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1, i64 0, i64 0
  store i32* %7, i32** %10, align 16
  %11 = call i32 (...) @DbgThread()
  %12 = call i32 @cmsWhitePointFromTemp(i32 %11, i32* %3, i32 6504)
  %13 = call i32 (...) @DbgThread()
  %14 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1, i64 0, i64 0
  %15 = call i32 @cmsCreateRGBProfile(i32 %13, i32* %3, %struct.TYPE_9__* %4, i32** %14)
  store i32 %15, i32* %2, align 4
  %16 = call i32 (...) @DbgThread()
  %17 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1, i64 0, i64 0
  %18 = load i32*, i32** %17, align 16
  %19 = call i32 @cmsFreeToneCurve(i32 %16, i32* %18)
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @cmsBuildGamma(i32, double) #2

declare dso_local i32 @DbgThread(...) #2

declare dso_local i32 @cmsWhitePointFromTemp(i32, i32*, i32) #2

declare dso_local i32 @cmsCreateRGBProfile(i32, i32*, %struct.TYPE_9__*, i32**) #2

declare dso_local i32 @cmsFreeToneCurve(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

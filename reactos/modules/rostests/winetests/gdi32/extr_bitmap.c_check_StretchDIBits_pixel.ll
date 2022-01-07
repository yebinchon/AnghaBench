; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_bitmap.c_check_StretchDIBits_pixel.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_bitmap.c_check_StretchDIBits_pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@__const.check_StretchDIBits_pixel.buffer = private unnamed_addr constant [2 x i32] [i32 -19088744, i32 0], align 4
@BI_RGB = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"StretchDIBits with dwRop %06X. Expected 0x%08X, got 0x%08X from line %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32, i32, i32)* @check_StretchDIBits_pixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_StretchDIBits_pixel(i32 %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca %struct.TYPE_6__, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = bitcast [2 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast ([2 x i32]* @__const.check_StretchDIBits_pixel.buffer to i8*), i64 8, i1 false)
  %16 = call i32 @memset(%struct.TYPE_6__* %14, i32 0, i32 28)
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 4, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i32 2, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 4
  store i32 32, i32* %26, align 4
  %27 = load i32, i32* @BI_RGB, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 5
  store i32 8, i32* %31, align 4
  %32 = load i32*, i32** %8, align 8
  store i32 -1985229329, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = bitcast [2 x i32]* %13 to i32**
  %35 = load i32, i32* @DIB_RGB_COLORS, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @StretchDIBits(i32 %33, i32 0, i32 0, i32 2, i32 1, i32 0, i32 0, i32 1, i32 1, i32** %34, %struct.TYPE_6__* %14, i32 %35, i32 %36)
  %38 = load i32, i32* %11, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %38, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i32 %46, i32 %47)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @StretchDIBits(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, %struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

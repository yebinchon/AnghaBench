; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_bitmap.c_test_clipping.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_bitmap.c_test_clipping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@BITSPIXEL = common dso_local global i32 0, align 4
@BI_RGB = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Couldn't create destination bitmap\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Couldn't create source bitmap\0A\00", align 1
@SRCCOPY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"BitBlt failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_clipping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_clipping() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 4
  %9 = call i32 @CreateCompatibleDC(i32* null)
  store i32 %9, i32* %6, align 4
  %10 = call i32 @CreateCompatibleDC(i32* null)
  store i32 %10, i32* %7, align 4
  %11 = bitcast %struct.TYPE_7__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 28, i1 false)
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 4, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i32 100, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  store i32 100, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  store i32 1, i32* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @BITSPIXEL, align 4
  %22 = call i32 @GetDeviceCaps(i32 %20, i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @BI_RGB, align 4
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @DIB_RGB_COLORS, align 4
  %30 = call i32* @CreateDIBSection(i32 %28, %struct.TYPE_7__* %8, i32 %29, i32* %4, i32* null, i32 0)
  store i32* %30, i32** %1, align 8
  %31 = load i32*, i32** %1, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @SelectObject(i32 %35, i32* %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @DIB_RGB_COLORS, align 4
  %40 = call i32* @CreateDIBSection(i32 %38, %struct.TYPE_7__* %8, i32 %39, i32* %4, i32* null, i32 0)
  store i32* %40, i32** %2, align 8
  %41 = load i32*, i32** %2, align 8
  %42 = icmp ne i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %7, align 4
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @SelectObject(i32 %45, i32* %46)
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @SRCCOPY, align 4
  %51 = call i32 @BitBlt(i32 %48, i32 0, i32 0, i32 100, i32 100, i32 %49, i32 100, i32 100, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %54 = call i32* @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i32* %54, i32** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @SelectClipRgn(i32 %55, i32* %56)
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @SRCCOPY, align 4
  %61 = call i32 @BitBlt(i32 %58, i32 0, i32 0, i32 100, i32 100, i32 %59, i32 0, i32 0, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32*, i32** %1, align 8
  %65 = call i32 @DeleteObject(i32* %64)
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @DeleteObject(i32* %66)
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @DeleteObject(i32* %68)
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @DeleteDC(i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @DeleteDC(i32 %72)
  ret void
}

declare dso_local i32 @CreateCompatibleDC(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @GetDeviceCaps(i32, i32) #1

declare dso_local i32* @CreateDIBSection(i32, %struct.TYPE_7__*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @SelectObject(i32, i32*) #1

declare dso_local i32 @BitBlt(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32* @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i32 @SelectClipRgn(i32, i32*) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32 @DeleteDC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_FrameRgn.c_Test_FrameRgn.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_FrameRgn.c_Test_FrameRgn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@__const.Test_FrameRgn.rc = private unnamed_addr constant %struct.TYPE_3__ { i32 0, i32 0, i32 8, i32 8 }, align 4
@__const.Test_FrameRgn.ajBits = private unnamed_addr constant <{ [55 x i32], [9 x i32] }> <{ [55 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1], [9 x i32] zeroinitializer }>, align 16
@ghdcDIB32 = common dso_local global i32 0, align 4
@BLACK_BRUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to create region\0A\00", align 1
@RGN_OR = common dso_local global i32 0, align 4
@GRAY_BRUSH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"FrameRgn failed\0A\00", align 1
@WHITE_BRUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_FrameRgn() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [64 x i32], align 16
  %6 = alloca [16 x i32], align 16
  %7 = bitcast %struct.TYPE_3__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_3__* @__const.Test_FrameRgn.rc to i8*), i64 16, i1 false)
  %8 = bitcast [64 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast (<{ [55 x i32], [9 x i32] }>* @__const.Test_FrameRgn.ajBits to i8*), i64 256, i1 false)
  %9 = bitcast [16 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 64, i1 false)
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %11 = call i32 @RGB(i32 0, i32 0, i32 0)
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = call i32 @RGB(i32 255, i32 255, i32 255)
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = call i32 @RGB(i32 128, i32 128, i32 128)
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @ghdcDIB32, align 4
  %18 = load i32, i32* @BLACK_BRUSH, align 4
  %19 = call i32 @GetStockObject(i32 %18)
  %20 = call i32 @FillRect(i32 %17, %struct.TYPE_3__* %1, i32 %19)
  %21 = call i32* @CreateRectRgn(i32 1, i32 1, i32 5, i32 5)
  store i32* %21, i32** %2, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %26 = call i32* @CreateRectRgn(i32 3, i32 3, i32 7, i32 7)
  store i32* %26, i32** %3, align 8
  %27 = load i32*, i32** %2, align 8
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %31 = load i32*, i32** %2, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @RGN_OR, align 4
  %35 = call i32 @CombineRgn(i32* %31, i32* %32, i32* %33, i32 %34)
  %36 = load i32, i32* @ghdcDIB32, align 4
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* @GRAY_BRUSH, align 4
  %39 = call i32 @GetStockObject(i32 %38)
  %40 = call i64 @FillRgn(i32 %36, i32* %37, i32 %39)
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ghdcDIB32, align 4
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* @WHITE_BRUSH, align 4
  %48 = call i32 @GetStockObject(i32 %47)
  %49 = call i64 @FrameRgn(i32 %45, i32* %46, i32 %48, i32 1, i32 1)
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %4, align 8
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @ghdcDIB32, align 4
  %55 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %57 = call i32 @CheckBitmapBits(i32 %54, i32 8, i32 8, i32* %55, i32* %56)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @RGB(i32, i32, i32) #2

declare dso_local i32 @FillRect(i32, %struct.TYPE_3__*, i32) #2

declare dso_local i32 @GetStockObject(i32) #2

declare dso_local i32* @CreateRectRgn(i32, i32, i32, i32) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i32 @CombineRgn(i32*, i32*, i32*, i32) #2

declare dso_local i64 @FillRgn(i32, i32*, i32) #2

declare dso_local i64 @FrameRgn(i32, i32*, i32, i32, i32) #2

declare dso_local i32 @CheckBitmapBits(i32, i32, i32, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

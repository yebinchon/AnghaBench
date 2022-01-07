; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_MaskBlt.c_Test_MaskBlt_Brush.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_MaskBlt.c_Test_MaskBlt_Brush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, [2 x i32] }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@__const.Test_MaskBlt_Brush.bmiData = private unnamed_addr constant %struct.anon { i32 4, [2 x i32] [i32 0, i32 16777215] }, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@HS_CROSS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to create brush\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to select brush\0A\00", align 1
@SRCCOPY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"MaskBlt failed (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"pulBitsDst[0] == 0x%lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"CreateDIBSection failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"CreatePatternBrush failed\0A\00", align 1
@BI_RGB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_MaskBlt_Brush() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.anon, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = bitcast %struct.anon* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.anon* @__const.Test_MaskBlt_Brush.bmiData to i8*), i64 12, i1 false)
  %14 = bitcast %struct.anon* %3 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %4, align 8
  %15 = call i32 @CreateCompatibleDC(i32* null)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = load i32, i32* @DIB_RGB_COLORS, align 4
  %19 = bitcast i32** %8 to i32*
  %20 = call i64 @CreateDIBSection(i32 %16, %struct.TYPE_9__* %17, i32 %18, i32* %19, i32* null, i32 0)
  store i64 %20, i64* %5, align 8
  %21 = load i32, i32* %1, align 4
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @SelectObject(i32 %21, i64 %22)
  %24 = call i32 @CreateCompatibleDC(i32* null)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = load i32, i32* @DIB_RGB_COLORS, align 4
  %28 = bitcast i32** %9 to i32*
  %29 = call i64 @CreateDIBSection(i32 %25, %struct.TYPE_9__* %26, i32 %27, i32* %28, i32* null, i32 0)
  store i64 %29, i64* %6, align 8
  %30 = load i32, i32* %2, align 4
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @SelectObject(i32 %30, i64 %31)
  %33 = load i32, i32* @HS_CROSS, align 4
  %34 = call i64 @CreateHatchBrush(i32 %33, i32 0)
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %1, align 4
  %40 = load i64, i64* %12, align 8
  %41 = call i64 @SelectObject(i32 %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 0, i32* %46, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 -1, i32* %48, align 4
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* @SRCCOPY, align 4
  %52 = call i32 @MAKEROP4(i32 %51, i32 11141120)
  %53 = call i32 @MaskBlt(i32 %49, i32 0, i32 0, i32 8, i32 1, i32 %50, i32 0, i32 0, i32* null, i32 0, i32 0, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, 1
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %11, align 4
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i32 8, i32* %70, align 4
  %71 = load i32, i32* %1, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = load i32, i32* @DIB_RGB_COLORS, align 4
  %74 = bitcast i32** %10 to i32*
  %75 = call i64 @CreateDIBSection(i32 %71, %struct.TYPE_9__* %72, i32 %73, i32* %74, i32* null, i32 0)
  store i64 %75, i64* %7, align 8
  %76 = load i64, i64* %7, align 8
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i64, i64* %7, align 8
  %81 = call i64 @CreatePatternBrush(i64 %80)
  store i64 %81, i64* %12, align 8
  %82 = load i64, i64* %12, align 8
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %86 = load i32, i32* %1, align 4
  %87 = load i64, i64* %12, align 8
  %88 = call i64 @SelectObject(i32 %86, i64 %87)
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 0, i32* %93, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 -1, i32* %95, align 4
  %96 = load i32*, i32** %10, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 -861208832, i32* %97, align 4
  %98 = load i32, i32* %1, align 4
  %99 = load i32, i32* %2, align 4
  %100 = load i32, i32* @SRCCOPY, align 4
  %101 = call i32 @MAKEROP4(i32 %100, i32 11141120)
  %102 = call i32 @MaskBlt(i32 %98, i32 0, i32 0, i32 16, i32 1, i32 %99, i32 0, i32 0, i32* null, i32 0, i32 0, i32 %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp eq i32 %103, 1
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %11, align 4
  %107 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load i32*, i32** %8, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = load i32*, i32** %8, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %115)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @CreateCompatibleDC(i32*) #2

declare dso_local i64 @CreateDIBSection(i32, %struct.TYPE_9__*, i32, i32*, i32*, i32) #2

declare dso_local i64 @SelectObject(i32, i64) #2

declare dso_local i64 @CreateHatchBrush(i32, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @MaskBlt(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @MAKEROP4(i32, i32) #2

declare dso_local i64 @CreatePatternBrush(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

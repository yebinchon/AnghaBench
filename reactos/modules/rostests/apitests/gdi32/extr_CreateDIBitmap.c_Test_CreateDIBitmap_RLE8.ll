; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CreateDIBitmap.c_Test_CreateDIBitmap_RLE8.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CreateDIBitmap.c_Test_CreateDIBitmap_RLE8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { %struct.TYPE_9__, [4 x i32], [20 x i32] }
%struct.TYPE_9__ = type { i32 }

@__const.Test_CreateDIBitmap_RLE8.PackedDIB = private unnamed_addr constant %struct.anon { %struct.TYPE_9__ { i32 4 }, [4 x i32] [i32 0, i32 1, i32 2, i32 7], [20 x i32] [i32 4, i32 0, i32 0, i32 2, i32 0, i32 1, i32 0, i32 2, i32 3, i32 1, i32 2, i32 1, i32 2, i32 2, i32 1, i32 3, i32 1, i32 0, i32 1, i32 2] }, align 4
@CBM_INIT = common dso_local global i32 0, align 4
@DIB_PAL_COLORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"CreateDIBitmap failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"CreateDIBitmap succeeded, expected failure\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"CreateDIBitmap failed\0A\00", align 1
@BI_RLE8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_CreateDIBitmap_RLE8() #0 {
  %1 = alloca %struct.anon, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = bitcast %struct.anon* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.anon* @__const.Test_CreateDIBitmap_RLE8.PackedDIB to i8*), i64 100, i1 false)
  %5 = call i32 @CreateCompatibleDC(i32 0)
  store i32 %5, i32* %2, align 4
  %6 = call i32 @SetLastError(i32 -1160008448)
  %7 = load i32, i32* %2, align 4
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  %9 = load i32, i32* @CBM_INIT, align 4
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 2
  %11 = bitcast [20 x i32]* %10 to i32**
  %12 = ptrtoint %struct.anon* %1 to i32
  %13 = load i32, i32* @DIB_PAL_COLORS, align 4
  %14 = call i64 @CreateDIBitmap(i32 %7, %struct.TYPE_9__* %8, i32 %9, i32** %11, i32 %12, i32 %13)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @ok_err(i32 -1160008448)
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @DeleteObject(i64 %20)
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i32 2, i32* %23, align 4
  %24 = load i32, i32* %2, align 4
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  %26 = load i32, i32* @CBM_INIT, align 4
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 2
  %28 = bitcast [20 x i32]* %27 to i32**
  %29 = ptrtoint %struct.anon* %1 to i32
  %30 = load i32, i32* @DIB_PAL_COLORS, align 4
  %31 = call i64 @CreateDIBitmap(i32 %24, %struct.TYPE_9__* %25, i32 %26, i32** %28, i32 %29, i32 %30)
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %3, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @ok_err(i32 -1160008448)
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @DeleteObject(i64 %37)
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load i32, i32* %2, align 4
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  %43 = load i32, i32* @CBM_INIT, align 4
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 2
  %45 = bitcast [20 x i32]* %44 to i32**
  %46 = ptrtoint %struct.anon* %1 to i32
  %47 = load i32, i32* @DIB_PAL_COLORS, align 4
  %48 = call i64 @CreateDIBitmap(i32 %41, %struct.TYPE_9__* %42, i32 %43, i32** %45, i32 %46, i32 %47)
  store i64 %48, i64* %3, align 8
  %49 = load i64, i64* %3, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %53 = call i32 @ok_err(i32 -1160008448)
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @DeleteObject(i64 %54)
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  %58 = load i32, i32* %2, align 4
  %59 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  %60 = load i32, i32* @CBM_INIT, align 4
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 2
  %62 = bitcast [20 x i32]* %61 to i32**
  %63 = ptrtoint %struct.anon* %1 to i32
  %64 = load i32, i32* @DIB_PAL_COLORS, align 4
  %65 = call i64 @CreateDIBitmap(i32 %58, %struct.TYPE_9__* %59, i32 %60, i32** %62, i32 %63, i32 %64)
  store i64 %65, i64* %3, align 8
  %66 = load i64, i64* %3, align 8
  %67 = icmp eq i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %70 = call i32 @ok_err(i32 -1160008448)
  %71 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i32 20, i32* %72, align 4
  %73 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 2
  %74 = getelementptr inbounds [20 x i32], [20 x i32]* %73, i64 0, i64 0
  store i32 17, i32* %74, align 4
  %75 = load i32, i32* %2, align 4
  %76 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  %77 = load i32, i32* @CBM_INIT, align 4
  %78 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 2
  %79 = bitcast [20 x i32]* %78 to i32**
  %80 = ptrtoint %struct.anon* %1 to i32
  %81 = load i32, i32* @DIB_PAL_COLORS, align 4
  %82 = call i64 @CreateDIBitmap(i32 %75, %struct.TYPE_9__* %76, i32 %77, i32** %79, i32 %80, i32 %81)
  store i64 %82, i64* %3, align 8
  %83 = load i64, i64* %3, align 8
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @ok(i32 %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %87 = call i32 @ok_err(i32 -1160008448)
  %88 = load i64, i64* %3, align 8
  %89 = call i32 @DeleteObject(i64 %88)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @CreateCompatibleDC(i32) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i64 @CreateDIBitmap(i32, %struct.TYPE_9__*, i32, i32**, i32, i32) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i32 @ok_err(i32) #2

declare dso_local i32 @DeleteObject(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

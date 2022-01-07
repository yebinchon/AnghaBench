; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_bitmap.c_check_StretchDIBits_stretch.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_bitmap.c_check_StretchDIBits_stretch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32 }

@BI_RGB = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [147 x i8] c"StretchDIBits expected { %08X, %08X, %08X, %08X } got { %08X, %08X, %08X, %08X } stretching { %d, %d, %d, %d } to { %d, %d, %d, %d } from line %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_21__*, %struct.TYPE_21__*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_21__*, i32)* @check_StretchDIBits_stretch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_StretchDIBits_stretch(i32 %0, %struct.TYPE_21__* %1, %struct.TYPE_21__* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, %struct.TYPE_21__* %11, i32 %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_21__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_21__, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_21__, align 8
  %30 = alloca %struct.TYPE_21__, align 8
  %31 = alloca %struct.TYPE_21__, align 8
  %32 = alloca %struct.TYPE_21__, align 8
  %33 = alloca %struct.TYPE_21__, align 8
  %34 = alloca %struct.TYPE_21__, align 8
  %35 = alloca %struct.TYPE_21__, align 8
  %36 = alloca %struct.TYPE_21__, align 8
  store i32 %0, i32* %14, align 4
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %15, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store %struct.TYPE_21__* %11, %struct.TYPE_21__** %25, align 8
  store i32 %12, i32* %26, align 4
  %37 = call i32 @memset(%struct.TYPE_21__* %27, i32 0, i32 24)
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  store i32 4, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 1
  store i32 2, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 2
  store i32 -2, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 3
  store i32 1, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 4
  store i32 32, i32* %47, align 4
  %48 = load i32, i32* @BI_RGB, align 4
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %52 = call i32 @memset(%struct.TYPE_21__* %51, i32 0, i32 16)
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* %20, align 4
  %58 = load i32, i32* %21, align 4
  %59 = load i32, i32* %22, align 4
  %60 = load i32, i32* %23, align 4
  %61 = load i32, i32* %24, align 4
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %63 = load i32, i32* @DIB_RGB_COLORS, align 4
  %64 = load i32, i32* @SRCCOPY, align 4
  %65 = call i32 @StretchDIBits(i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, %struct.TYPE_21__* %62, %struct.TYPE_21__* %27, i32 %63, i32 %64)
  store i32 %65, i32* %28, align 4
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %68 = call i64 @memcmp(%struct.TYPE_21__* %66, %struct.TYPE_21__* %67, i32 16)
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i64 0
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i64 1
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i64 2
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i64 3
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i64 0
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i64 1
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i64 2
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i64 3
  %87 = load i32, i32* %21, align 4
  %88 = load i32, i32* %22, align 4
  %89 = load i32, i32* %23, align 4
  %90 = load i32, i32* %24, align 4
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* %26, align 4
  %96 = bitcast %struct.TYPE_21__* %29 to i8*
  %97 = bitcast %struct.TYPE_21__* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 4 %97, i64 24, i1 false)
  %98 = bitcast %struct.TYPE_21__* %30 to i8*
  %99 = bitcast %struct.TYPE_21__* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %98, i8* align 4 %99, i64 24, i1 false)
  %100 = bitcast %struct.TYPE_21__* %31 to i8*
  %101 = bitcast %struct.TYPE_21__* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %100, i8* align 4 %101, i64 24, i1 false)
  %102 = bitcast %struct.TYPE_21__* %32 to i8*
  %103 = bitcast %struct.TYPE_21__* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 4 %103, i64 24, i1 false)
  %104 = bitcast %struct.TYPE_21__* %33 to i8*
  %105 = bitcast %struct.TYPE_21__* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 4 %105, i64 24, i1 false)
  %106 = bitcast %struct.TYPE_21__* %34 to i8*
  %107 = bitcast %struct.TYPE_21__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %106, i8* align 4 %107, i64 24, i1 false)
  %108 = bitcast %struct.TYPE_21__* %35 to i8*
  %109 = bitcast %struct.TYPE_21__* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %108, i8* align 4 %109, i64 24, i1 false)
  %110 = bitcast %struct.TYPE_21__* %36 to i8*
  %111 = bitcast %struct.TYPE_21__* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 4 %111, i64 24, i1 false)
  %112 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str, i64 0, i64 0), %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %29, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %30, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %31, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %32, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %33, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %34, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %35, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %36, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95)
  %113 = load i32, i32* %28, align 4
  ret i32 %113
}

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @StretchDIBits(i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_21__*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @memcmp(%struct.TYPE_21__*, %struct.TYPE_21__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

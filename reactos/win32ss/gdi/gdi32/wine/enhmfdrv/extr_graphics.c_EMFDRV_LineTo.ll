; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_graphics.c_EMFDRV_LineTo.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_graphics.c_EMFDRV_LineTo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_18__, %struct.TYPE_19__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { i8*, i8* }
%struct.TYPE_20__ = type { i8*, i8*, i8*, i8* }

@EMR_LINETO = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EMFDRV_LineTo(%struct.TYPE_22__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_21__, align 4
  %11 = alloca %struct.TYPE_23__, align 8
  %12 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %14 = call %struct.TYPE_24__* @get_emf_physdev(%struct.TYPE_22__* %13)
  store %struct.TYPE_24__* %14, %struct.TYPE_24__** %8, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %16 = call %struct.TYPE_25__* @get_physdev_dc(%struct.TYPE_22__* %15)
  store %struct.TYPE_25__* %16, %struct.TYPE_25__** %9, align 8
  %17 = load i32, i32* @EMR_LINETO, align 4
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  store i32 24, i32* %21, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %30 = call i32 @EMFDRV_WriteRecord(%struct.TYPE_22__* %28, %struct.TYPE_18__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %4, align 4
  br label %68

34:                                               ; preds = %3
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 0
  %37 = bitcast %struct.TYPE_21__* %10 to i8*
  %38 = bitcast %struct.TYPE_21__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 8, i1 false)
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @min(i8* %39, i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 3
  store i8* %42, i8** %43, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @min(i8* %44, i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 2
  store i8* %47, i8** %48, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @max(i8* %49, i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  store i8* %52, i8** %53, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @max(i8* %54, i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  store i8* %57, i8** %58, align 8
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %34
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %65 = call i32 @EMFDRV_UpdateBBox(%struct.TYPE_22__* %64, %struct.TYPE_20__* %12)
  br label %66

66:                                               ; preds = %63, %34
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %32
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_24__* @get_emf_physdev(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_25__* @get_physdev_dc(%struct.TYPE_22__*) #1

declare dso_local i32 @EMFDRV_WriteRecord(%struct.TYPE_22__*, %struct.TYPE_18__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @min(i8*, i32) #1

declare dso_local i8* @max(i8*, i32) #1

declare dso_local i32 @EMFDRV_UpdateBBox(%struct.TYPE_22__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

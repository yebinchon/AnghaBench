; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsgamma.c_DupPluginCurvesList.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsgamma.c_DupPluginCurvesList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cmsContext_struct = type { i32, i64* }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__*, i32* }

@CurvesPlugin = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._cmsContext_struct*, %struct._cmsContext_struct*)* @DupPluginCurvesList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DupPluginCurvesList(%struct._cmsContext_struct* %0, %struct._cmsContext_struct* %1) #0 {
  %3 = alloca %struct._cmsContext_struct*, align 8
  %4 = alloca %struct._cmsContext_struct*, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  store %struct._cmsContext_struct* %0, %struct._cmsContext_struct** %3, align 8
  store %struct._cmsContext_struct* %1, %struct._cmsContext_struct** %4, align 8
  %10 = bitcast %struct.TYPE_4__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %7, align 8
  %11 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %4, align 8
  %12 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @CurvesPlugin, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %8, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @_cmsAssert(i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %6, align 8
  br label %25

25:                                               ; preds = %56, %2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %60

28:                                               ; preds = %25
  %29 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %3, align 8
  %30 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = call i64 @_cmsSubAllocDup(i32 %31, %struct.TYPE_4__* %32, i32 24)
  %34 = inttoptr i64 %33 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %9, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %36 = icmp eq %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %70

38:                                               ; preds = %28
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %40, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %46, align 8
  br label %47

47:                                               ; preds = %43, %38
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = icmp eq %struct.TYPE_4__* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %54, align 8
  br label %55

55:                                               ; preds = %52, %47
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  store %struct.TYPE_4__* %59, %struct.TYPE_4__** %6, align 8
  br label %25

60:                                               ; preds = %25
  %61 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %3, align 8
  %62 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @_cmsSubAllocDup(i32 %63, %struct.TYPE_4__* %5, i32 24)
  %65 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %3, align 8
  %66 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* @CurvesPlugin, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  store i64 %64, i64* %69, align 8
  br label %70

70:                                               ; preds = %60, %37
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @_cmsAssert(i32) #2

declare dso_local i64 @_cmsSubAllocDup(i32, %struct.TYPE_4__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

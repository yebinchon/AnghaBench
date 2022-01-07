; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_DupTagTypeList.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_DupTagTypeList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cmsContext_struct = type { i32, i64* }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._cmsContext_struct*, %struct._cmsContext_struct*, i32)* @DupTagTypeList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DupTagTypeList(%struct._cmsContext_struct* %0, %struct._cmsContext_struct* %1, i32 %2) #0 {
  %4 = alloca %struct._cmsContext_struct*, align 8
  %5 = alloca %struct._cmsContext_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  store %struct._cmsContext_struct* %0, %struct._cmsContext_struct** %4, align 8
  store %struct._cmsContext_struct* %1, %struct._cmsContext_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = bitcast %struct.TYPE_4__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  %13 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %5, align 8
  %14 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %10, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %8, align 8
  br label %24

24:                                               ; preds = %55, %3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %59

27:                                               ; preds = %24
  %28 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %4, align 8
  %29 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = call i64 @_cmsSubAllocDup(i32 %30, %struct.TYPE_4__* %31, i32 24)
  %33 = inttoptr i64 %32 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %11, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %35 = icmp eq %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %70

37:                                               ; preds = %27
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %39, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %45, align 8
  br label %46

46:                                               ; preds = %42, %37
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = icmp eq %struct.TYPE_4__* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %53, align 8
  br label %54

54:                                               ; preds = %51, %46
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  store %struct.TYPE_4__* %58, %struct.TYPE_4__** %8, align 8
  br label %24

59:                                               ; preds = %24
  %60 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %4, align 8
  %61 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @_cmsSubAllocDup(i32 %62, %struct.TYPE_4__* %7, i32 24)
  %64 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %4, align 8
  %65 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  store i64 %63, i64* %69, align 8
  br label %70

70:                                               ; preds = %59, %36
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @_cmsSubAllocDup(i32, %struct.TYPE_4__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

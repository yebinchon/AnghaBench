; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscnvrt.c_DupPluginIntentsList.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscnvrt.c_DupPluginIntentsList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cmsContext_struct = type { i32, i64* }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__*, i32* }

@IntentPlugin = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._cmsContext_struct*, %struct._cmsContext_struct*)* @DupPluginIntentsList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DupPluginIntentsList(%struct._cmsContext_struct* %0, %struct._cmsContext_struct* %1) #0 {
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
  %14 = load i64, i64* @IntentPlugin, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %8, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %6, align 8
  br label %21

21:                                               ; preds = %52, %2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %56

24:                                               ; preds = %21
  %25 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %3, align 8
  %26 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = call i64 @_cmsSubAllocDup(i32 %27, %struct.TYPE_4__* %28, i32 24)
  %30 = inttoptr i64 %29 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %9, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %32 = icmp eq %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %66

34:                                               ; preds = %24
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %36, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = icmp ne %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %42, align 8
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = icmp eq %struct.TYPE_4__* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %50, align 8
  br label %51

51:                                               ; preds = %48, %43
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  store %struct.TYPE_4__* %55, %struct.TYPE_4__** %6, align 8
  br label %21

56:                                               ; preds = %21
  %57 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %3, align 8
  %58 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @_cmsSubAllocDup(i32 %59, %struct.TYPE_4__* %5, i32 24)
  %61 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %3, align 8
  %62 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* @IntentPlugin, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  store i64 %60, i64* %65, align 8
  br label %66

66:                                               ; preds = %56, %33
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

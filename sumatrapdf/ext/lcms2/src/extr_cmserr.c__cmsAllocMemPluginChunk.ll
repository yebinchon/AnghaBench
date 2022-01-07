; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmserr.c__cmsAllocMemPluginChunk.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmserr.c__cmsAllocMemPluginChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cmsContext_struct = type { i32, i32**, i32 }

@MemPlugin = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_cmsAllocMemPluginChunk(%struct._cmsContext_struct* %0, %struct._cmsContext_struct* %1) #0 {
  %3 = alloca %struct._cmsContext_struct*, align 8
  %4 = alloca %struct._cmsContext_struct*, align 8
  store %struct._cmsContext_struct* %0, %struct._cmsContext_struct** %3, align 8
  store %struct._cmsContext_struct* %1, %struct._cmsContext_struct** %4, align 8
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %3, align 8
  %6 = icmp ne %struct._cmsContext_struct* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @_cmsAssert(i32 %7)
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %4, align 8
  %10 = icmp ne %struct._cmsContext_struct* %9, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %3, align 8
  %13 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %4, align 8
  %16 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %15, i32 0, i32 1
  %17 = load i32**, i32*** %16, align 8
  %18 = load i64, i64* @MemPlugin, align 8
  %19 = getelementptr inbounds i32*, i32** %17, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = call i32* @_cmsSubAllocDup(i32 %14, i32* %20, i32 4)
  %22 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %3, align 8
  %23 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %22, i32 0, i32 1
  %24 = load i32**, i32*** %23, align 8
  %25 = load i64, i64* @MemPlugin, align 8
  %26 = getelementptr inbounds i32*, i32** %24, i64 %25
  store i32* %21, i32** %26, align 8
  br label %35

27:                                               ; preds = %2
  %28 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %3, align 8
  %29 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %28, i32 0, i32 0
  %30 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %3, align 8
  %31 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %30, i32 0, i32 1
  %32 = load i32**, i32*** %31, align 8
  %33 = load i64, i64* @MemPlugin, align 8
  %34 = getelementptr inbounds i32*, i32** %32, i64 %33
  store i32* %29, i32** %34, align 8
  br label %35

35:                                               ; preds = %27, %11
  ret void
}

declare dso_local i32 @_cmsAssert(i32) #1

declare dso_local i32* @_cmsSubAllocDup(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

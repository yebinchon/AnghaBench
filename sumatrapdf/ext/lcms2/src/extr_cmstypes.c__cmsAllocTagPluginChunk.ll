; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c__cmsAllocTagPluginChunk.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c__cmsAllocTagPluginChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct._cmsContext_struct = type { i32, i32* }

@_cmsAllocTagPluginChunk.TagPluginChunk = internal global %struct.TYPE_3__ zeroinitializer, align 8
@TagPlugin = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_cmsAllocTagPluginChunk(%struct._cmsContext_struct* %0, %struct._cmsContext_struct* %1) #0 {
  %3 = alloca %struct._cmsContext_struct*, align 8
  %4 = alloca %struct._cmsContext_struct*, align 8
  store %struct._cmsContext_struct* %0, %struct._cmsContext_struct** %3, align 8
  store %struct._cmsContext_struct* %1, %struct._cmsContext_struct** %4, align 8
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %4, align 8
  %6 = icmp ne %struct._cmsContext_struct* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %3, align 8
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %4, align 8
  %10 = call i32 @DupTagList(%struct._cmsContext_struct* %8, %struct._cmsContext_struct* %9)
  br label %21

11:                                               ; preds = %2
  %12 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %3, align 8
  %13 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @_cmsSubAllocDup(i32 %14, %struct.TYPE_3__* @_cmsAllocTagPluginChunk.TagPluginChunk, i32 8)
  %16 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %3, align 8
  %17 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @TagPlugin, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %15, i32* %20, align 4
  br label %21

21:                                               ; preds = %11, %7
  ret void
}

declare dso_local i32 @DupTagList(%struct._cmsContext_struct*, %struct._cmsContext_struct*) #1

declare dso_local i32 @_cmsSubAllocDup(i32, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

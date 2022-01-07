; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsplugin.c__cmsGetContext.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsplugin.c__cmsGetContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cmsContext_struct = type { %struct._cmsContext_struct* }

@globalContext = common dso_local global %struct._cmsContext_struct zeroinitializer, align 8
@_cmsContextPoolHead = common dso_local global %struct._cmsContext_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._cmsContext_struct* @_cmsGetContext(i64 %0) #0 {
  %2 = alloca %struct._cmsContext_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct._cmsContext_struct*, align 8
  %5 = alloca %struct._cmsContext_struct*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = inttoptr i64 %6 to %struct._cmsContext_struct*
  store %struct._cmsContext_struct* %7, %struct._cmsContext_struct** %4, align 8
  %8 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %4, align 8
  %9 = icmp eq %struct._cmsContext_struct* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct._cmsContext_struct* @globalContext, %struct._cmsContext_struct** %2, align 8
  br label %28

11:                                               ; preds = %1
  %12 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** @_cmsContextPoolHead, align 8
  store %struct._cmsContext_struct* %12, %struct._cmsContext_struct** %5, align 8
  br label %13

13:                                               ; preds = %23, %11
  %14 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %5, align 8
  %15 = icmp ne %struct._cmsContext_struct* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %4, align 8
  %18 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %5, align 8
  %19 = icmp eq %struct._cmsContext_struct* %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %5, align 8
  store %struct._cmsContext_struct* %21, %struct._cmsContext_struct** %2, align 8
  br label %28

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22
  %24 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %5, align 8
  %25 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %24, i32 0, i32 0
  %26 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %25, align 8
  store %struct._cmsContext_struct* %26, %struct._cmsContext_struct** %5, align 8
  br label %13

27:                                               ; preds = %13
  store %struct._cmsContext_struct* @globalContext, %struct._cmsContext_struct** %2, align 8
  br label %28

28:                                               ; preds = %27, %20, %10
  %29 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %2, align 8
  ret %struct._cmsContext_struct* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

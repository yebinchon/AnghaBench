; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlmemory.c_xmlGcMemSetup.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlmemory.c_xmlGcMemSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xmlFree = common dso_local global i32* null, align 8
@xmlMalloc = common dso_local global i32* null, align 8
@xmlMallocAtomic = common dso_local global i32* null, align 8
@xmlRealloc = common dso_local global i32* null, align 8
@xmlMemStrdup = common dso_local global i32* null, align 8
@xmlGenericErrorContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlGcMemSetup(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %37

15:                                               ; preds = %5
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 -1, i32* %6, align 4
  br label %37

19:                                               ; preds = %15
  %20 = load i32*, i32** %9, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 -1, i32* %6, align 4
  br label %37

23:                                               ; preds = %19
  %24 = load i32*, i32** %10, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 -1, i32* %6, align 4
  br label %37

27:                                               ; preds = %23
  %28 = load i32*, i32** %11, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 -1, i32* %6, align 4
  br label %37

31:                                               ; preds = %27
  %32 = load i32*, i32** %7, align 8
  store i32* %32, i32** @xmlFree, align 8
  %33 = load i32*, i32** %8, align 8
  store i32* %33, i32** @xmlMalloc, align 8
  %34 = load i32*, i32** %9, align 8
  store i32* %34, i32** @xmlMallocAtomic, align 8
  %35 = load i32*, i32** %10, align 8
  store i32* %35, i32** @xmlRealloc, align 8
  %36 = load i32*, i32** %11, align 8
  store i32* %36, i32** @xmlMemStrdup, align 8
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %31, %30, %26, %22, %18, %14
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

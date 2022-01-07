; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlmemory.c_xmlMemSetup.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlmemory.c_xmlMemSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xmlFree = common dso_local global i32* null, align 8
@xmlMalloc = common dso_local global i32* null, align 8
@xmlMallocAtomic = common dso_local global i32* null, align 8
@xmlRealloc = common dso_local global i32* null, align 8
@xmlMemStrdup = common dso_local global i32* null, align 8
@xmlGenericErrorContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlMemSetup(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %31

13:                                               ; preds = %4
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 -1, i32* %5, align 4
  br label %31

17:                                               ; preds = %13
  %18 = load i32*, i32** %8, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 -1, i32* %5, align 4
  br label %31

21:                                               ; preds = %17
  %22 = load i32*, i32** %9, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %31

25:                                               ; preds = %21
  %26 = load i32*, i32** %6, align 8
  store i32* %26, i32** @xmlFree, align 8
  %27 = load i32*, i32** %7, align 8
  store i32* %27, i32** @xmlMalloc, align 8
  %28 = load i32*, i32** %7, align 8
  store i32* %28, i32** @xmlMallocAtomic, align 8
  %29 = load i32*, i32** %8, align 8
  store i32* %29, i32** @xmlRealloc, align 8
  %30 = load i32*, i32** %9, align 8
  store i32* %30, i32** @xmlMemStrdup, align 8
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %25, %24, %20, %16, %12
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

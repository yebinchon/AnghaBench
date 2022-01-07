; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlhead.c_HTMLTitleElement_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlhead.c_HTMLTitleElement_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@HTMLTitleElementVtbl = common dso_local global i32 0, align 4
@HTMLTitleElementImplVtbl = common dso_local global i32 0, align 4
@HTMLTitleElement_dispex = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HTMLTitleElement_Create(i32* %0, i32* %1, %struct.TYPE_11__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__**, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_11__** %2, %struct.TYPE_11__*** %7, align 8
  %9 = call %struct.TYPE_10__* @heap_alloc_zero(i32 16)
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %8, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %11 = icmp ne %struct.TYPE_10__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %13, i32* %4, align 4
  br label %31

14:                                               ; preds = %3
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i32* @HTMLTitleElementVtbl, i32** %17, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i32* @HTMLTitleElementImplVtbl, i32** %21, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @HTMLElement_Init(%struct.TYPE_11__* %23, i32* %24, i32* %25, i32* @HTMLTitleElement_dispex)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %29, align 8
  %30 = load i32, i32* @S_OK, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %14, %12
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.TYPE_10__* @heap_alloc_zero(i32) #1

declare dso_local i32 @HTMLElement_Init(%struct.TYPE_11__*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

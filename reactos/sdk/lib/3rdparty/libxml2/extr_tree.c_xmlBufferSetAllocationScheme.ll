; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlBufferSetAllocationScheme.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlBufferSetAllocationScheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@XML_BUFFER_ALLOC_IMMUTABLE = common dso_local global i64 0, align 8
@XML_BUFFER_ALLOC_IO = common dso_local global i64 0, align 8
@XML_BUFFER_ALLOC_DOUBLEIT = common dso_local global i64 0, align 8
@XML_BUFFER_ALLOC_EXACT = common dso_local global i64 0, align 8
@XML_BUFFER_ALLOC_HYBRID = common dso_local global i64 0, align 8
@xmlGenericErrorContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlBufferSetAllocationScheme(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = icmp eq %struct.TYPE_3__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %41

8:                                                ; preds = %2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @XML_BUFFER_ALLOC_IMMUTABLE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @XML_BUFFER_ALLOC_IO, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %8
  br label %41

21:                                               ; preds = %14
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @XML_BUFFER_ALLOC_DOUBLEIT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @XML_BUFFER_ALLOC_EXACT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @XML_BUFFER_ALLOC_HYBRID, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @XML_BUFFER_ALLOC_IMMUTABLE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33, %29, %25, %21
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %7, %20, %37, %33
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

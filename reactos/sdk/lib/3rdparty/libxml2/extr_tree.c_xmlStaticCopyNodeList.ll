; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlStaticCopyNodeList.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlStaticCopyNodeList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_14__* }

@XML_DTD_NODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_13__*)* @xmlStaticCopyNodeList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @xmlStaticCopyNodeList(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  br label %11

11:                                               ; preds = %42, %3
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = icmp ne %struct.TYPE_13__* %12, null
  br i1 %13, label %14, label %46

14:                                               ; preds = %11
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %18 = call %struct.TYPE_13__* @xmlStaticCopyNode(%struct.TYPE_13__* %15, %struct.TYPE_14__* %16, %struct.TYPE_13__* %17, i32 1)
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %10, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %20 = icmp eq %struct.TYPE_13__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %48

22:                                               ; preds = %14
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %24 = icmp eq %struct.TYPE_13__* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %27, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %8, align 8
  br label %42

29:                                               ; preds = %22
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %32 = icmp ne %struct.TYPE_13__* %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %36, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 2
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %39, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %9, align 8
  br label %41

41:                                               ; preds = %33, %29
  br label %42

42:                                               ; preds = %41, %25
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %5, align 8
  br label %11

46:                                               ; preds = %11
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %47, %struct.TYPE_13__** %4, align 8
  br label %48

48:                                               ; preds = %46, %21
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %49
}

declare dso_local %struct.TYPE_13__* @xmlStaticCopyNode(%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

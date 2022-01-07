; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_callout.c_callout_remove.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_callout.c_callout_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.callout = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }

@callout_queue = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.callout*)* @callout_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @callout_remove(%struct.callout* %0) #0 {
  %2 = alloca %struct.callout*, align 8
  store %struct.callout* %0, %struct.callout** %2, align 8
  %3 = load %struct.callout*, %struct.callout** %2, align 8
  %4 = getelementptr inbounds %struct.callout, %struct.callout* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %45

8:                                                ; preds = %1
  %9 = load %struct.callout*, %struct.callout** %2, align 8
  %10 = getelementptr inbounds %struct.callout, %struct.callout* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load %struct.callout*, %struct.callout** %2, align 8
  %15 = getelementptr inbounds %struct.callout, %struct.callout* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load %struct.callout*, %struct.callout** %2, align 8
  %18 = getelementptr inbounds %struct.callout, %struct.callout* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %20, align 8
  br label %25

21:                                               ; preds = %8
  %22 = load %struct.callout*, %struct.callout** %2, align 8
  %23 = getelementptr inbounds %struct.callout, %struct.callout* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** @callout_queue, align 8
  br label %25

25:                                               ; preds = %21, %13
  %26 = load %struct.callout*, %struct.callout** %2, align 8
  %27 = getelementptr inbounds %struct.callout, %struct.callout* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.callout*, %struct.callout** %2, align 8
  %32 = getelementptr inbounds %struct.callout, %struct.callout* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load %struct.callout*, %struct.callout** %2, align 8
  %35 = getelementptr inbounds %struct.callout, %struct.callout* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %37, align 8
  br label %38

38:                                               ; preds = %30, %25
  %39 = load %struct.callout*, %struct.callout** %2, align 8
  %40 = getelementptr inbounds %struct.callout, %struct.callout* %39, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %40, align 8
  %41 = load %struct.callout*, %struct.callout** %2, align 8
  %42 = getelementptr inbounds %struct.callout, %struct.callout* %41, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %42, align 8
  %43 = load %struct.callout*, %struct.callout** %2, align 8
  %44 = getelementptr inbounds %struct.callout, %struct.callout* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %38, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

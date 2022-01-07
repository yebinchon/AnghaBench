; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_compute_action.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_compute_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lemon = type { i32, i32, i32, i32, i32 }
%struct.action = type { i32, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compute_action(%struct.lemon* %0, %struct.action* %1) #0 {
  %3 = alloca %struct.lemon*, align 8
  %4 = alloca %struct.action*, align 8
  %5 = alloca i32, align 4
  store %struct.lemon* %0, %struct.lemon** %3, align 8
  store %struct.action* %1, %struct.action** %4, align 8
  %6 = load %struct.action*, %struct.action** %4, align 8
  %7 = getelementptr inbounds %struct.action, %struct.action* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %68 [
    i32 129, label %9
    i32 128, label %16
    i32 130, label %49
    i32 131, label %60
    i32 132, label %64
  ]

9:                                                ; preds = %2
  %10 = load %struct.action*, %struct.action** %4, align 8
  %11 = getelementptr inbounds %struct.action, %struct.action* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  br label %69

16:                                               ; preds = %2
  %17 = load %struct.action*, %struct.action** %4, align 8
  %18 = getelementptr inbounds %struct.action, %struct.action* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.lemon*, %struct.lemon** %3, align 8
  %23 = getelementptr inbounds %struct.lemon, %struct.lemon* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %16
  %27 = load %struct.lemon*, %struct.lemon** %3, align 8
  %28 = getelementptr inbounds %struct.lemon, %struct.lemon* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.action*, %struct.action** %4, align 8
  %31 = getelementptr inbounds %struct.action, %struct.action* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %29, %35
  store i32 %36, i32* %5, align 4
  br label %48

37:                                               ; preds = %16
  %38 = load %struct.lemon*, %struct.lemon** %3, align 8
  %39 = getelementptr inbounds %struct.lemon, %struct.lemon* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.action*, %struct.action** %4, align 8
  %42 = getelementptr inbounds %struct.action, %struct.action* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %40, %46
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %37, %26
  br label %69

49:                                               ; preds = %2
  %50 = load %struct.lemon*, %struct.lemon** %3, align 8
  %51 = getelementptr inbounds %struct.lemon, %struct.lemon* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.action*, %struct.action** %4, align 8
  %54 = getelementptr inbounds %struct.action, %struct.action* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %52, %58
  store i32 %59, i32* %5, align 4
  br label %69

60:                                               ; preds = %2
  %61 = load %struct.lemon*, %struct.lemon** %3, align 8
  %62 = getelementptr inbounds %struct.lemon, %struct.lemon* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %5, align 4
  br label %69

64:                                               ; preds = %2
  %65 = load %struct.lemon*, %struct.lemon** %3, align 8
  %66 = getelementptr inbounds %struct.lemon, %struct.lemon* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %5, align 4
  br label %69

68:                                               ; preds = %2
  store i32 -1, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %64, %60, %49, %48, %9
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/redis/src/extr_adlist.c_listIndex.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_adlist.c_listIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_5__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @listIndex(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = sub nsw i64 0, %9
  %11 = sub nsw i64 %10, 1
  store i64 %11, i64* %4, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %5, align 8
  br label %15

15:                                               ; preds = %24, %8
  %16 = load i64, i64* %4, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %4, align 8
  %18 = icmp ne i64 %16, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi i1 [ false, %15 ], [ %21, %19 ]
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %5, align 8
  br label %15

28:                                               ; preds = %22
  br label %47

29:                                               ; preds = %2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %5, align 8
  br label %33

33:                                               ; preds = %42, %29
  %34 = load i64, i64* %4, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* %4, align 8
  %36 = icmp ne i64 %34, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = icmp ne %struct.TYPE_5__* %38, null
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi i1 [ false, %33 ], [ %39, %37 ]
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %5, align 8
  br label %33

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %28
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  ret %struct.TYPE_5__* %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

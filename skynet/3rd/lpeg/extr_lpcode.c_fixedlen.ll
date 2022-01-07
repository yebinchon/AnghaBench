; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_fixedlen.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_fixedlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fixedlen(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %39, %19, %1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %63 [
    i32 139, label %13
    i32 129, label %13
    i32 143, label %13
    i32 137, label %16
    i32 128, label %16
    i32 135, label %16
    i32 144, label %16
    i32 142, label %16
    i32 133, label %18
    i32 131, label %18
    i32 134, label %18
    i32 140, label %19
    i32 132, label %19
    i32 136, label %19
    i32 141, label %22
    i32 130, label %32
    i32 138, label %45
  ]

13:                                               ; preds = %9, %9, %9
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %65

16:                                               ; preds = %9, %9, %9, %9, %9
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %65

18:                                               ; preds = %9, %9, %9
  store i32 -1, i32* %2, align 4
  br label %65

19:                                               ; preds = %9, %9, %9
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = call %struct.TYPE_9__* @sib1(%struct.TYPE_9__* %20)
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %3, align 8
  br label %9

22:                                               ; preds = %9
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = call i32 @callrecursive(%struct.TYPE_9__* %23, i32 (%struct.TYPE_9__*)* @fixedlen, i32 -1)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 -1, i32* %2, align 4
  br label %65

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %2, align 4
  br label %65

32:                                               ; preds = %9
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = call %struct.TYPE_9__* @sib1(%struct.TYPE_9__* %33)
  %35 = call i32 @fixedlen(%struct.TYPE_9__* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 -1, i32* %2, align 4
  br label %65

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %4, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = call %struct.TYPE_9__* @sib2(%struct.TYPE_9__* %43)
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %3, align 8
  br label %9

45:                                               ; preds = %9
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = call %struct.TYPE_9__* @sib1(%struct.TYPE_9__* %46)
  %48 = call i32 @fixedlen(%struct.TYPE_9__* %47)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = call %struct.TYPE_9__* @sib2(%struct.TYPE_9__* %49)
  %51 = call i32 @fixedlen(%struct.TYPE_9__* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %45
  store i32 -1, i32* %2, align 4
  br label %65

59:                                               ; preds = %55
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %2, align 4
  br label %65

63:                                               ; preds = %9
  %64 = call i32 @assert(i32 0)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %59, %58, %38, %28, %27, %18, %16, %13
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_9__* @sib1(%struct.TYPE_9__*) #1

declare dso_local i32 @callrecursive(%struct.TYPE_9__*, i32 (%struct.TYPE_9__*)*, i32) #1

declare dso_local %struct.TYPE_9__* @sib2(%struct.TYPE_9__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

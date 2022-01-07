; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_multiCursorSetupTree.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_multiCursorSetupTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @multiCursorSetupTree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiCursorSetupTree(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = call i32 @multiCursorAllocTree(%struct.TYPE_9__* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @LSM_OK, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %25, %12
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @multiCursorDoCompare(%struct.TYPE_9__* %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %6, align 4
  br label %17

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = call i32 @assertCursorTree(%struct.TYPE_9__* %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = call i32 @multiCursorCacheKey(%struct.TYPE_9__* %32, i32* %5)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @LSM_OK, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = call i64 @mcursorLocationOk(%struct.TYPE_9__* %38, i32 0)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @multiCursorAdvance(%struct.TYPE_9__* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %37, %29
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @multiCursorAllocTree(%struct.TYPE_9__*) #1

declare dso_local i32 @multiCursorDoCompare(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @assertCursorTree(%struct.TYPE_9__*) #1

declare dso_local i32 @multiCursorCacheKey(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @mcursorLocationOk(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @multiCursorAdvance(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

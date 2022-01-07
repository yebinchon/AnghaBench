; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfmem.c_MemClone.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfmem.c_MemClone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32* }

@LMEM_FIXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @MemClone(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %9

9:                                                ; preds = %52, %1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = icmp ne %struct.TYPE_9__* %10, null
  br i1 %11, label %12, label %54

12:                                               ; preds = %9
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %7, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = ptrtoint %struct.TYPE_9__* %16 to i32
  %18 = call i32 @LocalSize(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @LMEM_FIXED, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.TYPE_9__* @LocalAlloc(i32 %19, i32 %20)
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %6, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = icmp ne %struct.TYPE_9__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %12
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = call i32 @MemDelete(%struct.TYPE_9__* %25)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %56

27:                                               ; preds = %12
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = ptrtoint %struct.TYPE_9__* %28 to i32
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = ptrtoint %struct.TYPE_9__* %30 to i32
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @CopyMemory(i32 %29, i32 %31, i32 %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = icmp ne %struct.TYPE_9__* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %27
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %4, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = call %struct.TYPE_10__* @MemLinkToHead(%struct.TYPE_9__* %38)
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %36, %27
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %43, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = icmp ne %struct.TYPE_9__* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %49, align 8
  br label %50

50:                                               ; preds = %46, %41
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %5, align 8
  br label %52

52:                                               ; preds = %50
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %3, align 8
  br label %9

54:                                               ; preds = %9
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %2, align 8
  br label %56

56:                                               ; preds = %54, %24
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %57
}

declare dso_local i32 @LocalSize(i32) #1

declare dso_local %struct.TYPE_9__* @LocalAlloc(i32, i32) #1

declare dso_local i32 @MemDelete(%struct.TYPE_9__*) #1

declare dso_local i32 @CopyMemory(i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @MemLinkToHead(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

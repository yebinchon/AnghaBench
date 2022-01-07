; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_DebugMalloc.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_DebugMalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64 }

@.str = private unnamed_addr constant [33 x i8] c"malloc requested with zero bytes\00", align 1
@TotalMemory = common dso_local global i64 0, align 8
@MaxAllocated = common dso_local global i64 0, align 8
@SingleHit = common dso_local global i64 0, align 8
@SIZE_OF_MEM_HEADER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i64)* @DebugMalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @DebugMalloc(i32 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp sle i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 @Die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @TotalMemory, align 8
  %14 = add nsw i64 %13, %12
  store i64 %14, i64* @TotalMemory, align 8
  %15 = load i64, i64* @TotalMemory, align 8
  %16 = load i64, i64* @MaxAllocated, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i64, i64* @TotalMemory, align 8
  store i64 %19, i64* @MaxAllocated, align 8
  br label %20

20:                                               ; preds = %18, %11
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @SingleHit, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  store i64 %25, i64* @SingleHit, align 8
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @SIZE_OF_MEM_HEADER, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i64 @malloc(i64 %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %31, %struct.TYPE_2__** %6, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %33 = icmp eq %struct.TYPE_2__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i8* null, i8** %3, align 8
  br label %49

35:                                               ; preds = %26
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %45 = bitcast %struct.TYPE_2__* %44 to i32*
  %46 = load i64, i64* @SIZE_OF_MEM_HEADER, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = bitcast i32* %47 to i8*
  store i8* %48, i8** %3, align 8
  br label %49

49:                                               ; preds = %35, %34
  %50 = load i8*, i8** %3, align 8
  ret i8* %50
}

declare dso_local i32 @Die(i8*) #1

declare dso_local i64 @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

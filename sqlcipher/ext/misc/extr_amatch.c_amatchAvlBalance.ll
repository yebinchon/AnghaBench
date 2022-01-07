; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_amatch.c_amatchAvlBalance.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_amatch.c_amatchAvlBalance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_10__*)* @amatchAvlBalance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @amatchAvlBalance(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__**, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %3, align 8
  br label %8

8:                                                ; preds = %66, %1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = icmp ne %struct.TYPE_10__* %9, null
  br i1 %10, label %11, label %71

11:                                               ; preds = %8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = call i32 @amatchAvlRecomputeHeight(%struct.TYPE_10__* %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %16, 2
  br i1 %17, label %18, label %39

18:                                               ; preds = %11
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %5, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = call i8* @amatchAvlRotateAfter(%struct.TYPE_10__* %27)
  %29 = bitcast i8* %28 to %struct.TYPE_10__*
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 3
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %31, align 8
  br label %32

32:                                               ; preds = %26, %18
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %34 = call %struct.TYPE_10__** @amatchAvlFromPtr(%struct.TYPE_10__* %33, %struct.TYPE_10__** %2)
  store %struct.TYPE_10__** %34, %struct.TYPE_10__*** %4, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %36 = call i8* @amatchAvlRotateBefore(%struct.TYPE_10__* %35)
  %37 = bitcast i8* %36 to %struct.TYPE_10__*
  %38 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %38, align 8
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %2, align 8
  br label %66

39:                                               ; preds = %11
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sle i32 %42, -2
  br i1 %43, label %44, label %65

44:                                               ; preds = %39
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %6, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = call i8* @amatchAvlRotateBefore(%struct.TYPE_10__* %53)
  %55 = bitcast i8* %54 to %struct.TYPE_10__*
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %57, align 8
  br label %58

58:                                               ; preds = %52, %44
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %60 = call %struct.TYPE_10__** @amatchAvlFromPtr(%struct.TYPE_10__* %59, %struct.TYPE_10__** %2)
  store %struct.TYPE_10__** %60, %struct.TYPE_10__*** %4, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %62 = call i8* @amatchAvlRotateAfter(%struct.TYPE_10__* %61)
  %63 = bitcast i8* %62 to %struct.TYPE_10__*
  %64 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %64, align 8
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %2, align 8
  br label %65

65:                                               ; preds = %58, %39
  br label %66

66:                                               ; preds = %65, %32
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  store %struct.TYPE_10__* %67, %struct.TYPE_10__** %3, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %2, align 8
  br label %8

71:                                               ; preds = %8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %72
}

declare dso_local i32 @amatchAvlRecomputeHeight(%struct.TYPE_10__*) #1

declare dso_local i8* @amatchAvlRotateAfter(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__** @amatchAvlFromPtr(%struct.TYPE_10__*, %struct.TYPE_10__**) #1

declare dso_local i8* @amatchAvlRotateBefore(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

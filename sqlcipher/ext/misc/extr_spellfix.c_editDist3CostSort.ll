; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_editDist3CostSort.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_editDist3CostSort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_7__*)* @editDist3CostSort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @editDist3CostSort(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca [60 x %struct.TYPE_7__*], align 16
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds [60 x %struct.TYPE_7__*], [60 x %struct.TYPE_7__*]* %3, i64 0, i64 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 16
  %8 = getelementptr inbounds [60 x %struct.TYPE_7__*], [60 x %struct.TYPE_7__*]* %3, i64 0, i64 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  br label %9

9:                                                ; preds = %52, %1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %53

12:                                               ; preds = %9
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %4, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %2, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %18, align 8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %35, %12
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [60 x %struct.TYPE_7__*], [60 x %struct.TYPE_7__*]* %3, i64 0, i64 %21
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [60 x %struct.TYPE_7__*], [60 x %struct.TYPE_7__*]* %3, i64 0, i64 %27
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = call %struct.TYPE_7__* @editDist3CostMerge(%struct.TYPE_7__* %29, %struct.TYPE_7__* %30)
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [60 x %struct.TYPE_7__*], [60 x %struct.TYPE_7__*]* %3, i64 0, i64 %33
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %34, align 8
  br label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %19

38:                                               ; preds = %19
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [60 x %struct.TYPE_7__*], [60 x %struct.TYPE_7__*]* %3, i64 0, i64 %41
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [60 x %struct.TYPE_7__*], [60 x %struct.TYPE_7__*]* %3, i64 0, i64 %50
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %51, align 8
  br label %52

52:                                               ; preds = %46, %38
  br label %9

53:                                               ; preds = %9
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %72, %53
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [60 x %struct.TYPE_7__*], [60 x %struct.TYPE_7__*]* %3, i64 0, i64 %60
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = icmp ne %struct.TYPE_7__* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [60 x %struct.TYPE_7__*], [60 x %struct.TYPE_7__*]* %3, i64 0, i64 %67
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = call %struct.TYPE_7__* @editDist3CostMerge(%struct.TYPE_7__* %65, %struct.TYPE_7__* %69)
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %4, align 8
  br label %71

71:                                               ; preds = %64, %58
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %54

75:                                               ; preds = %54
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %76
}

declare dso_local %struct.TYPE_7__* @editDist3CostMerge(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

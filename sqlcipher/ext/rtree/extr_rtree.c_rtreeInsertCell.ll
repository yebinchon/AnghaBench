; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeInsertCell.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeInsertCell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_27__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_27__*, i32)* @rtreeInsertCell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtreeInsertCell(%struct.TYPE_28__* %0, %struct.TYPE_26__* %1, %struct.TYPE_27__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @SQLITE_OK, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %4
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_26__* @nodeHashLookup(%struct.TYPE_28__* %15, i32 %18)
  store %struct.TYPE_26__* %19, %struct.TYPE_26__** %10, align 8
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %21 = icmp ne %struct.TYPE_26__* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %14
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %27 = call i32 @nodeRelease(%struct.TYPE_28__* %23, %struct.TYPE_26__* %26)
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %29 = call i32 @nodeReference(%struct.TYPE_26__* %28)
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 1
  store %struct.TYPE_26__* %30, %struct.TYPE_26__** %32, align 8
  br label %33

33:                                               ; preds = %22, %14
  br label %34

34:                                               ; preds = %33, %4
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %38 = call i64 @nodeInsertCell(%struct.TYPE_28__* %35, %struct.TYPE_26__* %36, %struct.TYPE_27__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sle i32 %41, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %57

51:                                               ; preds = %46, %40
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @SplitNode(%struct.TYPE_28__* %52, %struct.TYPE_26__* %53, %struct.TYPE_27__* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  br label %66

57:                                               ; preds = %46
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @Reinsert(%struct.TYPE_28__* %61, %struct.TYPE_26__* %62, %struct.TYPE_27__* %63, i32 %64)
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %57, %51
  br label %98

67:                                               ; preds = %34
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %71 = call i32 @AdjustTree(%struct.TYPE_28__* %68, %struct.TYPE_26__* %69, %struct.TYPE_27__* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @SQLITE_OK, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %67
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @rowidWrite(%struct.TYPE_28__* %79, i32 %82, i32 %85)
  store i32 %86, i32* %9, align 4
  br label %96

87:                                               ; preds = %75
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @parentWrite(%struct.TYPE_28__* %88, i32 %91, i32 %94)
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %87, %78
  br label %97

97:                                               ; preds = %96, %67
  br label %98

98:                                               ; preds = %97, %66
  %99 = load i32, i32* %9, align 4
  ret i32 %99
}

declare dso_local %struct.TYPE_26__* @nodeHashLookup(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @nodeRelease(%struct.TYPE_28__*, %struct.TYPE_26__*) #1

declare dso_local i32 @nodeReference(%struct.TYPE_26__*) #1

declare dso_local i64 @nodeInsertCell(%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i32 @SplitNode(%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @Reinsert(%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @AdjustTree(%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i32 @rowidWrite(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @parentWrite(%struct.TYPE_28__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

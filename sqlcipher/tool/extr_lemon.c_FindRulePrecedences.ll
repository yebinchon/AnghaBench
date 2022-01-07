; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_FindRulePrecedences.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_FindRulePrecedences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lemon = type { %struct.rule* }
%struct.rule = type { i64, i32, %struct.symbol**, %struct.rule* }
%struct.symbol = type { i64, i32, i64, %struct.symbol** }

@MULTITERMINAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FindRulePrecedences(%struct.lemon* %0) #0 {
  %2 = alloca %struct.lemon*, align 8
  %3 = alloca %struct.rule*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.symbol*, align 8
  store %struct.lemon* %0, %struct.lemon** %2, align 8
  %7 = load %struct.lemon*, %struct.lemon** %2, align 8
  %8 = getelementptr inbounds %struct.lemon, %struct.lemon* %7, i32 0, i32 0
  %9 = load %struct.rule*, %struct.rule** %8, align 8
  store %struct.rule* %9, %struct.rule** %3, align 8
  br label %10

10:                                               ; preds = %102, %1
  %11 = load %struct.rule*, %struct.rule** %3, align 8
  %12 = icmp ne %struct.rule* %11, null
  br i1 %12, label %13, label %106

13:                                               ; preds = %10
  %14 = load %struct.rule*, %struct.rule** %3, align 8
  %15 = getelementptr inbounds %struct.rule, %struct.rule* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %101

18:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %97, %18
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.rule*, %struct.rule** %3, align 8
  %22 = getelementptr inbounds %struct.rule, %struct.rule* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.rule*, %struct.rule** %3, align 8
  %27 = getelementptr inbounds %struct.rule, %struct.rule* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br label %30

30:                                               ; preds = %25, %19
  %31 = phi i1 [ false, %19 ], [ %29, %25 ]
  br i1 %31, label %32, label %100

32:                                               ; preds = %30
  %33 = load %struct.rule*, %struct.rule** %3, align 8
  %34 = getelementptr inbounds %struct.rule, %struct.rule* %33, i32 0, i32 2
  %35 = load %struct.symbol**, %struct.symbol*** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.symbol*, %struct.symbol** %35, i64 %37
  %39 = load %struct.symbol*, %struct.symbol** %38, align 8
  store %struct.symbol* %39, %struct.symbol** %6, align 8
  %40 = load %struct.symbol*, %struct.symbol** %6, align 8
  %41 = getelementptr inbounds %struct.symbol, %struct.symbol* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MULTITERMINAL, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %79

45:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %75, %45
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.symbol*, %struct.symbol** %6, align 8
  %49 = getelementptr inbounds %struct.symbol, %struct.symbol* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %78

52:                                               ; preds = %46
  %53 = load %struct.symbol*, %struct.symbol** %6, align 8
  %54 = getelementptr inbounds %struct.symbol, %struct.symbol* %53, i32 0, i32 3
  %55 = load %struct.symbol**, %struct.symbol*** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.symbol*, %struct.symbol** %55, i64 %57
  %59 = load %struct.symbol*, %struct.symbol** %58, align 8
  %60 = getelementptr inbounds %struct.symbol, %struct.symbol* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp sge i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %52
  %64 = load %struct.symbol*, %struct.symbol** %6, align 8
  %65 = getelementptr inbounds %struct.symbol, %struct.symbol* %64, i32 0, i32 3
  %66 = load %struct.symbol**, %struct.symbol*** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.symbol*, %struct.symbol** %66, i64 %68
  %70 = load %struct.symbol*, %struct.symbol** %69, align 8
  %71 = ptrtoint %struct.symbol* %70 to i64
  %72 = load %struct.rule*, %struct.rule** %3, align 8
  %73 = getelementptr inbounds %struct.rule, %struct.rule* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %78

74:                                               ; preds = %52
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %46

78:                                               ; preds = %63, %46
  br label %96

79:                                               ; preds = %32
  %80 = load %struct.symbol*, %struct.symbol** %6, align 8
  %81 = getelementptr inbounds %struct.symbol, %struct.symbol* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp sge i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %79
  %85 = load %struct.rule*, %struct.rule** %3, align 8
  %86 = getelementptr inbounds %struct.rule, %struct.rule* %85, i32 0, i32 2
  %87 = load %struct.symbol**, %struct.symbol*** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.symbol*, %struct.symbol** %87, i64 %89
  %91 = load %struct.symbol*, %struct.symbol** %90, align 8
  %92 = ptrtoint %struct.symbol* %91 to i64
  %93 = load %struct.rule*, %struct.rule** %3, align 8
  %94 = getelementptr inbounds %struct.rule, %struct.rule* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %84, %79
  br label %96

96:                                               ; preds = %95, %78
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %19

100:                                              ; preds = %30
  br label %101

101:                                              ; preds = %100, %13
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.rule*, %struct.rule** %3, align 8
  %104 = getelementptr inbounds %struct.rule, %struct.rule* %103, i32 0, i32 3
  %105 = load %struct.rule*, %struct.rule** %104, align 8
  store %struct.rule* %105, %struct.rule** %3, align 8
  br label %10

106:                                              ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdump.c_snode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdump.c_snode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, double, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32 }

@AST_LIST = common dso_local global i64 0, align 8
@astname = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c" %.9g\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_6__*)* @snode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snode(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca void (i32, %struct.TYPE_6__*)*, align 8
  %6 = alloca void (i32, %struct.TYPE_6__*)*, align 8
  %7 = alloca void (i32, %struct.TYPE_6__*)*, align 8
  %8 = alloca void (i32, %struct.TYPE_6__*)*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store void (i32, %struct.TYPE_6__*)* @snode, void (i32, %struct.TYPE_6__*)** %5, align 8
  store void (i32, %struct.TYPE_6__*)* @snode, void (i32, %struct.TYPE_6__*)** %6, align 8
  store void (i32, %struct.TYPE_6__*)* @snode, void (i32, %struct.TYPE_6__*)** %7, align 8
  store void (i32, %struct.TYPE_6__*)* @snode, void (i32, %struct.TYPE_6__*)** %8, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %129

12:                                               ; preds = %2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AST_LIST, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = call i32 @slist(i32 %19, %struct.TYPE_6__* %20)
  br label %129

22:                                               ; preds = %12
  %23 = call i32 @pc(i8 signext 40)
  %24 = load i32*, i32** @astname, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ps(i32 %29)
  %31 = call i32 @pc(i8 signext 58)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pn(i32 %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  switch i64 %38, label %39 [
    i64 139, label %40
    i64 137, label %46
    i64 132, label %52
    i64 133, label %58
    i64 136, label %67
    i64 131, label %72
    i64 140, label %73
    i64 138, label %73
    i64 135, label %74
    i64 134, label %75
    i64 128, label %76
    i64 130, label %77
    i64 129, label %78
  ]

39:                                               ; preds = %22
  br label %79

40:                                               ; preds = %22
  %41 = call i32 @pc(i8 signext 32)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ps(i32 %44)
  br label %79

46:                                               ; preds = %22
  %47 = call i32 @pc(i8 signext 32)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ps(i32 %50)
  br label %79

52:                                               ; preds = %22
  %53 = call i32 @pc(i8 signext 32)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pstr(i32 %56)
  br label %79

58:                                               ; preds = %22
  %59 = call i32 @pc(i8 signext 32)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load double, double* %64, align 8
  %66 = call i32 @pregexp(i32 %62, double %65)
  br label %79

67:                                               ; preds = %22
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load double, double* %69, align 8
  %71 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %70)
  br label %79

72:                                               ; preds = %22
  store void (i32, %struct.TYPE_6__*)* @sblock, void (i32, %struct.TYPE_6__*)** %5, align 8
  br label %79

73:                                               ; preds = %22, %22
  store void (i32, %struct.TYPE_6__*)* @sblock, void (i32, %struct.TYPE_6__*)** %7, align 8
  br label %79

74:                                               ; preds = %22
  store void (i32, %struct.TYPE_6__*)* @sblock, void (i32, %struct.TYPE_6__*)** %7, align 8
  br label %79

75:                                               ; preds = %22
  store void (i32, %struct.TYPE_6__*)* @sblock, void (i32, %struct.TYPE_6__*)** %7, align 8
  br label %79

76:                                               ; preds = %22
  store void (i32, %struct.TYPE_6__*)* @sblock, void (i32, %struct.TYPE_6__*)** %6, align 8
  br label %79

77:                                               ; preds = %22
  store void (i32, %struct.TYPE_6__*)* @sblock, void (i32, %struct.TYPE_6__*)** %6, align 8
  br label %79

78:                                               ; preds = %22
  store void (i32, %struct.TYPE_6__*)* @sblock, void (i32, %struct.TYPE_6__*)** %5, align 8
  br label %79

79:                                               ; preds = %78, %77, %76, %75, %74, %73, %72, %67, %58, %52, %46, %40, %39
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 5
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = icmp ne %struct.TYPE_6__* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = call i32 @pc(i8 signext 32)
  %86 = load void (i32, %struct.TYPE_6__*)*, void (i32, %struct.TYPE_6__*)** %5, align 8
  %87 = load i32, i32* %3, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 5
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  call void %86(i32 %87, %struct.TYPE_6__* %90)
  br label %91

91:                                               ; preds = %84, %79
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = icmp ne %struct.TYPE_6__* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = call i32 @pc(i8 signext 32)
  %98 = load void (i32, %struct.TYPE_6__*)*, void (i32, %struct.TYPE_6__*)** %6, align 8
  %99 = load i32, i32* %3, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  call void %98(i32 %99, %struct.TYPE_6__* %102)
  br label %103

103:                                              ; preds = %96, %91
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = icmp ne %struct.TYPE_6__* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = call i32 @pc(i8 signext 32)
  %110 = load void (i32, %struct.TYPE_6__*)*, void (i32, %struct.TYPE_6__*)** %7, align 8
  %111 = load i32, i32* %3, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  call void %110(i32 %111, %struct.TYPE_6__* %114)
  br label %115

115:                                              ; preds = %108, %103
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = icmp ne %struct.TYPE_6__* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = call i32 @pc(i8 signext 32)
  %122 = load void (i32, %struct.TYPE_6__*)*, void (i32, %struct.TYPE_6__*)** %8, align 8
  %123 = load i32, i32* %3, align 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  call void %122(i32 %123, %struct.TYPE_6__* %126)
  br label %127

127:                                              ; preds = %120, %115
  %128 = call i32 @pc(i8 signext 41)
  br label %129

129:                                              ; preds = %127, %18, %11
  ret void
}

declare dso_local i32 @slist(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @pc(i8 signext) #1

declare dso_local i32 @ps(i32) #1

declare dso_local i32 @pn(i32) #1

declare dso_local i32 @pstr(i32) #1

declare dso_local i32 @pregexp(i32, double) #1

declare dso_local i32 @printf(i8*, double) #1

declare dso_local void @sblock(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

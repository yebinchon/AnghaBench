; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_regexp.c_count.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_regexp.c_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cstate = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.TYPE_3__*, %struct.TYPE_3__* }

@REPINF = common dso_local global i32 0, align 4
@MAXPROG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"program too large\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cstate*, %struct.TYPE_3__*)* @count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count(%struct.cstate* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cstate*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cstate* %0, %struct.cstate** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %120

12:                                               ; preds = %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %16 [
    i32 132, label %17
    i32 133, label %29
    i32 128, label %42
    i32 130, label %99
    i32 129, label %106
    i32 131, label %113
  ]

16:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %120

17:                                               ; preds = %12
  %18 = load %struct.cstate*, %struct.cstate** %4, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = call i32 @count(%struct.cstate* %18, %struct.TYPE_3__* %21)
  %23 = load %struct.cstate*, %struct.cstate** %4, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = call i32 @count(%struct.cstate* %23, %struct.TYPE_3__* %26)
  %28 = add nsw i32 %22, %27
  store i32 %28, i32* %3, align 4
  br label %120

29:                                               ; preds = %12
  %30 = load %struct.cstate*, %struct.cstate** %4, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = call i32 @count(%struct.cstate* %30, %struct.TYPE_3__* %33)
  %35 = load %struct.cstate*, %struct.cstate** %4, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = call i32 @count(%struct.cstate* %35, %struct.TYPE_3__* %38)
  %40 = add nsw i32 %34, %39
  %41 = add nsw i32 %40, 2
  store i32 %41, i32* %3, align 4
  br label %120

42:                                               ; preds = %12
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %6, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %42
  %53 = load %struct.cstate*, %struct.cstate** %4, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = call i32 @count(%struct.cstate* %53, %struct.TYPE_3__* %56)
  %58 = load i32, i32* %6, align 4
  %59 = mul nsw i32 %57, %58
  store i32 %59, i32* %8, align 4
  br label %87

60:                                               ; preds = %42
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @REPINF, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load %struct.cstate*, %struct.cstate** %4, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = call i32 @count(%struct.cstate* %65, %struct.TYPE_3__* %68)
  %70 = load i32, i32* %7, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %6, align 4
  %74 = sub nsw i32 %72, %73
  %75 = add nsw i32 %71, %74
  store i32 %75, i32* %8, align 4
  br label %86

76:                                               ; preds = %60
  %77 = load %struct.cstate*, %struct.cstate** %4, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = call i32 @count(%struct.cstate* %77, %struct.TYPE_3__* %80)
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  %84 = mul nsw i32 %81, %83
  %85 = add nsw i32 %84, 2
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %76, %64
  br label %87

87:                                               ; preds = %86, %52
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @MAXPROG, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90, %87
  %95 = load %struct.cstate*, %struct.cstate** %4, align 8
  %96 = call i32 @die(%struct.cstate* %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %90
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %3, align 4
  br label %120

99:                                               ; preds = %12
  %100 = load %struct.cstate*, %struct.cstate** %4, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = call i32 @count(%struct.cstate* %100, %struct.TYPE_3__* %103)
  %105 = add nsw i32 %104, 2
  store i32 %105, i32* %3, align 4
  br label %120

106:                                              ; preds = %12
  %107 = load %struct.cstate*, %struct.cstate** %4, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = call i32 @count(%struct.cstate* %107, %struct.TYPE_3__* %110)
  %112 = add nsw i32 %111, 2
  store i32 %112, i32* %3, align 4
  br label %120

113:                                              ; preds = %12
  %114 = load %struct.cstate*, %struct.cstate** %4, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = call i32 @count(%struct.cstate* %114, %struct.TYPE_3__* %117)
  %119 = add nsw i32 %118, 2
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %113, %106, %99, %97, %29, %17, %16, %11
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @die(%struct.cstate*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

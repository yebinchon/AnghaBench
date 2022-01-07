; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprCheckPoslists.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprCheckPoslists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_10__**, %struct.TYPE_9__*, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__** }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@FTS5_NOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @fts5ExprCheckPoslists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5ExprCheckPoslists(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %81 [
    i32 128, label %17
    i32 129, label %17
    i32 131, label %30
    i32 130, label %56
  ]

17:                                               ; preds = %2, %2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %22, i64 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 0
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %111

30:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %52, %30
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %31
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %40, i64 %42
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @fts5ExprCheckPoslists(%struct.TYPE_10__* %44, i32 %45)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = call i32 @fts5ExprClearPoslists(%struct.TYPE_10__* %49)
  store i32 0, i32* %3, align 4
  br label %111

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %31

55:                                               ; preds = %31
  br label %110

56:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %76, %56
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %57
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %66, i64 %68
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @fts5ExprCheckPoslists(%struct.TYPE_10__* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  store i32 1, i32* %8, align 4
  br label %75

75:                                               ; preds = %74, %63
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %57

79:                                               ; preds = %57
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %111

81:                                               ; preds = %2
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @FTS5_NOT, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %91, i64 0
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @fts5ExprCheckPoslists(%struct.TYPE_10__* %93, i32 %94)
  %96 = icmp eq i32 0, %95
  br i1 %96, label %106, label %97

97:                                               ; preds = %81
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %100, i64 1
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @fts5ExprCheckPoslists(%struct.TYPE_10__* %102, i32 %103)
  %105 = icmp ne i32 0, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %97, %81
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %108 = call i32 @fts5ExprClearPoslists(%struct.TYPE_10__* %107)
  store i32 0, i32* %3, align 4
  br label %111

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %109, %55
  store i32 1, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %106, %79, %48, %17
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @fts5ExprClearPoslists(%struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprNodeFirst.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprNodeFirst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, i32, %struct.TYPE_7__**, i32, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5_NOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @fts5ExprNodeFirst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5ExprNodeFirst(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %9 = load i32, i32* @SQLITE_OK, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 6
  store i64 0, i64* %13, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = call i64 @Fts5NodeIsString(%struct.TYPE_7__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = call i32 @fts5ExprNearInitAll(i32* %18, %struct.TYPE_7__* %19)
  store i32 %20, i32* %5, align 4
  br label %129

21:                                               ; preds = %2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %128

29:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %77, %29
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @SQLITE_OK, align 4
  %39 = icmp eq i32 %37, %38
  br label %40

40:                                               ; preds = %36, %30
  %41 = phi i1 [ false, %30 ], [ %39, %36 ]
  br i1 %41, label %42, label %80

42:                                               ; preds = %40
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %45, i64 %47
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %8, align 8
  %50 = load i32*, i32** %3, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %53, i64 %55
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = call i32 @fts5ExprNodeFirst(i32* %50, %struct.TYPE_7__* %57)
  store i32 %58, i32* %5, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %42
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 1
  br label %68

68:                                               ; preds = %63, %42
  %69 = phi i1 [ true, %42 ], [ %67, %63 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %30

80:                                               ; preds = %40
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %83, i64 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %110 [
    i32 129, label %93
    i32 128, label %100
  ]

93:                                               ; preds = %80
  %94 = load i32, i32* %7, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = call i32 @fts5ExprSetEof(%struct.TYPE_7__* %97)
  br label %99

99:                                               ; preds = %96, %93
  br label %127

100:                                              ; preds = %80
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %108 = call i32 @fts5ExprSetEof(%struct.TYPE_7__* %107)
  br label %109

109:                                              ; preds = %106, %100
  br label %127

110:                                              ; preds = %80
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @FTS5_NOT, align 4
  %115 = icmp eq i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 4
  %120 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %120, i64 0
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %110, %109, %99
  br label %128

128:                                              ; preds = %127, %26
  br label %129

129:                                              ; preds = %128, %17
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @SQLITE_OK, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i32*, i32** %3, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %136 = call i32 @fts5ExprNodeTest(i32* %134, %struct.TYPE_7__* %135)
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %133, %129
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i64 @Fts5NodeIsString(%struct.TYPE_7__*) #1

declare dso_local i32 @fts5ExprNearInitAll(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts5ExprSetEof(%struct.TYPE_7__*) #1

declare dso_local i32 @fts5ExprNodeTest(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

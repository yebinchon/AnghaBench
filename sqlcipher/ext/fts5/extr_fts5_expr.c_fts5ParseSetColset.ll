; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ParseSetColset.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ParseSetColset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_14__**, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }

@SQLITE_OK = common dso_local global i64 0, align 8
@FTS5_TERM = common dso_local global i64 0, align 8
@FTS5_STRING = common dso_local global i64 0, align 8
@FTS5_AND = common dso_local global i64 0, align 8
@FTS5_OR = common dso_local global i64 0, align 8
@FTS5_NOT = common dso_local global i64 0, align 8
@FTS5_EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_16__*, %struct.TYPE_16__**)* @fts5ParseSetColset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5ParseSetColset(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, %struct.TYPE_16__* %2, %struct.TYPE_16__** %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__**, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__** %3, %struct.TYPE_16__*** %8, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SQLITE_OK, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %149

16:                                               ; preds = %4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FTS5_TERM, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %52, label %22

22:                                               ; preds = %16
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FTS5_STRING, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %52, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FTS5_AND, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %52, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FTS5_OR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @FTS5_NOT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @FTS5_EOF, align 8
  %51 = icmp eq i64 %49, %50
  br label %52

52:                                               ; preds = %46, %40, %34, %28, %22, %16
  %53 = phi i1 [ true, %40 ], [ true, %34 ], [ true, %28 ], [ true, %22 ], [ true, %16 ], [ %51, %46 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @FTS5_STRING, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %52
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @FTS5_TERM, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %112

67:                                               ; preds = %61, %52
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  store %struct.TYPE_15__* %70, %struct.TYPE_15__** %9, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = icmp ne %struct.TYPE_16__* %73, null
  br i1 %74, label %75, label %94

75:                                               ; preds = %67
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %77, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %80 = call i32 @fts5MergeColset(%struct.TYPE_16__* %78, %struct.TYPE_16__* %79)
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %75
  %88 = load i64, i64* @FTS5_EOF, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 3
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %87, %75
  br label %111

94:                                               ; preds = %67
  %95 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %8, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = icmp ne %struct.TYPE_16__* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  store %struct.TYPE_16__* %99, %struct.TYPE_16__** %101, align 8
  %102 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %8, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %102, align 8
  br label %110

103:                                              ; preds = %94
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %107 = call %struct.TYPE_16__* @fts5CloneColset(i64* %105, %struct.TYPE_16__* %106)
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  store %struct.TYPE_16__* %107, %struct.TYPE_16__** %109, align 8
  br label %110

110:                                              ; preds = %103, %98
  br label %111

111:                                              ; preds = %110, %93
  br label %148

112:                                              ; preds = %61
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @FTS5_EOF, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %123, label %118

118:                                              ; preds = %112
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 0
  br label %123

123:                                              ; preds = %118, %112
  %124 = phi i1 [ true, %112 ], [ %122, %118 ]
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  store i32 0, i32* %10, align 4
  br label %127

127:                                              ; preds = %144, %123
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %147

133:                                              ; preds = %127
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %137, i64 %139
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %143 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %8, align 8
  call void @fts5ParseSetColset(%struct.TYPE_13__* %134, %struct.TYPE_14__* %141, %struct.TYPE_16__* %142, %struct.TYPE_16__** %143)
  br label %144

144:                                              ; preds = %133
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %10, align 4
  br label %127

147:                                              ; preds = %127
  br label %148

148:                                              ; preds = %147, %111
  br label %149

149:                                              ; preds = %148, %4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts5MergeColset(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @fts5CloneColset(i64*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

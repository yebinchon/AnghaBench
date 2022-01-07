; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_delete.c_sqlite3GenerateRowIndexDelete.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_delete.c_sqlite3GenerateRowIndexDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i64, i32, %struct.TYPE_15__* }

@.str = private unnamed_addr constant [20 x i8] c"GenRowIdxDel for %s\00", align 1
@OP_IdxDelete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3GenerateRowIndexDelete(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 -1, i32* %14, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %17, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %18, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %24 = call i64 @HasRowid(%struct.TYPE_13__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  br label %30

27:                                               ; preds = %6
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %29 = call %struct.TYPE_15__* @sqlite3PrimaryKeyIndex(%struct.TYPE_13__* %28)
  br label %30

30:                                               ; preds = %27, %26
  %31 = phi %struct.TYPE_15__* [ null, %26 ], [ %29, %27 ]
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %19, align 8
  store i32 0, i32* %13, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %16, align 8
  br label %35

35:                                               ; preds = %113, %30
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %37 = icmp ne %struct.TYPE_15__* %36, null
  br i1 %37, label %38, label %119

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %47 = icmp eq %struct.TYPE_15__* %45, %46
  br label %48

48:                                               ; preds = %44, %38
  %49 = phi i1 [ true, %38 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i32*, i32** %11, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %113

62:                                               ; preds = %54, %48
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %65 = icmp eq %struct.TYPE_15__* %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %113

67:                                               ; preds = %62
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %113

74:                                               ; preds = %67
  %75 = load i32*, i32** %18, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i32*
  %81 = call i32 @VdbeModuleComment(i32* %80)
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @sqlite3GenerateIndexKey(%struct.TYPE_14__* %82, %struct.TYPE_15__* %83, i32 %84, i32 0, i32 1, i32* %15, %struct.TYPE_15__* %85, i32 %86)
  store i32 %87, i32* %14, align 4
  %88 = load i32*, i32** %18, align 8
  %89 = load i32, i32* @OP_IdxDelete, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32, i32* %14, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %74
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  br label %106

102:                                              ; preds = %74
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  br label %106

106:                                              ; preds = %102, %98
  %107 = phi i32 [ %101, %98 ], [ %105, %102 ]
  %108 = call i32 @sqlite3VdbeAddOp3(i32* %88, i32 %89, i32 %92, i32 %93, i32 %107)
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @sqlite3ResolvePartIdxLabel(%struct.TYPE_14__* %109, i32 %110)
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %112, %struct.TYPE_15__** %17, align 8
  br label %113

113:                                              ; preds = %106, %73, %66, %61
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  store %struct.TYPE_15__* %118, %struct.TYPE_15__** %16, align 8
  br label %35

119:                                              ; preds = %35
  ret void
}

declare dso_local i64 @HasRowid(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_15__* @sqlite3PrimaryKeyIndex(%struct.TYPE_13__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VdbeModuleComment(i32*) #1

declare dso_local i32 @sqlite3GenerateIndexKey(%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32, i32, i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3ResolvePartIdxLabel(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

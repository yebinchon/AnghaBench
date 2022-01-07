; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5WriteFinish.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5WriteFinish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_12__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, %struct.TYPE_12__, %struct.TYPE_12__ }

@SQLITE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_13__*, i32*)* @fts5WriteFinish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5WriteFinish(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 3
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %8, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SQLITE_OK, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %47

16:                                               ; preds = %3
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %19, 1
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 4
  br i1 %27, label %28, label %32

28:                                               ; preds = %16
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = call i32 @fts5WriteFlushLeaf(%struct.TYPE_15__* %29, %struct.TYPE_13__* %30)
  br label %32

32:                                               ; preds = %28, %16
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = call i32 @fts5WriteFlushBtree(%struct.TYPE_15__* %43, %struct.TYPE_13__* %44)
  br label %46

46:                                               ; preds = %42, %32
  br label %47

47:                                               ; preds = %46, %3
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 3
  %50 = call i32 @fts5BufferFree(%struct.TYPE_12__* %49)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 2
  %53 = call i32 @fts5BufferFree(%struct.TYPE_12__* %52)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = call i32 @fts5BufferFree(%struct.TYPE_12__* %55)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 2
  %59 = call i32 @fts5BufferFree(%struct.TYPE_12__* %58)
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %75, %47
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = call i32 @sqlite3Fts5BufferFree(i32* %73)
  br label %75

75:                                               ; preds = %66
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %60

78:                                               ; preds = %60
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = call i32 @sqlite3_free(%struct.TYPE_16__* %81)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts5WriteFlushLeaf(%struct.TYPE_15__*, %struct.TYPE_13__*) #1

declare dso_local i32 @fts5WriteFlushBtree(%struct.TYPE_15__*, %struct.TYPE_13__*) #1

declare dso_local i32 @fts5BufferFree(%struct.TYPE_12__*) #1

declare dso_local i32 @sqlite3Fts5BufferFree(i32*) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

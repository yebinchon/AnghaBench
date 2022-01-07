; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3TermSegReaderCursor.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3TermSegReaderCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@FTS3_SEGCURSOR_ALL = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i8*, i32, i32, %struct.TYPE_16__**)* @fts3TermSegReaderCursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3TermSegReaderCursor(%struct.TYPE_17__* %0, i8* %1, i32 %2, i32 %3, %struct.TYPE_16__** %4) #0 {
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__**, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_16__** %4, %struct.TYPE_16__*** %10, align 8
  %16 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %16, i32* %12, align 4
  %17 = call %struct.TYPE_16__* @sqlite3_malloc(i32 4)
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %11, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %19 = icmp ne %struct.TYPE_16__* %18, null
  br i1 %19, label %20, label %142

20:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %15, align 8
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %121

28:                                               ; preds = %20
  store i32 1, i32* %13, align 4
  br label %29

29:                                               ; preds = %65, %28
  %30 = load i32, i32* %14, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %13, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br label %38

38:                                               ; preds = %32, %29
  %39 = phi i1 [ false, %29 ], [ %37, %32 ]
  br i1 %39, label %40, label %68

40:                                               ; preds = %38
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %40
  store i32 1, i32* %14, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @FTS3_SEGCURSOR_ALL, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %61 = call i32 @sqlite3Fts3SegReaderCursor(%struct.TYPE_15__* %52, i32 %55, i32 %56, i32 %57, i8* %58, i32 %59, i32 0, i32 0, %struct.TYPE_16__* %60)
  store i32 %61, i32* %12, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %51, %40
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %29

68:                                               ; preds = %38
  store i32 1, i32* %13, align 4
  br label %69

69:                                               ; preds = %117, %68
  %70 = load i32, i32* %14, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br label %78

78:                                               ; preds = %72, %69
  %79 = phi i1 [ false, %69 ], [ %77, %72 ]
  br i1 %79, label %80, label %120

80:                                               ; preds = %78
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %80
  store i32 1, i32* %14, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @FTS3_SEGCURSOR_ALL, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %102 = call i32 @sqlite3Fts3SegReaderCursor(%struct.TYPE_15__* %93, i32 %96, i32 %97, i32 %98, i8* %99, i32 %100, i32 1, i32 0, %struct.TYPE_16__* %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @SQLITE_OK, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %92
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %114 = call i32 @fts3SegReaderCursorAddZero(%struct.TYPE_15__* %107, i32 %110, i8* %111, i32 %112, %struct.TYPE_16__* %113)
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %106, %92
  br label %116

116:                                              ; preds = %115, %80
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  br label %69

120:                                              ; preds = %78
  br label %121

121:                                              ; preds = %120, %20
  %122 = load i32, i32* %14, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %121
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @FTS3_SEGCURSOR_ALL, align 4
  %130 = load i8*, i8** %7, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %134 = call i32 @sqlite3Fts3SegReaderCursor(%struct.TYPE_15__* %125, i32 %128, i32 0, i32 %129, i8* %130, i32 %131, i32 %132, i32 0, %struct.TYPE_16__* %133)
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  br label %141

141:                                              ; preds = %124, %121
  br label %142

142:                                              ; preds = %141, %5
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %144 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %10, align 8
  store %struct.TYPE_16__* %143, %struct.TYPE_16__** %144, align 8
  %145 = load i32, i32* %12, align 4
  ret i32 %145
}

declare dso_local %struct.TYPE_16__* @sqlite3_malloc(i32) #1

declare dso_local i32 @sqlite3Fts3SegReaderCursor(%struct.TYPE_15__*, i32, i32, i32, i8*, i32, i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @fts3SegReaderCursorAddZero(%struct.TYPE_15__*, i32, i8*, i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

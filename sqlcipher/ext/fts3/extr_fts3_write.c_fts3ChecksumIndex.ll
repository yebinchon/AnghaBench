; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3ChecksumIndex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3ChecksumIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i64, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS3_SEGMENT_REQUIRE_POS = common dso_local global i32 0, align 4
@FTS3_SEGMENT_IGNORE_EMPTY = common dso_local global i32 0, align 4
@FTS3_SEGMENT_SCAN = common dso_local global i32 0, align 4
@FTS3_SEGCURSOR_ALL = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*)* @fts3ChecksumIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3ChecksumIndex(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %12, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SQLITE_OK, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = call i32 @memset(%struct.TYPE_9__* %9, i32 0, i32 32)
  %26 = call i32 @memset(%struct.TYPE_9__* %10, i32 0, i32 32)
  %27 = load i32, i32* @FTS3_SEGMENT_REQUIRE_POS, align 4
  %28 = load i32, i32* @FTS3_SEGMENT_IGNORE_EMPTY, align 4
  %29 = or i32 %27, %28
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* @FTS3_SEGMENT_SCAN, align 4
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @FTS3_SEGCURSOR_ALL, align 4
  %39 = call i32 @sqlite3Fts3SegReaderCursor(i32* %35, i32 %36, i32 %37, i32 %38, i32 0, i32 0, i32 0, i32 1, %struct.TYPE_9__* %10)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @SQLITE_OK, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %4
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @sqlite3Fts3SegReaderStart(i32* %44, %struct.TYPE_9__* %10, %struct.TYPE_9__* %9)
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %43, %4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @SQLITE_OK, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %127

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %125, %50
  %52 = load i32, i32* @SQLITE_ROW, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @sqlite3Fts3SegReaderStep(i32* %53, %struct.TYPE_9__* %10)
  store i32 %54, i32* %11, align 4
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %126

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %13, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8* %62, i8** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %63 = load i8*, i8** %13, align 8
  %64 = call i32 @sqlite3Fts3GetVarint(i8* %63, i32* %15)
  %65 = load i8*, i8** %13, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %13, align 8
  br label %68

68:                                               ; preds = %124, %56
  %69 = load i8*, i8** %13, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = icmp ult i8* %69, %70
  br i1 %71, label %72, label %125

72:                                               ; preds = %68
  store i32 0, i32* %18, align 4
  %73 = load i8*, i8** %13, align 8
  %74 = call i32 @sqlite3Fts3GetVarint(i8* %73, i32* %18)
  %75 = load i8*, i8** %13, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %13, align 8
  %78 = load i8*, i8** %13, align 8
  %79 = load i8*, i8** %14, align 8
  %80 = icmp ult i8* %78, %79
  br i1 %80, label %81, label %124

81:                                               ; preds = %72
  %82 = load i32, i32* %18, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %18, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %106

87:                                               ; preds = %84, %81
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %88 = load i32, i32* %18, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i8*, i8** %13, align 8
  %92 = call i32 @sqlite3Fts3GetVarint(i8* %91, i32* %16)
  %93 = load i8*, i8** %13, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8* %95, i8** %13, align 8
  br label %105

96:                                               ; preds = %87
  %97 = load i8*, i8** %13, align 8
  %98 = call i32 @sqlite3Fts3GetVarint(i8* %97, i32* %18)
  %99 = load i8*, i8** %13, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8* %101, i8** %13, align 8
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %96, %90
  br label %123

106:                                              ; preds = %84
  %107 = load i32, i32* %18, align 4
  %108 = sub nsw i32 %107, 2
  %109 = load i32, i32* %17, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %17, align 4
  %111 = load i32, i32* %12, align 4
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* %17, align 4
  %121 = call i32 @fts3ChecksumEntry(i32 %113, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120)
  %122 = xor i32 %111, %121
  store i32 %122, i32* %12, align 4
  br label %123

123:                                              ; preds = %106, %105
  br label %124

124:                                              ; preds = %123, %72
  br label %68

125:                                              ; preds = %68
  br label %51

126:                                              ; preds = %51
  br label %127

127:                                              ; preds = %126, %46
  %128 = call i32 @sqlite3Fts3SegReaderFinish(%struct.TYPE_9__* %10)
  %129 = load i32, i32* %11, align 4
  %130 = load i32*, i32** %8, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i32, i32* %12, align 4
  ret i32 %131
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @sqlite3Fts3SegReaderCursor(i32*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3Fts3SegReaderStart(i32*, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3Fts3SegReaderStep(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3Fts3GetVarint(i8*, i32*) #1

declare dso_local i32 @fts3ChecksumEntry(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3Fts3SegReaderFinish(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

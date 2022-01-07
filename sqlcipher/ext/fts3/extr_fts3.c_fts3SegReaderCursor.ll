; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3SegReaderCursor.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3SegReaderCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS3_SEGCURSOR_PENDING = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32, i32, i8*, i32, i32, i32, %struct.TYPE_10__*)* @fts3SegReaderCursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3SegReaderCursor(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6, i32 %7, %struct.TYPE_10__* %8) #0 {
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %18, align 8
  %30 = load i32, i32* @SQLITE_OK, align 4
  store i32 %30, i32* %19, align 4
  store i32* null, i32** %20, align 8
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %9
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %33
  store i32* null, i32** %22, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i8*, i8** %14, align 8
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %17, align 4
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %45, %38
  %49 = phi i1 [ true, %38 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @sqlite3Fts3SegReaderPending(%struct.TYPE_9__* %39, i32 %40, i8* %41, i32 %42, i32 %50, i32** %22)
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* @SQLITE_OK, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load i32*, i32** %22, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %60 = load i32*, i32** %22, align 8
  %61 = call i32 @fts3SegReaderCursorAppend(%struct.TYPE_10__* %59, i32* %60)
  store i32 %61, i32* %19, align 4
  br label %62

62:                                               ; preds = %58, %55, %48
  br label %63

63:                                               ; preds = %62, %33, %9
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @FTS3_SEGCURSOR_PENDING, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %163

67:                                               ; preds = %63
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* @SQLITE_OK, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @sqlite3Fts3AllSegdirs(%struct.TYPE_9__* %72, i32 %73, i32 %74, i32 %75, i32** %20)
  store i32 %76, i32* %19, align 4
  br label %77

77:                                               ; preds = %71, %67
  br label %78

78:                                               ; preds = %158, %77
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* @SQLITE_OK, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i32, i32* @SQLITE_ROW, align 4
  %84 = load i32*, i32** %20, align 8
  %85 = call i32 @sqlite3_step(i32* %84)
  store i32 %85, i32* %19, align 4
  %86 = icmp eq i32 %83, %85
  br label %87

87:                                               ; preds = %82, %78
  %88 = phi i1 [ false, %78 ], [ %86, %82 ]
  br i1 %88, label %89, label %162

89:                                               ; preds = %87
  store i32* null, i32** %23, align 8
  %90 = load i32*, i32** %20, align 8
  %91 = call i32 @sqlite3_column_int64(i32* %90, i32 1)
  store i32 %91, i32* %24, align 4
  %92 = load i32*, i32** %20, align 8
  %93 = call i32 @sqlite3_column_int64(i32* %92, i32 2)
  store i32 %93, i32* %25, align 4
  %94 = load i32*, i32** %20, align 8
  %95 = call i32 @sqlite3_column_int64(i32* %94, i32 3)
  store i32 %95, i32* %26, align 4
  %96 = load i32*, i32** %20, align 8
  %97 = call i32 @sqlite3_column_bytes(i32* %96, i32 4)
  store i32 %97, i32* %27, align 4
  %98 = load i32*, i32** %20, align 8
  %99 = call i8* @sqlite3_column_blob(i32* %98, i32 4)
  store i8* %99, i8** %28, align 8
  %100 = load i32, i32* %24, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %135

102:                                              ; preds = %89
  %103 = load i8*, i8** %14, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %135

105:                                              ; preds = %102
  %106 = load i8*, i8** %28, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %135

108:                                              ; preds = %105
  %109 = load i32, i32* %16, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %113

112:                                              ; preds = %108
  br label %113

113:                                              ; preds = %112, %111
  %114 = phi i32* [ %25, %111 ], [ null, %112 ]
  store i32* %114, i32** %29, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = load i32, i32* %15, align 4
  %118 = load i8*, i8** %28, align 8
  %119 = load i32, i32* %27, align 4
  %120 = load i32*, i32** %29, align 8
  %121 = call i32 @fts3SelectLeaf(%struct.TYPE_9__* %115, i8* %116, i32 %117, i8* %118, i32 %119, i32* %24, i32* %120)
  store i32 %121, i32* %19, align 4
  %122 = load i32, i32* %19, align 4
  %123 = load i32, i32* @SQLITE_OK, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %113
  br label %164

126:                                              ; preds = %113
  %127 = load i32, i32* %16, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i32, i32* %17, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = load i32, i32* %24, align 4
  store i32 %133, i32* %25, align 4
  br label %134

134:                                              ; preds = %132, %129, %126
  br label %135

135:                                              ; preds = %134, %105, %102, %89
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, 1
  %140 = load i32, i32* %16, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load i32, i32* %17, align 4
  %144 = icmp eq i32 %143, 0
  br label %145

145:                                              ; preds = %142, %135
  %146 = phi i1 [ false, %135 ], [ %144, %142 ]
  %147 = zext i1 %146 to i32
  %148 = load i32, i32* %24, align 4
  %149 = load i32, i32* %25, align 4
  %150 = load i32, i32* %26, align 4
  %151 = load i8*, i8** %28, align 8
  %152 = load i32, i32* %27, align 4
  %153 = call i32 @sqlite3Fts3SegReaderNew(i64 %139, i32 %147, i32 %148, i32 %149, i32 %150, i8* %151, i32 %152, i32** %23)
  store i32 %153, i32* %19, align 4
  %154 = load i32, i32* %19, align 4
  %155 = load i32, i32* @SQLITE_OK, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %145
  br label %164

158:                                              ; preds = %145
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %160 = load i32*, i32** %23, align 8
  %161 = call i32 @fts3SegReaderCursorAppend(%struct.TYPE_10__* %159, i32* %160)
  store i32 %161, i32* %19, align 4
  br label %78

162:                                              ; preds = %87
  br label %163

163:                                              ; preds = %162, %63
  br label %164

164:                                              ; preds = %163, %157, %125
  %165 = load i32*, i32** %20, align 8
  %166 = call i32 @sqlite3_reset(i32* %165)
  store i32 %166, i32* %21, align 4
  %167 = load i32, i32* %19, align 4
  %168 = load i32, i32* @SQLITE_DONE, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %164
  %171 = load i32, i32* %21, align 4
  store i32 %171, i32* %19, align 4
  br label %172

172:                                              ; preds = %170, %164
  %173 = load i32, i32* %19, align 4
  ret i32 %173
}

declare dso_local i32 @sqlite3Fts3SegReaderPending(%struct.TYPE_9__*, i32, i8*, i32, i32, i32**) #1

declare dso_local i32 @fts3SegReaderCursorAppend(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @sqlite3Fts3AllSegdirs(%struct.TYPE_9__*, i32, i32, i32, i32**) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_int64(i32*, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i8* @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @fts3SelectLeaf(%struct.TYPE_9__*, i8*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @sqlite3Fts3SegReaderNew(i64, i32, i32, i32, i32, i8*, i32, i32**) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_hash.c_sqlite3Fts5HashQuery.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_hash.c_sqlite3Fts5HashQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__**, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_8__* }

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5HashQuery(%struct.TYPE_9__* %0, i32 %1, i8* %2, i32 %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @fts5HashKey(i32 %23, i32* %25, i32 %26)
  store i32 %27, i32* %14, align 4
  store i8* null, i8** %15, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %29, align 8
  %31 = load i32, i32* %14, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %30, i64 %32
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %16, align 8
  br label %35

35:                                               ; preds = %65, %6
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %37 = icmp ne %struct.TYPE_8__* %36, null
  br i1 %37, label %38, label %69

38:                                               ; preds = %35
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %40 = call i8* @fts5EntryKey(%struct.TYPE_8__* %39)
  store i8* %40, i8** %15, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  %45 = load i8*, i8** %15, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = trunc i64 %46 to i32
  %48 = icmp eq i32 %44, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  %56 = icmp eq i32 %51, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %38
  %58 = load i8*, i8** %15, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i64 @memcmp(i8* %58, i8* %59, i32 %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %69

64:                                               ; preds = %57, %38
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  store %struct.TYPE_8__* %68, %struct.TYPE_8__** %16, align 8
  br label %35

69:                                               ; preds = %63, %35
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %71 = icmp ne %struct.TYPE_8__* %70, null
  br i1 %71, label %72, label %125

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 16, %74
  %76 = add i64 %75, 1
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %17, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %17, align 4
  %82 = sub nsw i32 %80, %81
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %18, align 4
  %85 = add nsw i32 %83, %84
  %86 = add nsw i32 %85, 10
  %87 = call i8* @sqlite3_malloc64(i32 %86)
  %88 = load i8**, i8*** %12, align 8
  store i8* %87, i8** %88, align 8
  %89 = bitcast i8* %87 to i32*
  store i32* %89, i32** %19, align 8
  %90 = load i32*, i32** %19, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %121

92:                                               ; preds = %72
  %93 = load i32*, i32** %19, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %17, align 4
  %96 = sub nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  %99 = bitcast i32* %98 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %99, %struct.TYPE_8__** %20, align 8
  %100 = load i32*, i32** %19, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %105 = bitcast %struct.TYPE_8__* %104 to i32*
  %106 = load i32, i32* %17, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %18, align 4
  %110 = call i32 @memcpy(i32* %103, i32* %108, i32 %109)
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %114 = call i64 @fts5HashAddPoslistSize(%struct.TYPE_9__* %111, %struct.TYPE_8__* %112, %struct.TYPE_8__* %113)
  %115 = load i32, i32* %18, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %18, align 4
  %119 = load i32, i32* %18, align 4
  %120 = load i32*, i32** %13, align 8
  store i32 %119, i32* %120, align 4
  br label %124

121:                                              ; preds = %72
  %122 = load i32*, i32** %13, align 8
  store i32 0, i32* %122, align 4
  %123 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %123, i32* %7, align 4
  br label %130

124:                                              ; preds = %92
  br label %128

125:                                              ; preds = %69
  %126 = load i8**, i8*** %12, align 8
  store i8* null, i8** %126, align 8
  %127 = load i32*, i32** %13, align 8
  store i32 0, i32* %127, align 4
  br label %128

128:                                              ; preds = %125, %124
  %129 = load i32, i32* @SQLITE_OK, align 4
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %128, %121
  %131 = load i32, i32* %7, align 4
  ret i32 %131
}

declare dso_local i32 @fts5HashKey(i32, i32*, i32) #1

declare dso_local i8* @fts5EntryKey(%struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i8* @sqlite3_malloc64(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @fts5HashAddPoslistSize(%struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

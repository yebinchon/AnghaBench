; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_snippet.c_fts3BestSnippet.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_snippet.c_fts3BestSnippet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_12__*, i64, %struct.TYPE_14__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@fts3SnippetFindPositions = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_14__*, i32, i32, i32*, %struct.TYPE_13__*, i32*)* @fts3BestSnippet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3BestSnippet(i32 %0, %struct.TYPE_14__* %1, i32 %2, i32 %3, i32* %4, %struct.TYPE_13__* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_12__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store %struct.TYPE_13__* %5, %struct.TYPE_13__** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 -1, i32* %20, align 4
  %26 = call i32 @memset(%struct.TYPE_12__* %18, i32 0, i32 40)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %28 = call i32 @fts3ExprLoadDoclists(%struct.TYPE_14__* %27, i32* %17, i32 0)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* @SQLITE_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %7
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %8, align 4
  br label %133

34:                                               ; preds = %7
  %35 = load i32, i32* %17, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 40, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* %19, align 4
  %40 = call i64 @sqlite3_malloc64(i32 %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_12__*
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 4
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = icmp ne %struct.TYPE_12__* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %34
  %47 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %47, i32* %8, align 4
  br label %133

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = load i32, i32* %19, align 4
  %52 = call i32 @memset(%struct.TYPE_12__* %50, i32 0, i32 %51)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 6
  store %struct.TYPE_14__* %53, %struct.TYPE_14__** %54, align 8
  %55 = load i32, i32* %11, align 4
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  store i32 %55, i32* %56, align 8
  %57 = load i32, i32* %9, align 4
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %17, align 4
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  store i32 -1, i32* %61, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @fts3SnippetFindPositions, align 4
  %66 = bitcast %struct.TYPE_12__* %18 to i8*
  %67 = call i32 @fts3ExprIterate(i32 %64, i32 %65, i8* %66)
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* @SQLITE_OK, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %128

71:                                               ; preds = %48
  store i32 0, i32* %21, align 4
  br label %72

72:                                               ; preds = %92, %71
  %73 = load i32, i32* %21, align 4
  %74 = load i32, i32* %17, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = load i32, i32* %21, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %76
  %86 = load i32, i32* %21, align 4
  %87 = shl i32 1, %86
  %88 = load i32*, i32** %13, align 8
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %87
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %76
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %21, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %21, align 4
  br label %72

95:                                               ; preds = %72
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %124, %95
  %100 = call i32 @fts3SnippetNextCandidate(%struct.TYPE_12__* %18)
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  br i1 %102, label %103, label %125

103:                                              ; preds = %99
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @fts3SnippetDetails(%struct.TYPE_12__* %18, i32 %104, i32* %22, i32* %23, i32* %24, i32* %25)
  %106 = load i32, i32* %23, align 4
  %107 = icmp sge i32 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load i32, i32* %23, align 4
  %111 = load i32, i32* %20, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %103
  %114 = load i32, i32* %22, align 4
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %25, align 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %24, align 4
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %23, align 4
  store i32 %123, i32* %20, align 4
  br label %124

124:                                              ; preds = %113, %103
  br label %99

125:                                              ; preds = %99
  %126 = load i32, i32* %20, align 4
  %127 = load i32*, i32** %15, align 8
  store i32 %126, i32* %127, align 4
  br label %128

128:                                              ; preds = %125, %48
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 4
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = call i32 @sqlite3_free(%struct.TYPE_12__* %130)
  %132 = load i32, i32* %16, align 4
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %128, %46, %32
  %134 = load i32, i32* %8, align 4
  ret i32 %134
}

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @fts3ExprLoadDoclists(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i64 @sqlite3_malloc64(i32) #1

declare dso_local i32 @fts3ExprIterate(i32, i32, i8*) #1

declare dso_local i32 @fts3SnippetNextCandidate(%struct.TYPE_12__*) #1

declare dso_local i32 @fts3SnippetDetails(%struct.TYPE_12__*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3DeleteTerms.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3DeleteTerms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64* }

@SQL_SELECT_CONTENT_BY_ROWID = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i32*, i32*, i32*)* @fts3DeleteTerms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts3DeleteTerms(i32* %0, %struct.TYPE_7__* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  br label %122

27:                                               ; preds = %5
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = load i32, i32* @SQL_SELECT_CONTENT_BY_ROWID, align 4
  %30 = call i32 @fts3SqlStmt(%struct.TYPE_7__* %28, i32 %29, i32** %12, i32** %8)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @SQLITE_OK, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %116

34:                                               ; preds = %27
  %35 = load i64, i64* @SQLITE_ROW, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = call i64 @sqlite3_step(i32* %36)
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %39, label %113

39:                                               ; preds = %34
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @langidFromSelect(%struct.TYPE_7__* %40, i32* %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @sqlite3_column_int64(i32* %43, i32 0)
  store i32 %44, i32* %15, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @fts3PendingTermsDocid(%struct.TYPE_7__* %45, i32 1, i32 %46, i32 %47)
  store i32 %48, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %49

49:                                               ; preds = %99, %39
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @SQLITE_OK, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sle i32 %54, %57
  br label %59

59:                                               ; preds = %53, %49
  %60 = phi i1 [ false, %49 ], [ %58, %53 ]
  br i1 %60, label %61, label %102

61:                                               ; preds = %59
  %62 = load i32, i32* %13, align 4
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %16, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %98

72:                                               ; preds = %61
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i64 @sqlite3_column_text(i32* %73, i32 %74)
  %76 = inttoptr i64 %75 to i8*
  store i8* %76, i8** %17, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load i8*, i8** %17, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %16, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = call i32 @fts3PendingTermsAdd(%struct.TYPE_7__* %77, i32 %78, i8* %79, i32 -1, i32* %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32*, i32** %12, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call i64 @sqlite3_column_bytes(i32* %85, i32 %86)
  %88 = load i32*, i32** %9, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %87
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %93, align 4
  br label %98

98:                                               ; preds = %72, %61
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4
  br label %49

102:                                              ; preds = %59
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @SQLITE_OK, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i32*, i32** %12, align 8
  %108 = call i32 @sqlite3_reset(i32* %107)
  %109 = load i32, i32* %11, align 4
  %110 = load i32*, i32** %6, align 8
  store i32 %109, i32* %110, align 4
  br label %122

111:                                              ; preds = %102
  %112 = load i32*, i32** %10, align 8
  store i32 1, i32* %112, align 4
  br label %113

113:                                              ; preds = %111, %34
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 @sqlite3_reset(i32* %114)
  store i32 %115, i32* %11, align 4
  br label %119

116:                                              ; preds = %27
  %117 = load i32*, i32** %12, align 8
  %118 = call i32 @sqlite3_reset(i32* %117)
  br label %119

119:                                              ; preds = %116, %113
  %120 = load i32, i32* %11, align 4
  %121 = load i32*, i32** %6, align 8
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %119, %106, %26
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts3SqlStmt(%struct.TYPE_7__*, i32, i32**, i32**) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @langidFromSelect(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @sqlite3_column_int64(i32*, i32) #1

declare dso_local i32 @fts3PendingTermsDocid(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @fts3PendingTermsAdd(%struct.TYPE_7__*, i32, i8*, i32, i32*) #1

declare dso_local i64 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

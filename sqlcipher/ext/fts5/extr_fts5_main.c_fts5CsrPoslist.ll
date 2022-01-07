; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5CsrPoslist.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5CsrPoslist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32*, i32*, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5CSR_REQUIRE_POSLIST = common dso_local global i32 0, align 4
@FTS5_DETAIL_FULL = common dso_local global i64 0, align 8
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, i32**, i32*)* @fts5CsrPoslist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5CsrPoslist(%struct.TYPE_13__* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32* %3, i32** %8, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_11__*
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %9, align 8
  %25 = load i32, i32* @SQLITE_OK, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = icmp eq %struct.TYPE_12__* %28, null
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = load i32, i32* @FTS5CSR_REQUIRE_POSLIST, align 4
  %33 = call i64 @CsrFlagTest(%struct.TYPE_13__* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %108

35:                                               ; preds = %4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @FTS5_DETAIL_FULL, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %104

41:                                               ; preds = %35
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32* @sqlite3Fts5ExprClearPoslists(i32 %44, i32 %45)
  store i32* %46, i32** %12, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %49, %41
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %83, %51
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @SQLITE_OK, align 4
  %61 = icmp eq i32 %59, %60
  br label %62

62:                                               ; preds = %58, %52
  %63 = phi i1 [ false, %52 ], [ %61, %58 ]
  br i1 %63, label %64, label %86

64:                                               ; preds = %62
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %66 = bitcast %struct.TYPE_13__* %65 to i32*
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @fts5ApiColumnText(i32* %66, i32 %67, i8** %15, i32* %14)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @SQLITE_OK, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %64
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load i8*, i8** %15, align 8
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @sqlite3Fts5ExprPopulatePoslists(%struct.TYPE_14__* %73, i32 %76, i32* %77, i32 %78, i8* %79, i32 %80)
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %72, %64
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %52

86:                                               ; preds = %62
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @sqlite3_free(i32* %87)
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = icmp ne %struct.TYPE_12__* %91, null
  br i1 %92, label %93, label %103

93:                                               ; preds = %86
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @sqlite3Fts5ExprCheckPoslists(i32 %96, i32 %101)
  br label %103

103:                                              ; preds = %93, %86
  br label %104

104:                                              ; preds = %103, %35
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %106 = load i32, i32* @FTS5CSR_REQUIRE_POSLIST, align 4
  %107 = call i32 @CsrFlagClear(%struct.TYPE_13__* %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = icmp ne %struct.TYPE_12__* %111, null
  br i1 %112, label %113, label %154

113:                                              ; preds = %108
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @FTS5_DETAIL_FULL, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %154

119:                                              ; preds = %113
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  store %struct.TYPE_12__* %122, %struct.TYPE_12__** %16, align 8
  %123 = load i32, i32* %6, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %135

126:                                              ; preds = %119
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load i32, i32* %133, align 4
  br label %135

135:                                              ; preds = %126, %125
  %136 = phi i32 [ 0, %125 ], [ %134, %126 ]
  store i32 %136, i32* %17, align 4
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %17, align 4
  %145 = sub nsw i32 %143, %144
  %146 = load i32*, i32** %8, align 8
  store i32 %145, i32* %146, align 4
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %17, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32**, i32*** %7, align 8
  store i32* %152, i32** %153, align 8
  br label %162

154:                                              ; preds = %113, %108
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = load i32**, i32*** %7, align 8
  %160 = call i32 @sqlite3Fts5ExprPoslist(i32 %157, i32 %158, i32** %159)
  %161 = load i32*, i32** %8, align 8
  store i32 %160, i32* %161, align 4
  br label %162

162:                                              ; preds = %154, %135
  %163 = load i32, i32* %10, align 4
  ret i32 %163
}

declare dso_local i64 @CsrFlagTest(%struct.TYPE_13__*, i32) #1

declare dso_local i32* @sqlite3Fts5ExprClearPoslists(i32, i32) #1

declare dso_local i32 @fts5ApiColumnText(i32*, i32, i8**, i32*) #1

declare dso_local i32 @sqlite3Fts5ExprPopulatePoslists(%struct.TYPE_14__*, i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @sqlite3_free(i32*) #1

declare dso_local i32 @sqlite3Fts5ExprCheckPoslists(i32, i32) #1

declare dso_local i32 @CsrFlagClear(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @sqlite3Fts5ExprPoslist(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

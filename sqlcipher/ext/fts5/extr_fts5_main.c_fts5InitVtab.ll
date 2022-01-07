; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5InitVtab.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5InitVtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8** }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, i32* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5_BEGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32, i8**, i32**, i8**)* @fts5InitVtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5InitVtab(i32 %0, i32* %1, i8* %2, i32 %3, i8** %4, i32** %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32** %5, i32*** %13, align 8
  store i8** %6, i8*** %14, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %15, align 8
  %22 = load i8**, i8*** %12, align 8
  store i8** %22, i8*** %16, align 8
  %23 = load i32, i32* @SQLITE_OK, align 4
  store i32 %23, i32* %17, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %19, align 8
  %24 = call i64 @sqlite3Fts5MallocZero(i32* %17, i32 32)
  %25 = inttoptr i64 %24 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %19, align 8
  %26 = load i32, i32* %17, align 4
  %27 = load i32, i32* @SQLITE_OK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %7
  %30 = load i32*, i32** %15, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i8**, i8*** %16, align 8
  %34 = load i8**, i8*** %14, align 8
  %35 = call i32 @sqlite3Fts5ConfigParse(i32* %30, i32* %31, i32 %32, i8** %33, %struct.TYPE_12__** %18, i8** %34)
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* @SQLITE_OK, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load i8**, i8*** %14, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39, %29
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %45 = icmp eq %struct.TYPE_12__* %44, null
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi i1 [ true, %39 ], [ %45, %43 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  br label %50

50:                                               ; preds = %46, %7
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* @SQLITE_OK, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %58, align 8
  %59 = load i32*, i32** %15, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  store i32* %59, i32** %61, align 8
  br label %62

62:                                               ; preds = %54, %50
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* @SQLITE_OK, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i8**, i8*** %14, align 8
  %73 = call i32 @sqlite3Fts5IndexOpen(%struct.TYPE_12__* %67, i32 %68, i32* %71, i8** %72)
  store i32 %73, i32* %17, align 4
  br label %74

74:                                               ; preds = %66, %62
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* @SQLITE_OK, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %74
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i8**, i8*** %14, align 8
  %88 = call i32 @sqlite3Fts5StorageOpen(%struct.TYPE_12__* %79, i32 %83, i32 %84, i32* %86, i8** %87)
  store i32 %88, i32* %17, align 4
  br label %89

89:                                               ; preds = %78, %74
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* @SQLITE_OK, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %95 = call i32 @sqlite3Fts5ConfigDeclareVtab(%struct.TYPE_12__* %94)
  store i32 %95, i32* %17, align 4
  br label %96

96:                                               ; preds = %93, %89
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* @SQLITE_OK, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %122

100:                                              ; preds = %96
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i8**, i8*** %102, align 8
  %104 = icmp eq i8** %103, null
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load i8**, i8*** %14, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  store i8** %107, i8*** %109, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @sqlite3Fts5IndexLoadConfig(i32 %113)
  store i32 %114, i32* %17, align 4
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @sqlite3Fts5IndexRollback(i32 %118)
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  store i8** null, i8*** %121, align 8
  br label %122

122:                                              ; preds = %100, %96
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* @SQLITE_OK, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %128 = call i32 @fts5FreeVtab(%struct.TYPE_11__* %127)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %19, align 8
  br label %137

129:                                              ; preds = %122
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %134 = load i32, i32* @FTS5_BEGIN, align 4
  %135 = call i32 @fts5CheckTransactionState(%struct.TYPE_11__* %133, i32 %134, i32 0)
  br label %136

136:                                              ; preds = %132, %129
  br label %137

137:                                              ; preds = %136, %126
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %139 = bitcast %struct.TYPE_11__* %138 to i32*
  %140 = load i32**, i32*** %13, align 8
  store i32* %139, i32** %140, align 8
  %141 = load i32, i32* %17, align 4
  ret i32 %141
}

declare dso_local i64 @sqlite3Fts5MallocZero(i32*, i32) #1

declare dso_local i32 @sqlite3Fts5ConfigParse(i32*, i32*, i32, i8**, %struct.TYPE_12__**, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3Fts5IndexOpen(%struct.TYPE_12__*, i32, i32*, i8**) #1

declare dso_local i32 @sqlite3Fts5StorageOpen(%struct.TYPE_12__*, i32, i32, i32*, i8**) #1

declare dso_local i32 @sqlite3Fts5ConfigDeclareVtab(%struct.TYPE_12__*) #1

declare dso_local i32 @sqlite3Fts5IndexLoadConfig(i32) #1

declare dso_local i32 @sqlite3Fts5IndexRollback(i32) #1

declare dso_local i32 @fts5FreeVtab(%struct.TYPE_11__*) #1

declare dso_local i32 @fts5CheckTransactionState(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

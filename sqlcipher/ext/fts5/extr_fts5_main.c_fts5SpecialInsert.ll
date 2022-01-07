; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5SpecialInsert.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5SpecialInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64, i8* }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"delete-all\00", align 1
@FTS5_CONTENT_NORMAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [80 x i8] c"'delete-all' may only be used with a contentless or external content fts5 table\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"rebuild\00", align 1
@FTS5_CONTENT_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [56 x i8] c"'rebuild' may not be used with a contentless fts5 table\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"optimize\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"integrity-check\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32*)* @fts5SpecialInsert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5SpecialInsert(%struct.TYPE_8__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %7, align 8
  %15 = load i32, i32* @SQLITE_OK, align 4
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @sqlite3_stricmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = icmp eq i64 0, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %3
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FTS5_CONTENT_NORMAL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = call i32 @fts5SetVtabError(%struct.TYPE_8__* %26, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %28, i32* %8, align 4
  br label %34

29:                                               ; preds = %19
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @sqlite3Fts5StorageDeleteAll(i32 %32)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %29, %25
  br label %125

35:                                               ; preds = %3
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @sqlite3_stricmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  %38 = icmp eq i64 0, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @FTS5_CONTENT_NONE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = call i32 @fts5SetVtabError(%struct.TYPE_8__* %46, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %48, i32* %8, align 4
  br label %54

49:                                               ; preds = %39
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @sqlite3Fts5StorageRebuild(i32 %52)
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %49, %45
  br label %124

55:                                               ; preds = %35
  %56 = load i8*, i8** %5, align 8
  %57 = call i64 @sqlite3_stricmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  %58 = icmp eq i64 0, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @sqlite3Fts5StorageOptimize(i32 %62)
  store i32 %63, i32* %8, align 4
  br label %123

64:                                               ; preds = %55
  %65 = load i8*, i8** %5, align 8
  %66 = call i64 @sqlite3_stricmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %65)
  %67 = icmp eq i64 0, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load i32*, i32** %6, align 8
  %70 = call i8* @sqlite3_value_int(i32* %69)
  %71 = ptrtoint i8* %70 to i32
  store i32 %71, i32* %10, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @sqlite3Fts5StorageMerge(i32 %74, i32 %75)
  store i32 %76, i32* %8, align 4
  br label %122

77:                                               ; preds = %64
  %78 = load i8*, i8** %5, align 8
  %79 = call i64 @sqlite3_stricmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %78)
  %80 = icmp eq i64 0, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @sqlite3Fts5StorageIntegrity(i32 %84)
  store i32 %85, i32* %8, align 4
  br label %121

86:                                               ; preds = %77
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @sqlite3Fts5IndexLoadConfig(i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @SQLITE_OK, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %86
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @sqlite3Fts5ConfigSetValue(%struct.TYPE_9__* %99, i8* %100, i32* %101, i32* %9)
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %95, %86
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @SQLITE_OK, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %103
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %111, i32* %8, align 4
  br label %119

112:                                              ; preds = %107
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i8*, i8** %5, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @sqlite3Fts5StorageConfigValue(i32 %115, i8* %116, i32* %117, i32 0)
  store i32 %118, i32* %8, align 4
  br label %119

119:                                              ; preds = %112, %110
  br label %120

120:                                              ; preds = %119, %103
  br label %121

121:                                              ; preds = %120, %81
  br label %122

122:                                              ; preds = %121, %68
  br label %123

123:                                              ; preds = %122, %59
  br label %124

124:                                              ; preds = %123, %54
  br label %125

125:                                              ; preds = %124, %34
  %126 = load i32, i32* %8, align 4
  ret i32 %126
}

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i32 @fts5SetVtabError(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @sqlite3Fts5StorageDeleteAll(i32) #1

declare dso_local i32 @sqlite3Fts5StorageRebuild(i32) #1

declare dso_local i32 @sqlite3Fts5StorageOptimize(i32) #1

declare dso_local i8* @sqlite3_value_int(i32*) #1

declare dso_local i32 @sqlite3Fts5StorageMerge(i32, i32) #1

declare dso_local i32 @sqlite3Fts5StorageIntegrity(i32) #1

declare dso_local i32 @sqlite3Fts5IndexLoadConfig(i32) #1

declare dso_local i32 @sqlite3Fts5ConfigSetValue(%struct.TYPE_9__*, i8*, i32*, i32*) #1

declare dso_local i32 @sqlite3Fts5StorageConfigValue(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_scrub.c_scrubBackupOpenSrc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_scrub.c_scrubBackupOpenSrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_7__*, i32, i8*, i8*, i32 }
%struct.TYPE_7__ = type { i64 }

@SQLITE_OPEN_READWRITE = common dso_local global i32 0, align 4
@SQLITE_OPEN_URI = common dso_local global i32 0, align 4
@SQLITE_OPEN_PRIVATECACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cannot open source database: %s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"SELECT 1 FROM sqlite_master; BEGIN;\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"cannot start a read transaction on the source database: %s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@SQLITE_CHECKPOINT_FULL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"cannot checkpoint the source database\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"PRAGMA page_size\00", align 1
@SQLITE_ROW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"unable to determine the page size\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"PRAGMA page_count\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"unable to determine the size of the source database\00", align 1
@SQLITE_FCNTL_FILE_POINTER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"cannot get the source file handle\00", align 1
@SQLITE_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @scrubBackupOpenSrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scrubBackupOpenSrc(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %10 = load i32, i32* @SQLITE_OPEN_READWRITE, align 4
  %11 = load i32, i32* @SQLITE_OPEN_URI, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SQLITE_OPEN_PRIVATECACHE, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @sqlite3_open_v2(i32 %7, i32* %9, i32 %14, i32 0)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @sqlite3_errmsg(i32 %26)
  %28 = call i32 (%struct.TYPE_6__*, i8*, ...) @scrubBackupErr(%struct.TYPE_6__* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %139

29:                                               ; preds = %1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @sqlite3_exec(i32 %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, i32 0)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @sqlite3_errmsg(i32 %44)
  %46 = call i32 (%struct.TYPE_6__*, i8*, ...) @scrubBackupErr(%struct.TYPE_6__* %41, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %139

47:                                               ; preds = %29
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SQLITE_CHECKPOINT_FULL, align 4
  %52 = call i32 @sqlite3_wal_checkpoint_v2(i32 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %51, i32 0, i32 0)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %57 = call i32 (%struct.TYPE_6__*, i8*, ...) @scrubBackupErr(%struct.TYPE_6__* %56, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %139

58:                                               ; preds = %47
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32* @scrubBackupPrepare(%struct.TYPE_6__* %59, i32 %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  store i32* %63, i32** %3, align 8
  %64 = load i32*, i32** %3, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %139

67:                                               ; preds = %58
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @sqlite3_step(i32* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @SQLITE_ROW, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load i32*, i32** %3, align 8
  %75 = call i8* @sqlite3_column_int(i32* %74, i32 0)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  br label %81

78:                                               ; preds = %67
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %80 = call i32 (%struct.TYPE_6__*, i8*, ...) @scrubBackupErr(%struct.TYPE_6__* %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %73
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @sqlite3_finalize(i32* %82)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %139

89:                                               ; preds = %81
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32* @scrubBackupPrepare(%struct.TYPE_6__* %90, i32 %93, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  store i32* %94, i32** %3, align 8
  %95 = load i32*, i32** %3, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %139

98:                                               ; preds = %89
  %99 = load i32*, i32** %3, align 8
  %100 = call i32 @sqlite3_step(i32* %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @SQLITE_ROW, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load i32*, i32** %3, align 8
  %106 = call i8* @sqlite3_column_int(i32* %105, i32 0)
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 3
  store i8* %106, i8** %108, align 8
  br label %112

109:                                              ; preds = %98
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %111 = call i32 (%struct.TYPE_6__*, i8*, ...) @scrubBackupErr(%struct.TYPE_6__* %110, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %104
  %113 = load i32*, i32** %3, align 8
  %114 = call i32 @sqlite3_finalize(i32* %113)
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @SQLITE_FCNTL_FILE_POINTER, align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = call i32 @sqlite3_file_control(i32 %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %118, %struct.TYPE_7__** %120)
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = icmp eq %struct.TYPE_7__* %124, null
  br i1 %125, label %133, label %126

126:                                              ; preds = %112
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %126, %112
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %135 = call i32 (%struct.TYPE_6__*, i8*, ...) @scrubBackupErr(%struct.TYPE_6__* %134, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %136 = load i64, i64* @SQLITE_ERROR, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  br label %139

139:                                              ; preds = %22, %40, %55, %66, %88, %97, %133, %126
  ret void
}

declare dso_local i64 @sqlite3_open_v2(i32, i32*, i32, i32) #1

declare dso_local i32 @scrubBackupErr(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @sqlite3_errmsg(i32) #1

declare dso_local i64 @sqlite3_exec(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @sqlite3_wal_checkpoint_v2(i32, i8*, i32, i32, i32) #1

declare dso_local i32* @scrubBackupPrepare(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i8* @sqlite3_column_int(i32*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @sqlite3_file_control(i32, i8*, i32, %struct.TYPE_7__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

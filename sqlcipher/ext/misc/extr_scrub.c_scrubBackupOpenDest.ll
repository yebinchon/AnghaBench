; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_scrub.c_scrubBackupOpenDest.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_scrub.c_scrubBackupOpenDest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@SQLITE_OPEN_READWRITE = common dso_local global i32 0, align 4
@SQLITE_OPEN_CREATE = common dso_local global i32 0, align 4
@SQLITE_OPEN_URI = common dso_local global i32 0, align 4
@SQLITE_OPEN_PRIVATECACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cannot open destination database: %s\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"PRAGMA page_size(%u);\00", align 1
@SQLITE_NOMEM = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"cannot set the page size on the destination database: %s\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"PRAGMA journal_mode=OFF;\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"BEGIN EXCLUSIVE;\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"cannot start a write transaction on the destination database: %s\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"PRAGMA page_count;\00", align 1
@SQLITE_ROW = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"cannot measure the size of the destination\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"destination database is not empty - holds %d pages\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@SQLITE_FCNTL_FILE_POINTER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [39 x i8] c"cannot get the destination file handle\00", align 1
@SQLITE_ERROR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @scrubBackupOpenDest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scrubBackupOpenDest(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %147

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load i32, i32* @SQLITE_OPEN_READWRITE, align 4
  %18 = load i32, i32* @SQLITE_OPEN_CREATE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SQLITE_OPEN_URI, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SQLITE_OPEN_PRIVATECACHE, align 4
  %23 = or i32 %21, %22
  %24 = call i8* @sqlite3_open_v2(i32 %14, i32* %16, i32 %23, i32 0)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %11
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @sqlite3_errmsg(i32 %35)
  %37 = call i32 (%struct.TYPE_6__*, i8*, ...) @scrubBackupErr(%struct.TYPE_6__* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %147

38:                                               ; preds = %11
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  store i8* %42, i8** %5, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i8*, i8** @SQLITE_NOMEM, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  br label %147

49:                                               ; preds = %38
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i8* @sqlite3_exec(i32 %52, i8* %53, i32 0, i32 0, i32 0)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @sqlite3_free(i8* %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %49
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @sqlite3_errmsg(i32 %67)
  %69 = call i32 (%struct.TYPE_6__*, i8*, ...) @scrubBackupErr(%struct.TYPE_6__* %64, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %147

70:                                               ; preds = %49
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i8* @sqlite3_exec(i32 %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0, i32 0)
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i8* @sqlite3_exec(i32 %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0, i32 0)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %70
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @sqlite3_errmsg(i32 %89)
  %91 = call i32 (%struct.TYPE_6__*, i8*, ...) @scrubBackupErr(%struct.TYPE_6__* %86, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i32 %90)
  br label %147

92:                                               ; preds = %70
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32* @scrubBackupPrepare(%struct.TYPE_6__* %93, i32 %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i32* %97, i32** %3, align 8
  %98 = load i32*, i32** %3, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %147

101:                                              ; preds = %92
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @sqlite3_step(i32* %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @SQLITE_ROW, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %109 = call i32 (%struct.TYPE_6__*, i8*, ...) @scrubBackupErr(%struct.TYPE_6__* %108, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %120

110:                                              ; preds = %101
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 @sqlite3_column_int(i32* %111, i32 0)
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %116 = load i32*, i32** %3, align 8
  %117 = call i32 @sqlite3_column_int(i32* %116, i32 0)
  %118 = call i32 (%struct.TYPE_6__*, i8*, ...) @scrubBackupErr(%struct.TYPE_6__* %115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %114, %110
  br label %120

120:                                              ; preds = %119, %107
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @sqlite3_finalize(i32* %121)
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @SQLITE_FCNTL_FILE_POINTER, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = call i32 @sqlite3_file_control(i32 %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %126, %struct.TYPE_7__** %128)
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = icmp eq %struct.TYPE_7__* %132, null
  br i1 %133, label %141, label %134

134:                                              ; preds = %120
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %134, %120
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %143 = call i32 (%struct.TYPE_6__*, i8*, ...) @scrubBackupErr(%struct.TYPE_6__* %142, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  %144 = load i8*, i8** @SQLITE_ERROR, align 8
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  store i8* %144, i8** %146, align 8
  br label %147

147:                                              ; preds = %10, %31, %45, %63, %85, %100, %141, %134
  ret void
}

declare dso_local i8* @sqlite3_open_v2(i32, i32*, i32, i32) #1

declare dso_local i32 @scrubBackupErr(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @sqlite3_errmsg(i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i32) #1

declare dso_local i8* @sqlite3_exec(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32* @scrubBackupPrepare(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @sqlite3_file_control(i32, i8*, i32, %struct.TYPE_7__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

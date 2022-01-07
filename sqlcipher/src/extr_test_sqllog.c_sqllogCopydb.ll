; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_sqllog.c_sqllogCopydb.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_sqllog.c_sqllogCopydb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64 }
%struct.SLConn = type { i32, i32 }

@SQLLOG_NAMESZ = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@sqllogglobal = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"%s_%02d.db\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"PRAGMA synchronous = 0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%d %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"sqllogCopydb(): error backing up database\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"ATTACH '%q' AS '%q'; -- clock=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"-- Main database is '%q'\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SLConn*, i8*, i32)* @sqllogCopydb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sqllogCopydb(%struct.SLConn* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.SLConn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store %struct.SLConn* %0, %struct.SLConn** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load i32, i32* @SQLLOG_NAMESZ, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %7, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %23 = load i32, i32* @SQLLOG_NAMESZ, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  store i8* null, i8** %11, align 8
  %26 = load %struct.SLConn*, %struct.SLConn** %4, align 8
  %27 = getelementptr inbounds %struct.SLConn, %struct.SLConn* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @sqllogFindAttached(i32 %28, i8* %29, i8* %22, i8* %25)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @SQLITE_OK, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  store i32 1, i32* %13, align 4
  br label %130

35:                                               ; preds = %3
  %36 = getelementptr inbounds i8, i8* %25, i64 0
  %37 = load i8, i8* %36, align 16
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %41, i8** %11, align 8
  br label %109

42:                                               ; preds = %35
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 5), align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i8* @sqllogFindFile(i8* %25)
  store i8* %46, i8** %11, align 8
  br label %48

47:                                               ; preds = %42
  store i8* null, i8** %11, align 8
  br label %48

48:                                               ; preds = %47, %45
  %49 = load i8*, i8** %11, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %108

51:                                               ; preds = %48
  store i32* null, i32** %15, align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 4), align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 4), align 8
  store i32 %52, i32* %16, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 3), align 4
  %55 = load i32, i32* %16, align 4
  %56 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  store i8* %56, i8** %11, align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 0), align 8
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 0), align 8
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @sqlite3_open(i8* %61, i32** %15)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* @SQLITE_OK, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %87

66:                                               ; preds = %51
  %67 = load i32*, i32** %15, align 8
  %68 = call i32 @sqlite3_exec(i32* %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0, i32 0)
  %69 = load i32*, i32** %15, align 8
  %70 = load %struct.SLConn*, %struct.SLConn** %4, align 8
  %71 = getelementptr inbounds %struct.SLConn, %struct.SLConn* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32* @sqlite3_backup_init(i32* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %72, i8* %22)
  store i32* %73, i32** %17, align 8
  %74 = load i32*, i32** %17, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %66
  %77 = load i32*, i32** %17, align 8
  %78 = call i32 @sqlite3_backup_step(i32* %77, i32 -1)
  %79 = load i32*, i32** %17, align 8
  %80 = call i32 @sqlite3_backup_finish(i32* %79)
  store i32 %80, i32* %14, align 4
  br label %84

81:                                               ; preds = %66
  %82 = load i32*, i32** %15, align 8
  %83 = call i32 @sqlite3_errcode(i32* %82)
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i32*, i32** %15, align 8
  %86 = call i32 @sqlite3_close(i32* %85)
  br label %87

87:                                               ; preds = %84, %51
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 0), align 8
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* @SQLITE_OK, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 2), align 8
  %93 = call i32* @fopen(i32 %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %93, i32** %18, align 8
  %94 = load i32*, i32** %18, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i32*, i32** %18, align 8
  %98 = ptrtoint i32* %97 to i32
  %99 = load i32, i32* %16, align 4
  %100 = call i32 (i32, i8*, ...) @fprintf(i32 %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %99, i8* %25)
  %101 = load i32*, i32** %18, align 8
  %102 = call i32 @fclose(i32* %101)
  br label %103

103:                                              ; preds = %96, %91
  br label %107

104:                                              ; preds = %87
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @sqlite3_log(i32 %105, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %103
  br label %108

108:                                              ; preds = %107, %48
  br label %109

109:                                              ; preds = %108, %40
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i8*, i8** %11, align 8
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 1), align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sqllogglobal, i32 0, i32 1), align 4
  %116 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %113, i8* %22, i32 %114)
  store i8* %116, i8** %10, align 8
  br label %120

117:                                              ; preds = %109
  %118 = load i8*, i8** %11, align 8
  %119 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %118)
  store i8* %119, i8** %10, align 8
  br label %120

120:                                              ; preds = %117, %112
  %121 = load %struct.SLConn*, %struct.SLConn** %4, align 8
  %122 = getelementptr inbounds %struct.SLConn, %struct.SLConn* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i8*, i8** %10, align 8
  %125 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %124)
  %126 = load i8*, i8** %10, align 8
  %127 = call i32 @sqlite3_free(i8* %126)
  %128 = load i8*, i8** %11, align 8
  %129 = call i32 @sqlite3_free(i8* %128)
  store i32 0, i32* %13, align 4
  br label %130

130:                                              ; preds = %120, %34
  %131 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i32, i32* %13, align 4
  switch i32 %132, label %134 [
    i32 0, label %133
    i32 1, label %133
  ]

133:                                              ; preds = %130, %130
  ret void

134:                                              ; preds = %130
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sqllogFindAttached(i32, i8*, i8*, i8*) #2

declare dso_local i8* @sqlite3_mprintf(i8*, ...) #2

declare dso_local i8* @sqllogFindFile(i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @sqlite3_open(i8*, i32**) #2

declare dso_local i32 @sqlite3_exec(i32*, i8*, i32, i32, i32) #2

declare dso_local i32* @sqlite3_backup_init(i32*, i8*, i32, i8*) #2

declare dso_local i32 @sqlite3_backup_step(i32*, i32) #2

declare dso_local i32 @sqlite3_backup_finish(i32*) #2

declare dso_local i32 @sqlite3_errcode(i32*) #2

declare dso_local i32 @sqlite3_close(i32*) #2

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @sqlite3_log(i32, i8*) #2

declare dso_local i32 @sqlite3_free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

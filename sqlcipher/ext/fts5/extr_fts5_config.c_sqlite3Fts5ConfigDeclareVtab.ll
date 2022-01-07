; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_config.c_sqlite3Fts5ConfigDeclareVtab.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_config.c_sqlite3Fts5ConfigDeclareVtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"CREATE TABLE x(\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%z%s%Q\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%z, %Q HIDDEN, %s HIDDEN)\00", align 1
@FTS5_RANK_NAME = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5ConfigDeclareVtab(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load i32, i32* @SQLITE_OK, align 4
  store i32 %7, i32* %4, align 4
  %8 = call i8* (i32*, i8*, ...) @sqlite3Fts5Mprintf(i32* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %5, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %35, %1
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br label %18

18:                                               ; preds = %12, %9
  %19 = phi i1 [ false, %9 ], [ %17, %12 ]
  br i1 %19, label %20, label %38

20:                                               ; preds = %18
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i8* (i32*, i8*, ...) @sqlite3Fts5Mprintf(i32* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %25, i8* %26, i32 %33)
  store i8* %34, i8** %5, align 8
  br label %35

35:                                               ; preds = %20
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %9

38:                                               ; preds = %18
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* @FTS5_RANK_NAME, align 4
  %44 = call i8* (i32*, i8*, ...) @sqlite3Fts5Mprintf(i32* %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %39, i8* %42, i32 %43)
  store i8* %44, i8** %5, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @SQLITE_NOMEM, align 4
  %50 = icmp eq i32 %48, %49
  br label %51

51:                                               ; preds = %47, %38
  %52 = phi i1 [ true, %38 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i8*, i8** %5, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @sqlite3_declare_vtab(i32 %60, i8* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @sqlite3_free(i8* %63)
  br label %65

65:                                               ; preds = %57, %51
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i8* @sqlite3Fts5Mprintf(i32*, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_declare_vtab(i32, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

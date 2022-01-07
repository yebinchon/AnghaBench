; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/tool/extr_fts3view.c_showSchema.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/tool/extr_fts3view.c_showSchema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [64 x i8] c"SELECT sql FROM sqlite_master WHERE name LIKE '%q%%' ORDER BY 1\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s;\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"PRAGMA page_size\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"PRAGMA page_size=%s;\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"PRAGMA journal_mode\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"PRAGMA journal_mode=%s;\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"PRAGMA auto_vacuum\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"FULL\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"INCREMENTAL\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"PRAGMA auto_vacuum=%s;\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"PRAGMA encoding\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"PRAGMA encoding=%s;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @showSchema to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showSchema(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32* (i32*, i8*, ...) @prepare(i32* %7, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %8)
  store i32* %9, i32** %5, align 8
  br label %10

10:                                               ; preds = %15, %2
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @sqlite3_step(i32* %11)
  %13 = load i64, i64* @SQLITE_ROW, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32*, i32** %5, align 8
  %17 = call i8* @sqlite3_column_text(i32* %16, i32 0)
  %18 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %10

19:                                               ; preds = %10
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @sqlite3_finalize(i32* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32* (i32*, i8*, ...) @prepare(i32* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32* %23, i32** %5, align 8
  br label %24

24:                                               ; preds = %29, %19
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @sqlite3_step(i32* %25)
  %27 = load i64, i64* @SQLITE_ROW, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32*, i32** %5, align 8
  %31 = call i8* @sqlite3_column_text(i32* %30, i32 0)
  %32 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  br label %24

33:                                               ; preds = %24
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @sqlite3_finalize(i32* %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32* (i32*, i8*, ...) @prepare(i32* %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i32* %37, i32** %5, align 8
  br label %38

38:                                               ; preds = %43, %33
  %39 = load i32*, i32** %5, align 8
  %40 = call i64 @sqlite3_step(i32* %39)
  %41 = load i64, i64* @SQLITE_ROW, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32*, i32** %5, align 8
  %45 = call i8* @sqlite3_column_text(i32* %44, i32 0)
  %46 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %45)
  br label %38

47:                                               ; preds = %38
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @sqlite3_finalize(i32* %48)
  %50 = load i32*, i32** %3, align 8
  %51 = call i32* (i32*, i8*, ...) @prepare(i32* %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i32* %51, i32** %5, align 8
  br label %52

52:                                               ; preds = %63, %47
  %53 = load i32*, i32** %5, align 8
  %54 = call i64 @sqlite3_step(i32* %53)
  %55 = load i64, i64* @SQLITE_ROW, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @sqlite3_column_int(i32* %58, i32 0)
  switch i32 %59, label %63 [
    i32 0, label %60
    i32 1, label %61
    i32 2, label %62
  ]

60:                                               ; preds = %57
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %63

61:                                               ; preds = %57
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %6, align 8
  br label %63

62:                                               ; preds = %57
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8** %6, align 8
  br label %63

63:                                               ; preds = %57, %62, %61, %60
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8* %64)
  br label %52

66:                                               ; preds = %52
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @sqlite3_finalize(i32* %67)
  %69 = load i32*, i32** %3, align 8
  %70 = call i32* (i32*, i8*, ...) @prepare(i32* %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  store i32* %70, i32** %5, align 8
  br label %71

71:                                               ; preds = %76, %66
  %72 = load i32*, i32** %5, align 8
  %73 = call i64 @sqlite3_step(i32* %72)
  %74 = load i64, i64* @SQLITE_ROW, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32*, i32** %5, align 8
  %78 = call i8* @sqlite3_column_text(i32* %77, i32 0)
  %79 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8* %78)
  br label %71

80:                                               ; preds = %71
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @sqlite3_finalize(i32* %81)
  ret void
}

declare dso_local i32* @prepare(i32*, i8*, ...) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/tool/extr_fts3view.c_showStat.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/tool/extr_fts3view.c_showStat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"SELECT id, value FROM '%q_stat'\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"stat[%d] =\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" %lld\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @showStat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showStat(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32* @prepare(i32* %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %11)
  store i32* %12, i32** %5, align 8
  br label %13

13:                                               ; preds = %47, %2
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @sqlite3_step(i32* %14)
  %16 = load i64, i64* @SQLITE_ROW, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %13
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @sqlite3_column_int(i32* %19, i32 0)
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @sqlite3_column_type(i32* %22, i32 1)
  switch i32 %23, label %47 [
    i32 128, label %24
    i32 129, label %28
  ]

24:                                               ; preds = %18
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @sqlite3_column_int(i32* %25, i32 1)
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  br label %47

28:                                               ; preds = %18
  %29 = load i32*, i32** %5, align 8
  %30 = call i64 @sqlite3_column_blob(i32* %29, i32 1)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %6, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @sqlite3_column_bytes(i32* %32, i32 1)
  store i32 %33, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %38, %28
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @getVarint(i8* %39, i32* %9)
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %34

45:                                               ; preds = %34
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %47

47:                                               ; preds = %18, %45, %24
  br label %13

48:                                               ; preds = %13
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @sqlite3_finalize(i32* %49)
  ret void
}

declare dso_local i32* @prepare(i32*, i8*, i8*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i32 @sqlite3_column_type(i32*, i32) #1

declare dso_local i64 @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i32 @getVarint(i8*, i32*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

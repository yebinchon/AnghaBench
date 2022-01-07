; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/session/extr_changeset.c_conflictCallback.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/session/extr_changeset.c_conflictCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@nConflict = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"NOTFOUND\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"PRIMARY KEY\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"FOREIGN KEY\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"CONSTRAINT\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"UPDATE of\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"INSERT into\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"DELETE from\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"%s conflict on %s table %s with primary key\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SQLITE_CHANGESET_OMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @conflictCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conflictCallback(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  %17 = load i32, i32* @nConflict, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @nConflict, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @sqlite3changeset_op(i32* %19, i8** %11, i32* %9, i32* %7, i32* %8)
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @sqlite3changeset_pk(i32* %21, i8** %12, i32 0)
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %29 [
    i32 133, label %24
    i32 131, label %25
    i32 135, label %26
    i32 132, label %27
    i32 134, label %28
  ]

24:                                               ; preds = %3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %29

25:                                               ; preds = %3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  br label %29

26:                                               ; preds = %3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  br label %29

27:                                               ; preds = %3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  br label %29

28:                                               ; preds = %3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %13, align 8
  br label %29

29:                                               ; preds = %3, %28, %27, %26, %25, %24
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %34 [
    i32 128, label %31
    i32 129, label %32
    i32 130, label %33
  ]

31:                                               ; preds = %29
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %14, align 8
  br label %34

32:                                               ; preds = %29
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %14, align 8
  br label %34

33:                                               ; preds = %29
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %14, align 8
  br label %34

34:                                               ; preds = %29, %33, %32, %31
  %35 = load i8*, i8** %13, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i8* %35, i8* %36, i8* %37)
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %68, %34
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %39
  %44 = load i8*, i8** %12, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %68

52:                                               ; preds = %43
  %53 = load i8*, i8** %15, align 8
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 129
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @sqlite3changeset_new(i32* %58, i32 %59, i32** %16)
  br label %65

61:                                               ; preds = %52
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @sqlite3changeset_old(i32* %62, i32 %63, i32** %16)
  br label %65

65:                                               ; preds = %61, %57
  %66 = load i32*, i32** %16, align 8
  %67 = call i32 @renderValue(i32* %66)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8** %15, align 8
  br label %68

68:                                               ; preds = %65, %51
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %39

71:                                               ; preds = %39
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %73 = load i32, i32* @SQLITE_CHANGESET_OMIT, align 4
  ret i32 %73
}

declare dso_local i32 @sqlite3changeset_op(i32*, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @sqlite3changeset_pk(i32*, i8**, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sqlite3changeset_new(i32*, i32, i32**) #1

declare dso_local i32 @sqlite3changeset_old(i32*, i32, i32**) #1

declare dso_local i32 @renderValue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

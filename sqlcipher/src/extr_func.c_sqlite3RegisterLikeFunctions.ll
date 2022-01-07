; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_func.c_sqlite3RegisterLikeFunctions.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_func.c_sqlite3RegisterLikeFunctions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compareInfo = type { i32 }

@likeInfoAlt = common dso_local global i32 0, align 4
@likeInfoNorm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"like\00", align 1
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@likeFunc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"glob\00", align 1
@globInfo = common dso_local global i32 0, align 4
@SQLITE_FUNC_LIKE = common dso_local global i32 0, align 4
@SQLITE_FUNC_CASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3RegisterLikeFunctions(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.compareInfo*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store %struct.compareInfo* bitcast (i32* @likeInfoAlt to %struct.compareInfo*), %struct.compareInfo** %5, align 8
  br label %10

9:                                                ; preds = %2
  store %struct.compareInfo* bitcast (i32* @likeInfoNorm to %struct.compareInfo*), %struct.compareInfo** %5, align 8
  br label %10

10:                                               ; preds = %9, %8
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @SQLITE_UTF8, align 4
  %13 = load %struct.compareInfo*, %struct.compareInfo** %5, align 8
  %14 = load i32, i32* @likeFunc, align 4
  %15 = call i32 @sqlite3CreateFunc(i32* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 2, i32 %12, %struct.compareInfo* %13, i32 %14, i32 0, i32 0, i32 0, i32 0, i32 0)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @SQLITE_UTF8, align 4
  %18 = load %struct.compareInfo*, %struct.compareInfo** %5, align 8
  %19 = load i32, i32* @likeFunc, align 4
  %20 = call i32 @sqlite3CreateFunc(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 3, i32 %17, %struct.compareInfo* %18, i32 %19, i32 0, i32 0, i32 0, i32 0, i32 0)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @SQLITE_UTF8, align 4
  %23 = load i32, i32* @likeFunc, align 4
  %24 = call i32 @sqlite3CreateFunc(i32* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 2, i32 %22, %struct.compareInfo* bitcast (i32* @globInfo to %struct.compareInfo*), i32 %23, i32 0, i32 0, i32 0, i32 0, i32 0)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @SQLITE_FUNC_LIKE, align 4
  %27 = load i32, i32* @SQLITE_FUNC_CASE, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @setLikeOptFlag(i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %10
  %34 = load i32, i32* @SQLITE_FUNC_LIKE, align 4
  %35 = load i32, i32* @SQLITE_FUNC_CASE, align 4
  %36 = or i32 %34, %35
  br label %39

37:                                               ; preds = %10
  %38 = load i32, i32* @SQLITE_FUNC_LIKE, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi i32 [ %36, %33 ], [ %38, %37 ]
  %41 = call i32 @setLikeOptFlag(i32* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %40)
  ret void
}

declare dso_local i32 @sqlite3CreateFunc(i32*, i8*, i32, i32, %struct.compareInfo*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @setLikeOptFlag(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

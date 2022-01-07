; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_sqlite3RtreeInit.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_sqlite3RtreeInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_UTF8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"rtreenode\00", align 1
@rtreenode = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"rtreedepth\00", align 1
@rtreedepth = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"rtreecheck\00", align 1
@rtreecheck = common dso_local global i32 0, align 4
@RTREE_COORD_REAL32 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"rtree\00", align 1
@rtreeModule = common dso_local global i32 0, align 4
@RTREE_COORD_INT32 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"rtree_i32\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3RtreeInit(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @SQLITE_UTF8, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @rtreenode, align 4
  %11 = call i32 @sqlite3_create_function(i32* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 2, i32 %9, i32 0, i32 %10, i32 0, i32 0)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @SQLITE_OK, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @rtreedepth, align 4
  %19 = call i32 @sqlite3_create_function(i32* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 %17, i32 0, i32 %18, i32 0, i32 0)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %15, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @SQLITE_OK, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @rtreecheck, align 4
  %28 = call i32 @sqlite3_create_function(i32* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 -1, i32 %26, i32 0, i32 %27, i32 0, i32 0)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %24, %20
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @SQLITE_OK, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i64, i64* @RTREE_COORD_REAL32, align 8
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %5, align 8
  %36 = load i32*, i32** %2, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @sqlite3_create_module_v2(i32* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* @rtreeModule, i8* %37, i32 0)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %33, %29
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @SQLITE_OK, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i64, i64* @RTREE_COORD_INT32, align 8
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %6, align 8
  %46 = load i32*, i32** %2, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @sqlite3_create_module_v2(i32* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* @rtreeModule, i8* %47, i32 0)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %43, %39
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @sqlite3_create_function(i32*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3_create_module_v2(i32*, i8*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fileio.c_writefileFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fileio.c_writefileFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [50 x i8] c"wrong number of arguments to function writefile()\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to create symlink: %s\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to create directory: %s\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to write file: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @writefileFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writefileFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  store i64 0, i64* %8, align 8
  store i32 -1, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 4
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %3
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @sqlite3_result_error(i32* %17, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %102

19:                                               ; preds = %13
  %20 = load i32**, i32*** %6, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i64 @sqlite3_value_text(i32* %22)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %102

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  %30 = icmp sge i32 %29, 3
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32**, i32*** %6, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @sqlite3_value_int(i32* %34)
  store i64 %35, i64* %8, align 8
  br label %36

36:                                               ; preds = %31, %28
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 4
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32**, i32*** %6, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 3
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @sqlite3_value_int64(i32* %42)
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i32*, i32** %4, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i32**, i32*** %6, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @writeFile(i32* %45, i8* %46, i32* %49, i64 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %74

55:                                               ; preds = %44
  %56 = load i64, i64* @errno, align 8
  %57 = load i64, i64* @ENOENT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load i8*, i8** %7, align 8
  %61 = call i64 @makeDirectory(i8* %60)
  %62 = load i64, i64* @SQLITE_OK, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i32*, i32** %4, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i32**, i32*** %6, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @writeFile(i32* %65, i8* %66, i32* %69, i64 %70, i32 %71)
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %64, %59
  br label %74

74:                                               ; preds = %73, %55, %44
  %75 = load i32, i32* %5, align 4
  %76 = icmp sgt i32 %75, 2
  br i1 %76, label %77, label %102

77:                                               ; preds = %74
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %77
  %81 = load i64, i64* %8, align 8
  %82 = call i64 @S_ISLNK(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32*, i32** %4, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @ctxErrorMsg(i32* %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %86)
  br label %101

88:                                               ; preds = %80
  %89 = load i64, i64* %8, align 8
  %90 = call i64 @S_ISDIR(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i32*, i32** %4, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 @ctxErrorMsg(i32* %93, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %94)
  br label %100

96:                                               ; preds = %88
  %97 = load i32*, i32** %4, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 @ctxErrorMsg(i32* %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %96, %92
  br label %101

101:                                              ; preds = %100, %84
  br label %102

102:                                              ; preds = %16, %27, %101, %77, %74
  ret void
}

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i64 @sqlite3_value_int(i32*) #1

declare dso_local i32 @sqlite3_value_int64(i32*) #1

declare dso_local i32 @writeFile(i32*, i8*, i32*, i64, i32) #1

declare dso_local i64 @makeDirectory(i8*) #1

declare dso_local i64 @S_ISLNK(i64) #1

declare dso_local i32 @ctxErrorMsg(i32*, i8*, i8*) #1

declare dso_local i64 @S_ISDIR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

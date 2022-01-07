; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fileio.c_lsModeFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fileio.c_lsModeFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @lsModeFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lsModeFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %12 = load i32**, i32*** %6, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @sqlite3_value_int(i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @S_ISLNK(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  store i8 108, i8* %21, align 16
  br label %38

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @S_ISREG(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  store i8 45, i8* %27, align 16
  br label %37

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @S_ISDIR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  store i8 100, i8* %33, align 16
  br label %36

34:                                               ; preds = %28
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  store i8 63, i8* %35, align 16
  br label %36

36:                                               ; preds = %34, %32
  br label %37

37:                                               ; preds = %36, %26
  br label %38

38:                                               ; preds = %37, %20
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %77, %38
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 3
  br i1 %41, label %42, label %80

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 2, %44
  %46 = mul nsw i32 %45, 3
  %47 = ashr i32 %43, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 %48, 3
  %50 = add nsw i32 1, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 %51
  store i8* %52, i8** %11, align 8
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 114, i32 45
  %58 = trunc i32 %57 to i8
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  store i8 %58, i8* %60, align 1
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, 2
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 119, i32 45
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  store i8 %66, i8* %68, align 1
  %69 = load i32, i32* %10, align 4
  %70 = and i32 %69, 1
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 120, i32 45
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  store i8 %74, i8* %76, align 1
  br label %77

77:                                               ; preds = %42
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %39

80:                                               ; preds = %39
  %81 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 10
  store i8 0, i8* %81, align 2
  %82 = load i32*, i32** %4, align 8
  %83 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %84 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %85 = call i32 @sqlite3_result_text(i32* %82, i8* %83, i32 -1, i32 %84)
  ret void
}

declare dso_local i32 @sqlite3_value_int(i32*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

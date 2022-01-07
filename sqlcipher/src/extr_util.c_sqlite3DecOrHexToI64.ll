; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_util.c_sqlite3DecOrHexToI64.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_util.c_sqlite3DecOrHexToI64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_UTF8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3DecOrHexToI64(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 48
  br i1 %13, label %14, label %81

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 120
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 88
  br i1 %25, label %26, label %81

26:                                               ; preds = %20, %14
  store i32 0, i32* %6, align 4
  store i32 2, i32* %7, align 4
  br label %27

27:                                               ; preds = %36, %26
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 48
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %27

39:                                               ; preds = %27
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %59, %39
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = call i64 @sqlite3Isxdigit(i8 signext %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  %51 = mul nsw i32 %50, 16
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = call i32 @sqlite3HexToInt(i8 signext %56)
  %58 = add nsw i32 %51, %57
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %41

62:                                               ; preds = %41
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @memcpy(i32* %63, i32* %6, i32 8)
  %65 = load i8*, i8** %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %62
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %7, align 4
  %75 = sub nsw i32 %73, %74
  %76 = icmp sle i32 %75, 16
  br label %77

77:                                               ; preds = %72, %62
  %78 = phi i1 [ false, %62 ], [ %76, %72 ]
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 0, i32 2
  store i32 %80, i32* %3, align 4
  br label %88

81:                                               ; preds = %20, %2
  %82 = load i8*, i8** %4, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 @sqlite3Strlen30(i8* %84)
  %86 = load i32, i32* @SQLITE_UTF8, align 4
  %87 = call i32 @sqlite3Atoi64(i8* %82, i32* %83, i32 %85, i32 %86)
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %81, %77
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @sqlite3Isxdigit(i8 signext) #1

declare dso_local i32 @sqlite3HexToInt(i8 signext) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sqlite3Atoi64(i8*, i32*, i32, i32) #1

declare dso_local i32 @sqlite3Strlen30(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

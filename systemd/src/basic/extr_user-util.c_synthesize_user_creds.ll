; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_user-util.c_synthesize_user_creds.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_user-util.c_synthesize_user_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"/root\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@NOBODY_USER_NAME = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"65534\00", align 1
@UID_NOBODY = common dso_local global i64 0, align 8
@GID_NOBODY = common dso_local global i64 0, align 8
@USER_CREDS_CLEAN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@NOLOGIN = common dso_local global i8* null, align 8
@ENOMEDIUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i64*, i8**, i8**, i32)* @synthesize_user_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synthesize_user_creds(i8** %0, i64* %1, i64* %2, i8** %3, i8** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  store i8** %0, i8*** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64* %2, i64** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32 %5, i32* %13, align 4
  %14 = load i8**, i8*** %8, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @STR_IN_SET(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %6
  %19 = load i8**, i8*** %8, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = load i64*, i64** %9, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i64*, i64** %9, align 8
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i64*, i64** %10, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i64*, i64** %10, align 8
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i8**, i8*** %11, align 8
  %31 = icmp ne i8** %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %33, align 8
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i8**, i8*** %12, align 8
  %36 = icmp ne i8** %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %38, align 8
  br label %39

39:                                               ; preds = %37, %34
  store i32 0, i32* %7, align 4
  br label %92

40:                                               ; preds = %6
  %41 = call i64 (...) @synthesize_nobody()
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %89

43:                                               ; preds = %40
  %44 = load i8**, i8*** %8, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** @NOBODY_USER_NAME, align 8
  %47 = call i64 @STR_IN_SET(i8* %45, i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %89

49:                                               ; preds = %43
  %50 = load i8*, i8** @NOBODY_USER_NAME, align 8
  %51 = load i8**, i8*** %8, align 8
  store i8* %50, i8** %51, align 8
  %52 = load i64*, i64** %9, align 8
  %53 = icmp ne i64* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i64, i64* @UID_NOBODY, align 8
  %56 = load i64*, i64** %9, align 8
  store i64 %55, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i64*, i64** %10, align 8
  %59 = icmp ne i64* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i64, i64* @GID_NOBODY, align 8
  %62 = load i64*, i64** %10, align 8
  store i64 %61, i64* %62, align 8
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i8**, i8*** %11, align 8
  %65 = icmp ne i8** %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @USER_CREDS_CLEAN, align 4
  %69 = call i64 @FLAGS_SET(i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  %73 = load i8**, i8*** %11, align 8
  store i8* %72, i8** %73, align 8
  br label %74

74:                                               ; preds = %66, %63
  %75 = load i8**, i8*** %12, align 8
  %76 = icmp ne i8** %75, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @USER_CREDS_CLEAN, align 4
  %80 = call i64 @FLAGS_SET(i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %85

83:                                               ; preds = %77
  %84 = load i8*, i8** @NOLOGIN, align 8
  br label %85

85:                                               ; preds = %83, %82
  %86 = phi i8* [ null, %82 ], [ %84, %83 ]
  %87 = load i8**, i8*** %12, align 8
  store i8* %86, i8** %87, align 8
  br label %88

88:                                               ; preds = %85, %74
  store i32 0, i32* %7, align 4
  br label %92

89:                                               ; preds = %43, %40
  %90 = load i32, i32* @ENOMEDIUM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %89, %88, %39
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i64 @STR_IN_SET(i8*, i8*, i8*) #1

declare dso_local i64 @synthesize_nobody(...) #1

declare dso_local i64 @FLAGS_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

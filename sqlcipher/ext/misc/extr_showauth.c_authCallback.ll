; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_showauth.c_authCallback.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_showauth.c_authCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"CREATE_INDEX\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"CREATE_TABLE\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"CREATE_TEMP_INDEX\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"CREATE_TEMP_TABLE\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"CREATE_TEMP_TRIGGER\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"CREATE_TEMP_VIEW\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"CREATE_TRIGGER\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"CREATE_VIEW\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"DROP_INDEX\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"DROP_TABLE\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"DROP_TEMP_INDEX\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"DROP_TEMP_TABLE\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"DROP_TEMP_TRIGGER\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"DROP_TEMP_VIEW\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"DROP_TRIGGER\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"DROP_VIEW\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"INSERT\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"PRAGMA\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"SELECT\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"TRANSACTION\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"UPDATE\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"ATTACH\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"DETACH\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"ALTER_TABLE\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"REINDEX\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"ANALYZE\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"CREATE_VTABLE\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"DROP_VTABLE\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"FUNCTION\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"SAVEPOINT\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"COPY\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"RECURSIVE\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"AUTH: %s,%s,%s,%s,%s\0A\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8*, i8*, i8*)* @authCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @authCallback(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [50 x i8], align 16
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %50 [
    i32 157, label %16
    i32 156, label %17
    i32 155, label %18
    i32 154, label %19
    i32 153, label %20
    i32 152, label %21
    i32 151, label %22
    i32 150, label %23
    i32 148, label %24
    i32 146, label %25
    i32 145, label %26
    i32 144, label %27
    i32 143, label %28
    i32 142, label %29
    i32 141, label %30
    i32 140, label %31
    i32 139, label %32
    i32 136, label %33
    i32 135, label %34
    i32 134, label %35
    i32 130, label %36
    i32 129, label %37
    i32 128, label %38
    i32 159, label %39
    i32 147, label %40
    i32 161, label %41
    i32 132, label %42
    i32 160, label %43
    i32 149, label %44
    i32 138, label %45
    i32 137, label %46
    i32 131, label %47
    i32 158, label %48
    i32 133, label %49
  ]

16:                                               ; preds = %6
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %55

17:                                               ; preds = %6
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %55

18:                                               ; preds = %6
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %55

19:                                               ; preds = %6
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  br label %55

20:                                               ; preds = %6
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  br label %55

21:                                               ; preds = %6
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  br label %55

22:                                               ; preds = %6
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8** %13, align 8
  br label %55

23:                                               ; preds = %6
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %13, align 8
  br label %55

24:                                               ; preds = %6
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %13, align 8
  br label %55

25:                                               ; preds = %6
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8** %13, align 8
  br label %55

26:                                               ; preds = %6
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8** %13, align 8
  br label %55

27:                                               ; preds = %6
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8** %13, align 8
  br label %55

28:                                               ; preds = %6
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8** %13, align 8
  br label %55

29:                                               ; preds = %6
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8** %13, align 8
  br label %55

30:                                               ; preds = %6
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8** %13, align 8
  br label %55

31:                                               ; preds = %6
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8** %13, align 8
  br label %55

32:                                               ; preds = %6
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8** %13, align 8
  br label %55

33:                                               ; preds = %6
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8** %13, align 8
  br label %55

34:                                               ; preds = %6
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8** %13, align 8
  br label %55

35:                                               ; preds = %6
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8** %13, align 8
  br label %55

36:                                               ; preds = %6
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8** %13, align 8
  br label %55

37:                                               ; preds = %6
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i8** %13, align 8
  br label %55

38:                                               ; preds = %6
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8** %13, align 8
  br label %55

39:                                               ; preds = %6
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8** %13, align 8
  br label %55

40:                                               ; preds = %6
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8** %13, align 8
  br label %55

41:                                               ; preds = %6
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i8** %13, align 8
  br label %55

42:                                               ; preds = %6
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8** %13, align 8
  br label %55

43:                                               ; preds = %6
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8** %13, align 8
  br label %55

44:                                               ; preds = %6
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i8** %13, align 8
  br label %55

45:                                               ; preds = %6
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8** %13, align 8
  br label %55

46:                                               ; preds = %6
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), i8** %13, align 8
  br label %55

47:                                               ; preds = %6
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i8** %13, align 8
  br label %55

48:                                               ; preds = %6
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i8** %13, align 8
  br label %55

49:                                               ; preds = %6
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8** %13, align 8
  br label %55

50:                                               ; preds = %6
  %51 = getelementptr inbounds [50 x i8], [50 x i8]* %14, i64 0, i64 0
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @sqlite3_snprintf(i32 50, i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i32 %52)
  %54 = getelementptr inbounds [50 x i8], [50 x i8]* %14, i64 0, i64 0
  store i8* %54, i8** %13, align 8
  br label %55

55:                                               ; preds = %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16
  %56 = load i8*, i8** %9, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8** %9, align 8
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i8*, i8** %10, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8** %10, align 8
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i8*, i8** %11, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8** %11, align 8
  br label %67

67:                                               ; preds = %66, %63
  %68 = load i8*, i8** %12, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8** %12, align 8
  br label %71

71:                                               ; preds = %70, %67
  %72 = load i8*, i8** %13, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i64 0, i64 0), i8* %72, i8* %73, i8* %74, i8* %75, i8* %76)
  %78 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %78
}

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

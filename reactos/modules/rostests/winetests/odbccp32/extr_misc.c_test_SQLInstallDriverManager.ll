; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/odbccp32/extr_misc.c_test_SQLInstallDriverManager.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/odbccp32/extr_misc.c_test_SQLInstallDriverManager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"SQLInstallDriverManager unexpectedly succeeded\0A\00", align 1
@SQL_SUCCESS_WITH_INFO = common dso_local global i64 0, align 8
@ODBC_ERROR_INVALID_BUFF_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [75 x i8] c"Expected SQLInstallDriverManager to fail with ODBC_ERROR_INVALID_BUFF_LEN\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Expected path_out to not have changed\0A\00", align 1
@ODBC_ERROR_WRITING_SYSINFO_FAILED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"not enough privileges\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"SQLInstallDriverManager unexpectedly failed: %d\0A\00", align 1
@SQL_NO_DATA = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"Expected SQL_NO_DATA, got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Expected SQL_SUCCESS_WITH_INFO, got %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"Expected path_out to show the correct amount of bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SQLInstallDriverManager to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SQLInstallDriverManager() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = call i32 @SQLInstallDriverManager(i32* null, i32 0, i32* null)
  store i32 %12, i32* %1, align 4
  %13 = call i64 @SQLInstallerErrorW(i32 1, i64* %3, i32* null, i32 0, i32* null)
  store i64 %13, i64* %2, align 8
  %14 = load i32, i32* %1, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @SQL_SUCCESS_WITH_INFO, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %0
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @ODBC_ERROR_INVALID_BUFF_LEN, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %22, %0
  %27 = phi i1 [ false, %0 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @MAX_PATH, align 4
  %31 = sdiv i32 %30, 2
  %32 = call i32 @SQLInstallDriverManager(i32* %11, i32 %31, i32* null)
  store i32 %32, i32* %1, align 4
  %33 = call i64 @SQLInstallerErrorW(i32 1, i64* %3, i32* null, i32 0, i32* null)
  store i64 %33, i64* %2, align 8
  %34 = load i32, i32* %1, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %39 = load i64, i64* %2, align 8
  %40 = load i64, i64* @SQL_SUCCESS_WITH_INFO, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %26
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* @ODBC_ERROR_INVALID_BUFF_LEN, align 8
  %45 = icmp eq i64 %43, %44
  br label %46

46:                                               ; preds = %42, %26
  %47 = phi i1 [ false, %26 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  store i32 51966, i32* %6, align 4
  %50 = load i32, i32* @MAX_PATH, align 4
  %51 = sdiv i32 %50, 2
  %52 = call i32 @SQLInstallDriverManager(i32* %11, i32 %51, i32* %6)
  store i32 %52, i32* %1, align 4
  %53 = call i64 @SQLInstallerErrorW(i32 1, i64* %3, i32* null, i32 0, i32* null)
  store i64 %53, i64* %2, align 8
  %54 = load i32, i32* %1, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %59 = load i64, i64* %2, align 8
  %60 = load i64, i64* @SQL_SUCCESS_WITH_INFO, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %46
  %63 = load i64, i64* %3, align 8
  %64 = load i64, i64* @ODBC_ERROR_INVALID_BUFF_LEN, align 8
  %65 = icmp eq i64 %63, %64
  br label %66

66:                                               ; preds = %62, %46
  %67 = phi i1 [ false, %46 ], [ %65, %62 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 51966
  %72 = zext i1 %71 to i32
  %73 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @MAX_PATH, align 4
  %75 = call i32 @SQLInstallDriverManager(i32* %11, i32 %74, i32* null)
  store i32 %75, i32* %1, align 4
  %76 = call i64 @SQLInstallerErrorW(i32 1, i64* %3, i32* null, i32 0, i32* null)
  store i64 %76, i64* %2, align 8
  %77 = load i32, i32* %1, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %66
  %80 = load i64, i64* %3, align 8
  %81 = load i64, i64* @ODBC_ERROR_WRITING_SYSINFO_FAILED, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = call i32 @win_skip(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %133

85:                                               ; preds = %79, %66
  %86 = load i32, i32* %1, align 4
  %87 = load i64, i64* %3, align 8
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 %87)
  %89 = load i32, i32* %1, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load i64, i64* %2, align 8
  %93 = load i64, i64* @SQL_NO_DATA, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i64, i64* %2, align 8
  %97 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %96)
  br label %105

98:                                               ; preds = %85
  %99 = load i64, i64* %2, align 8
  %100 = load i64, i64* @SQL_SUCCESS_WITH_INFO, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i64, i64* %2, align 8
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i64 %103)
  br label %105

105:                                              ; preds = %98, %91
  store i32 51966, i32* %6, align 4
  %106 = load i32, i32* @MAX_PATH, align 4
  %107 = call i32 @SQLInstallDriverManager(i32* %11, i32 %106, i32* %6)
  store i32 %107, i32* %1, align 4
  %108 = call i64 @SQLInstallerErrorW(i32 1, i64* %3, i32* null, i32 0, i32* null)
  store i64 %108, i64* %2, align 8
  %109 = load i32, i32* %1, align 4
  %110 = load i64, i64* %3, align 8
  %111 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 %110)
  %112 = load i32, i32* %1, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %105
  %115 = load i64, i64* %2, align 8
  %116 = load i64, i64* @SQL_NO_DATA, align 8
  %117 = icmp eq i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = load i64, i64* %2, align 8
  %120 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %119)
  br label %128

121:                                              ; preds = %105
  %122 = load i64, i64* %2, align 8
  %123 = load i64, i64* @SQL_SUCCESS_WITH_INFO, align 8
  %124 = icmp eq i64 %122, %123
  %125 = zext i1 %124 to i32
  %126 = load i64, i64* %2, align 8
  %127 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i64 %126)
  br label %128

128:                                              ; preds = %121, %114
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 51966
  %131 = zext i1 %130 to i32
  %132 = call i32 (i32, i8*, ...) @ok(i32 %131, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %133

133:                                              ; preds = %128, %83
  %134 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %134)
  %135 = load i32, i32* %7, align 4
  switch i32 %135, label %137 [
    i32 0, label %136
    i32 1, label %136
  ]

136:                                              ; preds = %133, %133
  ret void

137:                                              ; preds = %133
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SQLInstallDriverManager(i32*, i32, i32*) #2

declare dso_local i64 @SQLInstallerErrorW(i32, i64*, i32*, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @win_skip(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

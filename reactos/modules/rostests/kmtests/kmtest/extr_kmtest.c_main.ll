; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/kmtests/kmtest/extr_kmtest.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/kmtests/kmtest/extr_kmtest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_SUCCESS = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"kmtest.exe\00", align 1
@KMT_DO_NOTHING = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [110 x i8] c"Usage: %s <test_name>                 - run the specified test (creates/starts the driver(s) as appropriate)\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"       %s --list                      - list available tests\0A\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"       %s --list-all                  - list available tests, including hidden\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"       %s <create|delete|start|stop>  - manage the kmtest driver\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@SERVICE_NAME = common dso_local global i32 0, align 4
@SERVICE_PATH = common dso_local global i32 0, align 4
@SERVICE_DESCRIPTION = common dso_local global i32 0, align 4
@KmtestServiceHandle = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"--list\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"--list-all\00", align 1
@KMTEST_DEVICE_PATH = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@KmtestHandle = common dso_local global i64 0, align 8
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@cleanup = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ResultBuffer = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %13, i64* %7, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* null, i8** %9, align 8
  %14 = load i32, i32* @KMT_DO_NOTHING, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %11, align 4
  %16 = call i64 (...) @KmtServiceInit()
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %130

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %8, align 8
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %4, align 4
  %29 = icmp sle i32 %28, 1
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @printf(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i8* %37)
  store i32 129, i32* %10, align 4
  br label %89

39:                                               ; preds = %27
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @lstrcmpA(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @SERVICE_NAME, align 4
  %48 = load i32, i32* @SERVICE_PATH, align 4
  %49 = load i32, i32* @SERVICE_DESCRIPTION, align 4
  %50 = call i64 @KmtCreateService(i32 %47, i32 %48, i32 %49, i32* @KmtestServiceHandle)
  store i64 %50, i64* %7, align 8
  br label %88

51:                                               ; preds = %39
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @lstrcmpA(i8* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @SERVICE_NAME, align 4
  %57 = call i64 @KmtDeleteService(i32 %56, i32* @KmtestServiceHandle)
  store i64 %57, i64* %7, align 8
  br label %87

58:                                               ; preds = %51
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @lstrcmpA(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @SERVICE_NAME, align 4
  %64 = call i64 @KmtStartService(i32 %63, i32* @KmtestServiceHandle)
  store i64 %64, i64* %7, align 8
  br label %86

65:                                               ; preds = %58
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @lstrcmpA(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @SERVICE_NAME, align 4
  %71 = call i64 @KmtStopService(i32 %70, i32* @KmtestServiceHandle)
  store i64 %71, i64* %7, align 8
  br label %85

72:                                               ; preds = %65
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @lstrcmpA(i8* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  store i32 129, i32* %10, align 4
  br label %84

77:                                               ; preds = %72
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @lstrcmpA(i8* %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  store i32 130, i32* %10, align 4
  br label %83

82:                                               ; preds = %77
  store i32 128, i32* %10, align 4
  br label %83

83:                                               ; preds = %82, %81
  br label %84

84:                                               ; preds = %83, %76
  br label %85

85:                                               ; preds = %84, %69
  br label %86

86:                                               ; preds = %85, %62
  br label %87

87:                                               ; preds = %86, %55
  br label %88

88:                                               ; preds = %87, %46
  br label %89

89:                                               ; preds = %88, %30
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %129

92:                                               ; preds = %89
  %93 = load i32, i32* @SERVICE_NAME, align 4
  %94 = load i32, i32* @SERVICE_PATH, align 4
  %95 = load i32, i32* @SERVICE_DESCRIPTION, align 4
  %96 = load i32, i32* @FALSE, align 4
  %97 = call i64 @KmtCreateAndStartService(i32 %93, i32 %94, i32 %95, i32* @KmtestServiceHandle, i32 %96)
  store i64 %97, i64* %7, align 8
  %98 = load i64, i64* %7, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %130

101:                                              ; preds = %92
  %102 = load i32, i32* @KMTEST_DEVICE_PATH, align 4
  %103 = load i32, i32* @GENERIC_READ, align 4
  %104 = load i32, i32* @GENERIC_WRITE, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @OPEN_EXISTING, align 4
  %107 = call i64 @CreateFile(i32 %102, i32 %105, i32 0, i32* null, i32 %106, i32 0, i32* null)
  store i64 %107, i64* @KmtestHandle, align 8
  %108 = load i64, i64* @KmtestHandle, align 8
  %109 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %101
  %112 = load i64, i64* %7, align 8
  %113 = load i32, i32* @cleanup, align 4
  %114 = call i32 @error_goto(i64 %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %101
  %116 = load i32, i32* %10, align 4
  switch i32 %116, label %125 [
    i32 130, label %117
    i32 129, label %119
    i32 128, label %122
  ]

117:                                              ; preds = %115
  %118 = load i32, i32* @TRUE, align 4
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %115, %117
  %120 = load i32, i32* %11, align 4
  %121 = call i64 @ListTests(i32 %120)
  store i64 %121, i64* %7, align 8
  br label %128

122:                                              ; preds = %115
  %123 = load i8*, i8** %9, align 8
  %124 = call i64 @RunTest(i8* %123)
  store i64 %124, i64* %7, align 8
  br label %128

125:                                              ; preds = %115
  %126 = load i32, i32* @FALSE, align 4
  %127 = call i32 @assert(i32 %126)
  br label %128

128:                                              ; preds = %125, %122, %119
  br label %129

129:                                              ; preds = %128, %89
  br label %130

130:                                              ; preds = %129, %100, %19
  %131 = load i64, i64* @KmtestHandle, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i64, i64* @KmtestHandle, align 8
  %135 = call i32 @CloseHandle(i64 %134)
  br label %136

136:                                              ; preds = %133, %130
  %137 = load i64, i64* @ResultBuffer, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i64, i64* @ResultBuffer, align 8
  %141 = call i32 @KmtFreeResultBuffer(i64 %140)
  br label %142

142:                                              ; preds = %139, %136
  %143 = call i32 @KmtCloseService(i32* @KmtestServiceHandle)
  %144 = load i64, i64* %7, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i32, i32* @TRUE, align 4
  %148 = call i64 @KmtServiceCleanup(i32 %147)
  br label %152

149:                                              ; preds = %142
  %150 = load i32, i32* @FALSE, align 4
  %151 = call i64 @KmtServiceCleanup(i32 %150)
  store i64 %151, i64* %7, align 8
  br label %152

152:                                              ; preds = %149, %146
  %153 = load i64, i64* %7, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = load i64, i64* %7, align 8
  %157 = call i32 @OutputError(i64 %156)
  %158 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %155, %152
  %160 = load i32, i32* %6, align 4
  ret i32 %160
}

declare dso_local i64 @KmtServiceInit(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @lstrcmpA(i8*, i8*) #1

declare dso_local i64 @KmtCreateService(i32, i32, i32, i32*) #1

declare dso_local i64 @KmtDeleteService(i32, i32*) #1

declare dso_local i64 @KmtStartService(i32, i32*) #1

declare dso_local i64 @KmtStopService(i32, i32*) #1

declare dso_local i64 @KmtCreateAndStartService(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @CreateFile(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @error_goto(i64, i32) #1

declare dso_local i64 @ListTests(i32) #1

declare dso_local i64 @RunTest(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @KmtFreeResultBuffer(i64) #1

declare dso_local i32 @KmtCloseService(i32*) #1

declare dso_local i64 @KmtServiceCleanup(i32) #1

declare dso_local i32 @OutputError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winetest/extr_main.c_run_ex.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winetest/extr_main.c_run_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }

@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@R_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Can't open '%s': %d\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Can't save stdout: %d\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Can't redirect stdout: %d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@CREATE_DEFAULT_ERROR_MODE = common dso_local global i32 0, align 4
@R_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Wait for '%s' failed: %d\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Process '%s' timed out.\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Wait returned %d\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"TerminateProcess failed: %d\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Wait for termination of '%s' failed: %d\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Can't kill process '%s'\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Waiting for termination: %d\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Can't recover stdout: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32)* @run_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_ex(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca %struct.TYPE_7__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 -1, i32* %12, align 4
  %15 = call i32 @GetStartupInfo(%struct.TYPE_6__* %9)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %51

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @O_WRONLY, align 4
  %22 = load i32, i32* @O_CREAT, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @open(i8* %20, i32 %23, i32 438)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp eq i32 -1, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load i32, i32* @R_FATAL, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 (i32, i8*, ...) @report(i32 %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %19
  %33 = call i32 @dup(i32 1)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp eq i32 -1, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* @R_FATAL, align 4
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 (i32, i8*, ...) @report(i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @dup2(i32 %41, i32 1)
  %43 = icmp eq i32 -1, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* @R_FATAL, align 4
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 (i32, i8*, ...) @report(i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @close(i32 %49)
  br label %51

51:                                               ; preds = %48, %4
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* @TRUE, align 4
  %54 = load i32, i32* @CREATE_DEFAULT_ERROR_MODE, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @CreateProcessA(i32* null, i8* %52, i32* null, i32* null, i32 %53, i32 %54, i32* null, i8* %55, %struct.TYPE_6__* %9, %struct.TYPE_7__* %10)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  store i32 -2, i32* %14, align 4
  br label %122

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @CloseHandle(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @WaitForSingleObject(i32 %64, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp eq i32 %67, 129
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @GetExitCodeProcess(i32 %71, i32* %14)
  br label %118

73:                                               ; preds = %59
  %74 = load i32, i32* %13, align 4
  switch i32 %74, label %84 [
    i32 130, label %75
    i32 128, label %80
  ]

75:                                               ; preds = %73
  %76 = load i32, i32* @R_ERROR, align 4
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 (...) @GetLastError()
  %79 = call i32 (i32, i8*, ...) @report(i32 %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %77, i32 %78)
  br label %88

80:                                               ; preds = %73
  %81 = load i32, i32* @R_ERROR, align 4
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 (i32, i8*, ...) @report(i32 %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %82)
  br label %88

84:                                               ; preds = %73
  %85 = load i32, i32* @R_ERROR, align 4
  %86 = load i32, i32* %13, align 4
  %87 = call i32 (i32, i8*, ...) @report(i32 %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %84, %80, %75
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %14, align 4
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @TerminateProcess(i32 %91, i32 257)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %88
  %95 = load i32, i32* @R_ERROR, align 4
  %96 = call i32 (...) @GetLastError()
  %97 = call i32 (i32, i8*, ...) @report(i32 %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %94, %88
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @WaitForSingleObject(i32 %100, i32 5000)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  switch i32 %102, label %113 [
    i32 130, label %103
    i32 129, label %108
    i32 128, label %109
  ]

103:                                              ; preds = %98
  %104 = load i32, i32* @R_ERROR, align 4
  %105 = load i8*, i8** %5, align 8
  %106 = call i32 (...) @GetLastError()
  %107 = call i32 (i32, i8*, ...) @report(i32 %104, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %105, i32 %106)
  br label %117

108:                                              ; preds = %98
  br label %117

109:                                              ; preds = %98
  %110 = load i32, i32* @R_ERROR, align 4
  %111 = load i8*, i8** %5, align 8
  %112 = call i32 (i32, i8*, ...) @report(i32 %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %111)
  br label %117

113:                                              ; preds = %98
  %114 = load i32, i32* @R_ERROR, align 4
  %115 = load i32, i32* %13, align 4
  %116 = call i32 (i32, i8*, ...) @report(i32 %114, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %113, %109, %108, %103
  br label %118

118:                                              ; preds = %117, %69
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @CloseHandle(i32 %120)
  br label %122

122:                                              ; preds = %118, %58
  %123 = load i8*, i8** %6, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %137

125:                                              ; preds = %122
  %126 = call i32 @close(i32 1)
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @dup2(i32 %127, i32 1)
  %129 = icmp eq i32 -1, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load i32, i32* @R_FATAL, align 4
  %132 = load i32, i32* @errno, align 4
  %133 = call i32 (i32, i8*, ...) @report(i32 %131, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %130, %125
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @close(i32 %135)
  br label %137

137:                                              ; preds = %134, %122
  %138 = load i32, i32* %14, align 4
  ret i32 %138
}

declare dso_local i32 @GetStartupInfo(%struct.TYPE_6__*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @report(i32, i8*, ...) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @CreateProcessA(i32*, i8*, i32*, i32*, i32, i32, i32*, i8*, %struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @WaitForSingleObject(i32, i32) #1

declare dso_local i32 @GetExitCodeProcess(i32, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @TerminateProcess(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_Config.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_Config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SERVICE_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"/a\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"/auto\00", align 1
@MSG_DUPLICATE_ARGS = common dso_local global i32 0, align 4
@VFD_NG = common dso_local global i32 0, align 4
@SERVICE_AUTO_START = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"/m\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"/manual\00", align 1
@SERVICE_DEMAND_START = common dso_local global i64 0, align 8
@MSG_UNKNOWN_OPTION = common dso_local global i32 0, align 4
@MSG_HINT_CONFIG = common dso_local global i32 0, align 4
@help_progname = common dso_local global i32 0, align 4
@driver_state = common dso_local global i64 0, align 8
@VFD_NOT_INSTALLED = common dso_local global i64 0, align 8
@MSG_NOT_INSTALLED = common dso_local global i32 0, align 4
@VFD_OK = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@MSG_CONFIG_NG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MSG_CONFIG_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Config(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  %6 = load i64, i64* @SERVICE_DISABLED, align 8
  store i64 %6, i64* %4, align 8
  br label %7

7:                                                ; preds = %70, %1
  %8 = load i8**, i8*** %3, align 8
  %9 = icmp ne i8** %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i8**, i8*** %3, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i1 [ false, %7 ], [ %13, %10 ]
  br i1 %15, label %16, label %73

16:                                               ; preds = %14
  %17 = load i8**, i8*** %3, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @_stricmp(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i8**, i8*** %3, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @_stricmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %21, %16
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @SERVICE_DISABLED, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* @MSG_DUPLICATE_ARGS, align 4
  %32 = load i8**, i8*** %3, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i32, ...) @PrintMessage(i32 %31, i8* %33)
  %35 = load i32, i32* @VFD_NG, align 4
  store i32 %35, i32* %2, align 4
  br label %114

36:                                               ; preds = %26
  %37 = load i64, i64* @SERVICE_AUTO_START, align 8
  store i64 %37, i64* %4, align 8
  br label %70

38:                                               ; preds = %21
  %39 = load i8**, i8*** %3, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @_stricmp(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i8**, i8*** %3, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @_stricmp(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %43, %38
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @SERVICE_DISABLED, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* @MSG_DUPLICATE_ARGS, align 4
  %54 = load i8**, i8*** %3, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i32, ...) @PrintMessage(i32 %53, i8* %55)
  %57 = load i32, i32* @VFD_NG, align 4
  store i32 %57, i32* %2, align 4
  br label %114

58:                                               ; preds = %48
  %59 = load i64, i64* @SERVICE_DEMAND_START, align 8
  store i64 %59, i64* %4, align 8
  br label %69

60:                                               ; preds = %43
  %61 = load i32, i32* @MSG_UNKNOWN_OPTION, align 4
  %62 = load i8**, i8*** %3, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i32, ...) @PrintMessage(i32 %61, i8* %63)
  %65 = load i32, i32* @MSG_HINT_CONFIG, align 4
  %66 = load i32, i32* @help_progname, align 4
  %67 = call i32 (i32, ...) @PrintMessage(i32 %65, i32 %66)
  %68 = load i32, i32* @VFD_NG, align 4
  store i32 %68, i32* %2, align 4
  br label %114

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %36
  %71 = load i8**, i8*** %3, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i32 1
  store i8** %72, i8*** %3, align 8
  br label %7

73:                                               ; preds = %14
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* @SERVICE_DISABLED, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i32, i32* @MSG_HINT_CONFIG, align 4
  %79 = load i32, i32* @help_progname, align 4
  %80 = call i32 (i32, ...) @PrintMessage(i32 %78, i32 %79)
  %81 = load i32, i32* @VFD_NG, align 4
  store i32 %81, i32* %2, align 4
  br label %114

82:                                               ; preds = %73
  %83 = load i64, i64* @driver_state, align 8
  %84 = load i64, i64* @VFD_NOT_INSTALLED, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* @MSG_NOT_INSTALLED, align 4
  %88 = call i32 (i32, ...) @PrintMessage(i32 %87)
  %89 = load i32, i32* @VFD_NG, align 4
  store i32 %89, i32* %2, align 4
  br label %114

90:                                               ; preds = %82
  %91 = call i64 (...) @CheckDriver()
  %92 = load i64, i64* @VFD_OK, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* @VFD_NG, align 4
  store i32 %95, i32* %2, align 4
  br label %114

96:                                               ; preds = %90
  %97 = load i64, i64* %4, align 8
  %98 = call i64 @VfdConfigDriver(i64 %97)
  store i64 %98, i64* %5, align 8
  %99 = load i64, i64* %5, align 8
  %100 = load i64, i64* @ERROR_SUCCESS, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %96
  %103 = load i32, i32* @MSG_CONFIG_NG, align 4
  %104 = call i32 (i32, ...) @PrintMessage(i32 %103)
  %105 = load i64, i64* %5, align 8
  %106 = call i8* @SystemError(i64 %105)
  %107 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %106)
  %108 = load i32, i32* @VFD_NG, align 4
  store i32 %108, i32* %2, align 4
  br label %114

109:                                              ; preds = %96
  %110 = load i32, i32* @MSG_CONFIG_OK, align 4
  %111 = call i32 (i32, ...) @PrintMessage(i32 %110)
  %112 = load i64, i64* @VFD_OK, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %109, %102, %94, %86, %77, %60, %52, %30
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @_stricmp(i8*, i8*) #1

declare dso_local i32 @PrintMessage(i32, ...) #1

declare dso_local i64 @CheckDriver(...) #1

declare dso_local i64 @VfdConfigDriver(i64) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @SystemError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

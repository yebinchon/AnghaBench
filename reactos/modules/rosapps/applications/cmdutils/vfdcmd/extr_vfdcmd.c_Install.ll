; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_Install.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_Install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SERVICE_DEMAND_START = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"/a\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"/auto\00", align 1
@MSG_DUPLICATE_ARGS = common dso_local global i32 0, align 4
@VFD_NG = common dso_local global i32 0, align 4
@SERVICE_AUTO_START = common dso_local global i64 0, align 8
@MSG_UNKNOWN_OPTION = common dso_local global i32 0, align 4
@MSG_HINT_INSTALL = common dso_local global i32 0, align 4
@help_progname = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@driver_state = common dso_local global i64 0, align 8
@VFD_NOT_INSTALLED = common dso_local global i64 0, align 8
@MSG_DRIVER_EXISTS = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@MSG_INSTALL_NG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MSG_GET_STAT_NG = common dso_local global i32 0, align 4
@MSG_INSTALL_OK = common dso_local global i32 0, align 4
@VFD_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Install(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  store i8* null, i8** %4, align 8
  %7 = load i64, i64* @SERVICE_DEMAND_START, align 8
  store i64 %7, i64* %5, align 8
  br label %8

8:                                                ; preds = %65, %1
  %9 = load i8**, i8*** %3, align 8
  %10 = icmp ne i8** %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i8**, i8*** %3, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i1 [ false, %8 ], [ %14, %11 ]
  br i1 %16, label %17, label %68

17:                                               ; preds = %15
  %18 = load i8**, i8*** %3, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @_stricmp(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i8**, i8*** %3, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @_stricmp(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %22, %17
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @SERVICE_DEMAND_START, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* @MSG_DUPLICATE_ARGS, align 4
  %33 = load i8**, i8*** %3, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i32, ...) @PrintMessage(i32 %32, i8* %34)
  %36 = load i32, i32* @VFD_NG, align 4
  store i32 %36, i32* %2, align 4
  br label %106

37:                                               ; preds = %27
  %38 = load i64, i64* @SERVICE_AUTO_START, align 8
  store i64 %38, i64* %5, align 8
  br label %65

39:                                               ; preds = %22
  %40 = load i8**, i8*** %3, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 47
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load i32, i32* @MSG_UNKNOWN_OPTION, align 4
  %47 = load i8**, i8*** %3, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 (i32, ...) @PrintMessage(i32 %46, i8* %48)
  %50 = load i32, i32* @MSG_HINT_INSTALL, align 4
  %51 = load i32, i32* @help_progname, align 4
  %52 = call i32 (i32, ...) @PrintMessage(i32 %50, i32 %51)
  %53 = load i32, i32* @VFD_NG, align 4
  store i32 %53, i32* %2, align 4
  br label %106

54:                                               ; preds = %39
  %55 = load i8*, i8** %4, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* @MSG_DUPLICATE_ARGS, align 4
  %59 = call i32 (i32, ...) @PrintMessage(i32 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @VFD_NG, align 4
  store i32 %60, i32* %2, align 4
  br label %106

61:                                               ; preds = %54
  %62 = load i8**, i8*** %3, align 8
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %4, align 8
  br label %64

64:                                               ; preds = %61
  br label %65

65:                                               ; preds = %64, %37
  %66 = load i8**, i8*** %3, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i32 1
  store i8** %67, i8*** %3, align 8
  br label %8

68:                                               ; preds = %15
  %69 = load i64, i64* @driver_state, align 8
  %70 = load i64, i64* @VFD_NOT_INSTALLED, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32, i32* @MSG_DRIVER_EXISTS, align 4
  %74 = call i32 (i32, ...) @PrintMessage(i32 %73)
  %75 = load i32, i32* @VFD_NG, align 4
  store i32 %75, i32* %2, align 4
  br label %106

76:                                               ; preds = %68
  %77 = load i8*, i8** %4, align 8
  %78 = load i64, i64* %5, align 8
  %79 = call i64 @VfdInstallDriver(i8* %77, i64 %78)
  store i64 %79, i64* %6, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* @ERROR_SUCCESS, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %76
  %84 = load i32, i32* @MSG_INSTALL_NG, align 4
  %85 = call i32 (i32, ...) @PrintMessage(i32 %84)
  %86 = load i64, i64* %6, align 8
  %87 = call i8* @SystemError(i64 %86)
  %88 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %87)
  %89 = load i32, i32* @VFD_NG, align 4
  store i32 %89, i32* %2, align 4
  br label %106

90:                                               ; preds = %76
  %91 = call i64 @VfdGetDriverState(i64* @driver_state)
  store i64 %91, i64* %6, align 8
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* @ERROR_SUCCESS, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load i32, i32* @MSG_GET_STAT_NG, align 4
  %97 = call i32 (i32, ...) @PrintMessage(i32 %96)
  %98 = load i64, i64* %6, align 8
  %99 = call i8* @SystemError(i64 %98)
  %100 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %99)
  %101 = load i32, i32* @VFD_NG, align 4
  store i32 %101, i32* %2, align 4
  br label %106

102:                                              ; preds = %90
  %103 = load i32, i32* @MSG_INSTALL_OK, align 4
  %104 = call i32 (i32, ...) @PrintMessage(i32 %103)
  %105 = load i32, i32* @VFD_OK, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %102, %95, %83, %72, %57, %45, %31
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @_stricmp(i8*, i8*) #1

declare dso_local i32 @PrintMessage(i32, ...) #1

declare dso_local i64 @VfdInstallDriver(i8*, i64) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @SystemError(i64) #1

declare dso_local i64 @VfdGetDriverState(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

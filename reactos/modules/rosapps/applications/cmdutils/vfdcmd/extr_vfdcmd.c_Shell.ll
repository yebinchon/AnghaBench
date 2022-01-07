; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_Shell.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_Shell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@MSG_GET_SHELLEXT_NG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@VFD_NG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"/on\00", align 1
@MSG_SET_SHELLEXT_NG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"/off\00", align 1
@MSG_UNKNOWN_OPTION = common dso_local global i32 0, align 4
@MSG_HINT_SHELL = common dso_local global i32 0, align 4
@help_progname = common dso_local global i32 0, align 4
@MSG_SHELLEXT_DISABLED = common dso_local global i32 0, align 4
@MSG_SHELLEXT_ENABLED = common dso_local global i32 0, align 4
@VFD_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Shell(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  %5 = call i64 (...) @VfdCheckHandlers()
  store i64 %5, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @ERROR_SUCCESS, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @ERROR_PATH_NOT_FOUND, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load i32, i32* @MSG_GET_SHELLEXT_NG, align 4
  %19 = call i32 (i32, ...) @PrintMessage(i32 %18)
  %20 = load i64, i64* %4, align 8
  %21 = call i8* @SystemError(i64 %20)
  %22 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* @VFD_NG, align 4
  store i32 %23, i32* %2, align 4
  br label %117

24:                                               ; preds = %13, %9, %1
  %25 = load i8**, i8*** %3, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %27, label %89

27:                                               ; preds = %24
  %28 = load i8**, i8*** %3, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %89

31:                                               ; preds = %27
  %32 = load i8**, i8*** %3, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @_stricmp(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %31
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @ERROR_SUCCESS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = call i64 (...) @VfdRegisterHandlers()
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @ERROR_SUCCESS, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32, i32* @MSG_SET_SHELLEXT_NG, align 4
  %47 = call i32 (i32, ...) @PrintMessage(i32 %46)
  %48 = load i64, i64* %4, align 8
  %49 = call i8* @SystemError(i64 %48)
  %50 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @VFD_NG, align 4
  store i32 %51, i32* %2, align 4
  br label %117

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %36
  br label %87

54:                                               ; preds = %31
  %55 = load i8**, i8*** %3, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @_stricmp(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %54
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @ERROR_SUCCESS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = call i64 (...) @VfdUnregisterHandlers()
  store i64 %64, i64* %4, align 8
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* @ERROR_SUCCESS, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i32, i32* @MSG_SET_SHELLEXT_NG, align 4
  %70 = call i32 (i32, ...) @PrintMessage(i32 %69)
  %71 = load i64, i64* %4, align 8
  %72 = call i8* @SystemError(i64 %71)
  %73 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %72)
  %74 = load i32, i32* @VFD_NG, align 4
  store i32 %74, i32* %2, align 4
  br label %117

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75, %59
  br label %86

77:                                               ; preds = %54
  %78 = load i32, i32* @MSG_UNKNOWN_OPTION, align 4
  %79 = load i8**, i8*** %3, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (i32, ...) @PrintMessage(i32 %78, i8* %80)
  %82 = load i32, i32* @MSG_HINT_SHELL, align 4
  %83 = load i32, i32* @help_progname, align 4
  %84 = call i32 (i32, ...) @PrintMessage(i32 %82, i32 %83)
  %85 = load i32, i32* @VFD_NG, align 4
  store i32 %85, i32* %2, align 4
  br label %117

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %53
  %88 = call i64 (...) @VfdCheckHandlers()
  store i64 %88, i64* %4, align 8
  br label %89

89:                                               ; preds = %87, %27, %24
  %90 = load i64, i64* %4, align 8
  %91 = load i64, i64* @ERROR_PATH_NOT_FOUND, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i64, i64* %4, align 8
  %95 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93, %89
  %98 = load i32, i32* @MSG_SHELLEXT_DISABLED, align 4
  %99 = call i32 (i32, ...) @PrintMessage(i32 %98)
  br label %115

100:                                              ; preds = %93
  %101 = load i64, i64* %4, align 8
  %102 = load i64, i64* @ERROR_SUCCESS, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* @MSG_SHELLEXT_ENABLED, align 4
  %106 = call i32 (i32, ...) @PrintMessage(i32 %105)
  br label %114

107:                                              ; preds = %100
  %108 = load i32, i32* @MSG_GET_SHELLEXT_NG, align 4
  %109 = call i32 (i32, ...) @PrintMessage(i32 %108)
  %110 = load i64, i64* %4, align 8
  %111 = call i8* @SystemError(i64 %110)
  %112 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %111)
  %113 = load i32, i32* @VFD_NG, align 4
  store i32 %113, i32* %2, align 4
  br label %117

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %114, %97
  %116 = load i32, i32* @VFD_OK, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %115, %107, %77, %68, %45, %17
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i64 @VfdCheckHandlers(...) #1

declare dso_local i32 @PrintMessage(i32, ...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @SystemError(i64) #1

declare dso_local i64 @_stricmp(i8*, i8*) #1

declare dso_local i64 @VfdRegisterHandlers(...) #1

declare dso_local i64 @VfdUnregisterHandlers(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_Unlink.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_Unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_NONE = common dso_local global i32 0, align 4
@MSG_DUPLICATE_ARGS = common dso_local global i32 0, align 4
@VFD_NG = common dso_local global i32 0, align 4
@VFD_MAXIMUM_DEVICES = common dso_local global i32 0, align 4
@MSG_UNKNOWN_OPTION = common dso_local global i32 0, align 4
@MSG_HINT_ULINK = common dso_local global i32 0, align 4
@help_progname = common dso_local global i32 0, align 4
@MSG_TARGET_NOTICE = common dso_local global i32 0, align 4
@driver_state = common dso_local global i64 0, align 8
@VFD_NOT_INSTALLED = common dso_local global i64 0, align 8
@MSG_NOT_INSTALLED = common dso_local global i32 0, align 4
@VFD_OK = common dso_local global i64 0, align 8
@SERVICE_RUNNING = common dso_local global i64 0, align 8
@MSG_NOT_STARTED = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@MSG_ACCESS_NG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Unlink(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %9 = load i32, i32* @TARGET_NONE, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @TARGET_NONE, align 4
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %82, %1
  %12 = load i8**, i8*** %3, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i8**, i8*** %3, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ false, %11 ], [ %17, %14 ]
  br i1 %19, label %20, label %85

20:                                               ; preds = %18
  %21 = load i8**, i8*** %3, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @isalnum(i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load i8**, i8*** %3, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 42
  br i1 %31, label %32, label %73

32:                                               ; preds = %26, %20
  %33 = load i8**, i8*** %3, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 58
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = load i8**, i8*** %3, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %39, %32
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @TARGET_NONE, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32, i32* @MSG_DUPLICATE_ARGS, align 4
  %52 = load i8**, i8*** %3, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i32, ...) @PrintMessage(i32 %51, i8* %53)
  %55 = load i32, i32* @VFD_NG, align 4
  store i32 %55, i32* %2, align 4
  br label %168

56:                                               ; preds = %46
  %57 = load i8**, i8*** %3, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 42
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  store i32 48, i32* %4, align 4
  %63 = load i32, i32* @VFD_MAXIMUM_DEVICES, align 4
  %64 = add nsw i32 48, %63
  store i32 %64, i32* %5, align 4
  br label %72

65:                                               ; preds = %56
  %66 = load i8**, i8*** %3, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %65, %62
  br label %82

73:                                               ; preds = %39, %26
  %74 = load i32, i32* @MSG_UNKNOWN_OPTION, align 4
  %75 = load i8**, i8*** %3, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i32, ...) @PrintMessage(i32 %74, i8* %76)
  %78 = load i32, i32* @MSG_HINT_ULINK, align 4
  %79 = load i32, i32* @help_progname, align 4
  %80 = call i32 (i32, ...) @PrintMessage(i32 %78, i32 %79)
  %81 = load i32, i32* @VFD_NG, align 4
  store i32 %81, i32* %2, align 4
  br label %168

82:                                               ; preds = %72
  %83 = load i8**, i8*** %3, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i32 1
  store i8** %84, i8*** %3, align 8
  br label %11

85:                                               ; preds = %18
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @TARGET_NONE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  store i32 48, i32* %4, align 4
  store i32 49, i32* %5, align 4
  %90 = load i32, i32* @MSG_TARGET_NOTICE, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call i32 (i32, ...) @PrintMessage(i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %85
  %94 = load i64, i64* @driver_state, align 8
  %95 = load i64, i64* @VFD_NOT_INSTALLED, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i32, i32* @MSG_NOT_INSTALLED, align 4
  %99 = call i32 (i32, ...) @PrintMessage(i32 %98)
  %100 = load i32, i32* @VFD_NG, align 4
  store i32 %100, i32* %2, align 4
  br label %168

101:                                              ; preds = %93
  %102 = call i64 (...) @CheckDriver()
  %103 = load i64, i64* @VFD_OK, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, i32* @VFD_NG, align 4
  store i32 %106, i32* %2, align 4
  br label %168

107:                                              ; preds = %101
  %108 = load i64, i64* @driver_state, align 8
  %109 = load i64, i64* @SERVICE_RUNNING, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32, i32* @MSG_NOT_STARTED, align 4
  %113 = call i32 (i32, ...) @PrintMessage(i32 %112)
  %114 = load i32, i32* @VFD_NG, align 4
  store i32 %114, i32* %2, align 4
  br label %168

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %153, %142, %126, %115
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %165

120:                                              ; preds = %116
  %121 = load i32, i32* %4, align 4
  %122 = call i64 @VfdOpenDevice(i32 %121)
  store i64 %122, i64* %6, align 8
  %123 = load i64, i64* %6, align 8
  %124 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %120
  %127 = call i32 (...) @GetLastError()
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* @MSG_ACCESS_NG, align 4
  %129 = load i32, i32* %4, align 4
  %130 = call i32 (i32, ...) @PrintMessage(i32 %128, i32 %129)
  %131 = load i32, i32* %7, align 4
  %132 = call i8* @SystemError(i32 %131)
  %133 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %132)
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %4, align 4
  br label %116

136:                                              ; preds = %120
  %137 = load i64, i64* %6, align 8
  %138 = call i32 @VfdGetDeviceNumber(i64 %137, i32* %8)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @ERROR_SUCCESS, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %153

142:                                              ; preds = %136
  %143 = load i32, i32* @MSG_ACCESS_NG, align 4
  %144 = load i32, i32* %4, align 4
  %145 = call i32 (i32, ...) @PrintMessage(i32 %143, i32 %144)
  %146 = load i32, i32* %7, align 4
  %147 = call i8* @SystemError(i32 %146)
  %148 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %147)
  %149 = load i64, i64* %6, align 8
  %150 = call i32 @CloseHandle(i64 %149)
  %151 = load i32, i32* %4, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %4, align 4
  br label %116

153:                                              ; preds = %136
  %154 = load i64, i64* %6, align 8
  %155 = call i32 @VfdSetGlobalLink(i64 %154, i32 0)
  %156 = load i64, i64* %6, align 8
  %157 = call i32 @VfdSetLocalLink(i64 %156, i32 0)
  %158 = load i64, i64* %6, align 8
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @PrintDriveLetter(i64 %158, i32 %159)
  %161 = load i64, i64* %6, align 8
  %162 = call i32 @CloseHandle(i64 %161)
  %163 = load i32, i32* %4, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %4, align 4
  br label %116

165:                                              ; preds = %116
  %166 = load i64, i64* @VFD_OK, align 8
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %165, %111, %105, %97, %73, %50
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i32 @PrintMessage(i32, ...) #1

declare dso_local i64 @CheckDriver(...) #1

declare dso_local i64 @VfdOpenDevice(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @SystemError(i32) #1

declare dso_local i32 @VfdGetDeviceNumber(i64, i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @VfdSetGlobalLink(i64, i32) #1

declare dso_local i32 @VfdSetLocalLink(i64, i32) #1

declare dso_local i32 @PrintDriveLetter(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

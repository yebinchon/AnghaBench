; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_Protect.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_Protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"/on\00", align 1
@MSG_DUPLICATE_ARGS = common dso_local global i32 0, align 4
@VFD_NG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"/off\00", align 1
@MSG_UNKNOWN_OPTION = common dso_local global i32 0, align 4
@MSG_HINT_PROTECT = common dso_local global i32 0, align 4
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
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@MSG_PROTECT_NG = common dso_local global i32 0, align 4
@MSG_MEDIA_WRITABLE = common dso_local global i32 0, align 4
@ERROR_WRITE_PROTECT = common dso_local global i64 0, align 8
@MSG_MEDIA_PROTECTED = common dso_local global i32 0, align 4
@MSG_GET_MEDIA_NG = common dso_local global i32 0, align 4
@PROTECT_NONE = common dso_local global i64 0, align 8
@PROTECT_OFF = common dso_local global i64 0, align 8
@PROTECT_ON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Protect(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load i64, i64* @TARGET_NONE, align 8
  store i64 %8, i64* %5, align 8
  br label %9

9:                                                ; preds = %80, %1
  %10 = load i8**, i8*** %3, align 8
  %11 = icmp ne i8** %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i8**, i8*** %3, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi i1 [ false, %9 ], [ %15, %12 ]
  br i1 %17, label %18, label %83

18:                                               ; preds = %16
  %19 = load i8**, i8*** %3, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @_stricmp(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* @MSG_DUPLICATE_ARGS, align 4
  %28 = load i8**, i8*** %3, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i32, ...) @PrintMessage(i32 %27, i8* %29)
  %31 = load i32, i32* @VFD_NG, align 4
  store i32 %31, i32* %2, align 4
  br label %180

32:                                               ; preds = %23
  store i64 1, i64* %4, align 8
  br label %80

33:                                               ; preds = %18
  %34 = load i8**, i8*** %3, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @_stricmp(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* @MSG_DUPLICATE_ARGS, align 4
  %43 = load i8**, i8*** %3, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i32, ...) @PrintMessage(i32 %42, i8* %44)
  %46 = load i32, i32* @VFD_NG, align 4
  store i32 %46, i32* %2, align 4
  br label %180

47:                                               ; preds = %38
  store i64 2, i64* %4, align 8
  br label %79

48:                                               ; preds = %33
  %49 = load i8**, i8*** %3, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @isalnum(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %48
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @TARGET_NONE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* @MSG_DUPLICATE_ARGS, align 4
  %60 = load i8**, i8*** %3, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (i32, ...) @PrintMessage(i32 %59, i8* %61)
  %63 = load i32, i32* @VFD_NG, align 4
  store i32 %63, i32* %2, align 4
  br label %180

64:                                               ; preds = %54
  %65 = load i8**, i8*** %3, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i8, i8* %66, align 1
  %68 = call i64 @toupper(i8 signext %67)
  store i64 %68, i64* %5, align 8
  br label %78

69:                                               ; preds = %48
  %70 = load i32, i32* @MSG_UNKNOWN_OPTION, align 4
  %71 = load i8**, i8*** %3, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (i32, ...) @PrintMessage(i32 %70, i8* %72)
  %74 = load i32, i32* @MSG_HINT_PROTECT, align 4
  %75 = load i32, i32* @help_progname, align 4
  %76 = call i32 (i32, ...) @PrintMessage(i32 %74, i32 %75)
  %77 = load i32, i32* @VFD_NG, align 4
  store i32 %77, i32* %2, align 4
  br label %180

78:                                               ; preds = %64
  br label %79

79:                                               ; preds = %78, %47
  br label %80

80:                                               ; preds = %79, %32
  %81 = load i8**, i8*** %3, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i32 1
  store i8** %82, i8*** %3, align 8
  br label %9

83:                                               ; preds = %16
  %84 = load i64, i64* %5, align 8
  %85 = load i64, i64* @TARGET_NONE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  store i64 48, i64* %5, align 8
  %88 = load i32, i32* @MSG_TARGET_NOTICE, align 4
  %89 = load i64, i64* %5, align 8
  %90 = call i32 (i32, ...) @PrintMessage(i32 %88, i64 %89)
  br label %91

91:                                               ; preds = %87, %83
  %92 = load i64, i64* @driver_state, align 8
  %93 = load i64, i64* @VFD_NOT_INSTALLED, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32, i32* @MSG_NOT_INSTALLED, align 4
  %97 = call i32 (i32, ...) @PrintMessage(i32 %96)
  %98 = load i32, i32* @VFD_NG, align 4
  store i32 %98, i32* %2, align 4
  br label %180

99:                                               ; preds = %91
  %100 = call i64 (...) @CheckDriver()
  %101 = load i64, i64* @VFD_OK, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* @VFD_NG, align 4
  store i32 %104, i32* %2, align 4
  br label %180

105:                                              ; preds = %99
  %106 = load i64, i64* @driver_state, align 8
  %107 = load i64, i64* @SERVICE_RUNNING, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i32, i32* @MSG_NOT_STARTED, align 4
  %111 = call i32 (i32, ...) @PrintMessage(i32 %110)
  %112 = load i32, i32* @VFD_NG, align 4
  store i32 %112, i32* %2, align 4
  br label %180

113:                                              ; preds = %105
  %114 = load i64, i64* %5, align 8
  %115 = call i64 @VfdOpenDevice(i64 %114)
  store i64 %115, i64* %6, align 8
  %116 = load i64, i64* %6, align 8
  %117 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %113
  %120 = call i64 (...) @GetLastError()
  store i64 %120, i64* %7, align 8
  %121 = load i32, i32* @MSG_ACCESS_NG, align 4
  %122 = load i64, i64* %5, align 8
  %123 = call i32 (i32, ...) @PrintMessage(i32 %121, i64 %122)
  %124 = load i64, i64* %7, align 8
  %125 = call i8* @SystemError(i64 %124)
  %126 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %125)
  %127 = load i32, i32* @VFD_NG, align 4
  store i32 %127, i32* %2, align 4
  br label %180

128:                                              ; preds = %113
  %129 = load i64, i64* %4, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %151

131:                                              ; preds = %128
  %132 = load i64, i64* %6, align 8
  %133 = load i64, i64* %4, align 8
  %134 = icmp eq i64 %133, 1
  %135 = zext i1 %134 to i32
  %136 = call i64 @VfdWriteProtect(i64 %132, i32 %135)
  store i64 %136, i64* %7, align 8
  %137 = load i64, i64* %7, align 8
  %138 = load i64, i64* @ERROR_SUCCESS, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %131
  %141 = load i32, i32* @MSG_PROTECT_NG, align 4
  %142 = load i64, i64* %5, align 8
  %143 = call i32 (i32, ...) @PrintMessage(i32 %141, i64 %142)
  %144 = load i64, i64* %7, align 8
  %145 = call i8* @SystemError(i64 %144)
  %146 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %145)
  %147 = load i64, i64* %6, align 8
  %148 = call i32 @CloseHandle(i64 %147)
  %149 = load i32, i32* @VFD_NG, align 4
  store i32 %149, i32* %2, align 4
  br label %180

150:                                              ; preds = %131
  br label %151

151:                                              ; preds = %150, %128
  %152 = load i64, i64* %6, align 8
  %153 = call i64 @VfdGetMediaState(i64 %152)
  store i64 %153, i64* %7, align 8
  %154 = load i64, i64* %6, align 8
  %155 = call i32 @CloseHandle(i64 %154)
  %156 = load i64, i64* %7, align 8
  %157 = load i64, i64* @ERROR_SUCCESS, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %151
  %160 = load i32, i32* @MSG_MEDIA_WRITABLE, align 4
  %161 = call i32 (i32, ...) @PrintMessage(i32 %160)
  br label %177

162:                                              ; preds = %151
  %163 = load i64, i64* %7, align 8
  %164 = load i64, i64* @ERROR_WRITE_PROTECT, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = load i32, i32* @MSG_MEDIA_PROTECTED, align 4
  %168 = call i32 (i32, ...) @PrintMessage(i32 %167)
  br label %176

169:                                              ; preds = %162
  %170 = load i32, i32* @MSG_GET_MEDIA_NG, align 4
  %171 = call i32 (i32, ...) @PrintMessage(i32 %170)
  %172 = load i64, i64* %7, align 8
  %173 = call i8* @SystemError(i64 %172)
  %174 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %173)
  %175 = load i32, i32* @VFD_NG, align 4
  store i32 %175, i32* %2, align 4
  br label %180

176:                                              ; preds = %166
  br label %177

177:                                              ; preds = %176, %159
  %178 = load i64, i64* @VFD_OK, align 8
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %2, align 4
  br label %180

180:                                              ; preds = %177, %169, %140, %119, %109, %103, %95, %69, %58, %41, %26
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i64 @_stricmp(i8*, i8*) #1

declare dso_local i32 @PrintMessage(i32, ...) #1

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i64 @toupper(i8 signext) #1

declare dso_local i64 @CheckDriver(...) #1

declare dso_local i64 @VfdOpenDevice(i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @SystemError(i64) #1

declare dso_local i64 @VfdWriteProtect(i64, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i64 @VfdGetMediaState(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

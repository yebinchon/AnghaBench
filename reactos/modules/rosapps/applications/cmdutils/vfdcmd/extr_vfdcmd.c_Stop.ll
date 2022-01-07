; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_Stop.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_Stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPERATION_ASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@__const.Stop.close_params = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* null, i8* null], align 16
@.str.1 = private unnamed_addr constant [3 x i8] c"/f\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"/force\00", align 1
@MSG_DUPLICATE_ARGS = common dso_local global i32 0, align 4
@VFD_NG = common dso_local global i32 0, align 4
@OPERATION_FORCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"/q\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"/quit\00", align 1
@OPERATION_QUIT = common dso_local global i32 0, align 4
@MSG_UNKNOWN_OPTION = common dso_local global i32 0, align 4
@MSG_HINT_STOP = common dso_local global i32 0, align 4
@help_progname = common dso_local global i32 0, align 4
@driver_state = common dso_local global i64 0, align 8
@VFD_NOT_INSTALLED = common dso_local global i64 0, align 8
@MSG_NOT_INSTALLED = common dso_local global i32 0, align 4
@SERVICE_STOPPED = common dso_local global i64 0, align 8
@MSG_NOT_STARTED = common dso_local global i32 0, align 4
@SERVICE_RUNNING = common dso_local global i64 0, align 8
@VFD_OK = common dso_local global i64 0, align 8
@MSG_STOP_FORCE = common dso_local global i32 0, align 4
@MSG_STOP_QUIT = common dso_local global i32 0, align 4
@MSG_STOP_WARN = common dso_local global i32 0, align 4
@MSG_RETRY_FORCE_CANCEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"rfc\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@MSG_STOP_NG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MSG_STOP_PENDING = common dso_local global i32 0, align 4
@MSG_STOP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Stop(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i8*], align 16
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %8 = load i32, i32* @OPERATION_ASK, align 4
  store i32 %8, i32* %4, align 4
  %9 = bitcast [3 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([3 x i8*]* @__const.Stop.close_params to i8*), i64 24, i1 false)
  br label %10

10:                                               ; preds = %79, %1
  %11 = load i8**, i8*** %3, align 8
  %12 = icmp ne i8** %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i8**, i8*** %3, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i1 [ false, %10 ], [ %16, %13 ]
  br i1 %18, label %19, label %82

19:                                               ; preds = %17
  %20 = load i8**, i8*** %3, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @_stricmp(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i8**, i8*** %3, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @_stricmp(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @OPERATION_ASK, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* @MSG_DUPLICATE_ARGS, align 4
  %35 = load i8**, i8*** %3, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i32, ...) @PrintMessage(i32 %34, i8* %36)
  %38 = load i32, i32* @VFD_NG, align 4
  store i32 %38, i32* %2, align 4
  br label %166

39:                                               ; preds = %29
  %40 = load i32, i32* @OPERATION_FORCE, align 4
  store i32 %40, i32* %4, align 4
  %41 = load i8**, i8*** %3, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 1
  store i8* %42, i8** %43, align 8
  br label %79

44:                                               ; preds = %24
  %45 = load i8**, i8*** %3, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @_stricmp(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i8**, i8*** %3, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @_stricmp(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @OPERATION_ASK, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* @MSG_DUPLICATE_ARGS, align 4
  %60 = load i8**, i8*** %3, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (i32, ...) @PrintMessage(i32 %59, i8* %61)
  %63 = load i32, i32* @VFD_NG, align 4
  store i32 %63, i32* %2, align 4
  br label %166

64:                                               ; preds = %54
  %65 = load i32, i32* @OPERATION_QUIT, align 4
  store i32 %65, i32* %4, align 4
  %66 = load i8**, i8*** %3, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 1
  store i8* %67, i8** %68, align 8
  br label %78

69:                                               ; preds = %49
  %70 = load i32, i32* @MSG_UNKNOWN_OPTION, align 4
  %71 = load i8**, i8*** %3, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (i32, ...) @PrintMessage(i32 %70, i8* %72)
  %74 = load i32, i32* @MSG_HINT_STOP, align 4
  %75 = load i32, i32* @help_progname, align 4
  %76 = call i32 (i32, ...) @PrintMessage(i32 %74, i32 %75)
  %77 = load i32, i32* @VFD_NG, align 4
  store i32 %77, i32* %2, align 4
  br label %166

78:                                               ; preds = %64
  br label %79

79:                                               ; preds = %78, %39
  %80 = load i8**, i8*** %3, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i32 1
  store i8** %81, i8*** %3, align 8
  br label %10

82:                                               ; preds = %17
  %83 = load i64, i64* @driver_state, align 8
  %84 = load i64, i64* @VFD_NOT_INSTALLED, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* @MSG_NOT_INSTALLED, align 4
  %88 = call i32 (i32, ...) @PrintMessage(i32 %87)
  %89 = load i32, i32* @VFD_NG, align 4
  store i32 %89, i32* %2, align 4
  br label %166

90:                                               ; preds = %82
  %91 = load i64, i64* @driver_state, align 8
  %92 = load i64, i64* @SERVICE_STOPPED, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32, i32* @MSG_NOT_STARTED, align 4
  %96 = call i32 (i32, ...) @PrintMessage(i32 %95)
  %97 = load i32, i32* @VFD_NG, align 4
  store i32 %97, i32* %2, align 4
  br label %166

98:                                               ; preds = %90
  %99 = load i64, i64* @driver_state, align 8
  %100 = load i64, i64* @SERVICE_RUNNING, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %141

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %139, %102
  %104 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 0
  %105 = call i64 @Close(i8** %104)
  %106 = load i64, i64* @VFD_OK, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %140

108:                                              ; preds = %103
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @OPERATION_FORCE, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* @MSG_STOP_FORCE, align 4
  %114 = call i32 (i32, ...) @PrintMessage(i32 %113)
  br label %140

115:                                              ; preds = %108
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @OPERATION_QUIT, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i32, i32* @MSG_STOP_QUIT, align 4
  %121 = call i32 (i32, ...) @PrintMessage(i32 %120)
  %122 = load i32, i32* @VFD_NG, align 4
  store i32 %122, i32* %2, align 4
  br label %166

123:                                              ; preds = %115
  %124 = load i32, i32* @MSG_STOP_WARN, align 4
  %125 = call i32 (i32, ...) @PrintMessage(i32 %124)
  %126 = load i32, i32* @MSG_RETRY_FORCE_CANCEL, align 4
  %127 = call i32 @InputChar(i32 %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp eq i32 %128, 102
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %140

131:                                              ; preds = %123
  %132 = load i32, i32* %7, align 4
  %133 = icmp eq i32 %132, 99
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i32, i32* @VFD_NG, align 4
  store i32 %135, i32* %2, align 4
  br label %166

136:                                              ; preds = %131
  br label %137

137:                                              ; preds = %136
  br label %138

138:                                              ; preds = %137
  br label %139

139:                                              ; preds = %138
  br label %103

140:                                              ; preds = %130, %112, %103
  br label %141

141:                                              ; preds = %140, %98
  %142 = call i64 @VfdStopDriver(i64* @driver_state)
  store i64 %142, i64* %6, align 8
  %143 = load i64, i64* %6, align 8
  %144 = load i64, i64* @ERROR_SUCCESS, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %141
  %147 = load i32, i32* @MSG_STOP_NG, align 4
  %148 = call i32 (i32, ...) @PrintMessage(i32 %147)
  %149 = load i64, i64* %6, align 8
  %150 = call i8* @SystemError(i64 %149)
  %151 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %150)
  %152 = load i32, i32* @VFD_NG, align 4
  store i32 %152, i32* %2, align 4
  br label %166

153:                                              ; preds = %141
  %154 = load i64, i64* @driver_state, align 8
  %155 = load i64, i64* @SERVICE_STOPPED, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i32, i32* @MSG_STOP_PENDING, align 4
  %159 = call i32 (i32, ...) @PrintMessage(i32 %158)
  %160 = load i32, i32* @VFD_NG, align 4
  store i32 %160, i32* %2, align 4
  br label %166

161:                                              ; preds = %153
  %162 = load i32, i32* @MSG_STOP_OK, align 4
  %163 = call i32 (i32, ...) @PrintMessage(i32 %162)
  %164 = load i64, i64* @VFD_OK, align 8
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %161, %157, %146, %134, %119, %94, %86, %69, %58, %33
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_stricmp(i8*, i8*) #2

declare dso_local i32 @PrintMessage(i32, ...) #2

declare dso_local i64 @Close(i8**) #2

declare dso_local i32 @InputChar(i32, i8*) #2

declare dso_local i64 @VfdStopDriver(i64*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i8* @SystemError(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

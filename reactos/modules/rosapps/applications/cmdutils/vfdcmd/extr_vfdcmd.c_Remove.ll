; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_Remove.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_Remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPERATION_ASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"/f\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"/force\00", align 1
@MSG_DUPLICATE_ARGS = common dso_local global i32 0, align 4
@VFD_NG = common dso_local global i32 0, align 4
@OPERATION_FORCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"/q\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"/quit\00", align 1
@OPERATION_QUIT = common dso_local global i32 0, align 4
@MSG_UNKNOWN_OPTION = common dso_local global i32 0, align 4
@MSG_HINT_REMOVE = common dso_local global i32 0, align 4
@help_progname = common dso_local global i32 0, align 4
@driver_state = common dso_local global i64 0, align 8
@VFD_NOT_INSTALLED = common dso_local global i64 0, align 8
@MSG_NOT_INSTALLED = common dso_local global i32 0, align 4
@SERVICE_RUNNING = common dso_local global i64 0, align 8
@VFD_OK = common dso_local global i64 0, align 8
@MSG_REMOVE_FORCE = common dso_local global i32 0, align 4
@MSG_REMOVE_QUIT = common dso_local global i32 0, align 4
@MSG_REMOVE_WARN = common dso_local global i32 0, align 4
@MSG_RETRY_FORCE_CANCEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"rfc\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@MSG_REMOVE_NG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MSG_GET_STAT_NG = common dso_local global i32 0, align 4
@MSG_REMOVE_PENDING = common dso_local global i32 0, align 4
@MSG_REMOVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Remove(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i8*], align 16
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %9 = load i32, i32* @OPERATION_ASK, align 4
  store i32 %9, i32* %4, align 4
  %10 = bitcast [2 x i8*]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 16, i1 false)
  br label %11

11:                                               ; preds = %80, %1
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
  br i1 %19, label %20, label %83

20:                                               ; preds = %18
  %21 = load i8**, i8*** %3, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @_stricmp(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i8**, i8*** %3, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @_stricmp(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %25, %20
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @OPERATION_ASK, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* @MSG_DUPLICATE_ARGS, align 4
  %36 = load i8**, i8*** %3, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i32, ...) @PrintMessage(i32 %35, i8* %37)
  %39 = load i32, i32* @VFD_NG, align 4
  store i32 %39, i32* %2, align 4
  br label %185

40:                                               ; preds = %30
  %41 = load i32, i32* @OPERATION_FORCE, align 4
  store i32 %41, i32* %4, align 4
  %42 = load i8**, i8*** %3, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* %43, i8** %44, align 16
  br label %80

45:                                               ; preds = %25
  %46 = load i8**, i8*** %3, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @_stricmp(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i8**, i8*** %3, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @_stricmp(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @OPERATION_ASK, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i32, i32* @MSG_DUPLICATE_ARGS, align 4
  %61 = load i8**, i8*** %3, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i32, ...) @PrintMessage(i32 %60, i8* %62)
  %64 = load i32, i32* @VFD_NG, align 4
  store i32 %64, i32* %2, align 4
  br label %185

65:                                               ; preds = %55
  %66 = load i32, i32* @OPERATION_QUIT, align 4
  store i32 %66, i32* %4, align 4
  %67 = load i8**, i8*** %3, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* %68, i8** %69, align 16
  br label %79

70:                                               ; preds = %50
  %71 = load i32, i32* @MSG_UNKNOWN_OPTION, align 4
  %72 = load i8**, i8*** %3, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i32, ...) @PrintMessage(i32 %71, i8* %73)
  %75 = load i32, i32* @MSG_HINT_REMOVE, align 4
  %76 = load i32, i32* @help_progname, align 4
  %77 = call i32 (i32, ...) @PrintMessage(i32 %75, i32 %76)
  %78 = load i32, i32* @VFD_NG, align 4
  store i32 %78, i32* %2, align 4
  br label %185

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %79, %40
  %81 = load i8**, i8*** %3, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i32 1
  store i8** %82, i8*** %3, align 8
  br label %11

83:                                               ; preds = %18
  %84 = load i64, i64* @driver_state, align 8
  %85 = load i64, i64* @VFD_NOT_INSTALLED, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* @MSG_NOT_INSTALLED, align 4
  %89 = call i32 (i32, ...) @PrintMessage(i32 %88)
  %90 = load i32, i32* @VFD_NG, align 4
  store i32 %90, i32* %2, align 4
  br label %185

91:                                               ; preds = %83
  %92 = load i64, i64* @driver_state, align 8
  %93 = load i64, i64* @SERVICE_RUNNING, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %134

95:                                               ; preds = %91
  br label %96

96:                                               ; preds = %132, %95
  %97 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %98 = call i64 @Stop(i8** %97)
  %99 = load i64, i64* @VFD_OK, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %133

101:                                              ; preds = %96
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @OPERATION_FORCE, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i32, i32* @MSG_REMOVE_FORCE, align 4
  %107 = call i32 (i32, ...) @PrintMessage(i32 %106)
  br label %133

108:                                              ; preds = %101
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @OPERATION_QUIT, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i32, i32* @MSG_REMOVE_QUIT, align 4
  %114 = call i32 (i32, ...) @PrintMessage(i32 %113)
  %115 = load i32, i32* @VFD_NG, align 4
  store i32 %115, i32* %2, align 4
  br label %185

116:                                              ; preds = %108
  %117 = load i32, i32* @MSG_REMOVE_WARN, align 4
  %118 = call i32 (i32, ...) @PrintMessage(i32 %117)
  %119 = load i32, i32* @MSG_RETRY_FORCE_CANCEL, align 4
  %120 = call i32 @InputChar(i32 %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp eq i32 %121, 102
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %133

124:                                              ; preds = %116
  %125 = load i32, i32* %8, align 4
  %126 = icmp eq i32 %125, 99
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load i32, i32* @VFD_NG, align 4
  store i32 %128, i32* %2, align 4
  br label %185

129:                                              ; preds = %124
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131
  br label %96

133:                                              ; preds = %123, %105, %96
  br label %134

134:                                              ; preds = %133, %91
  %135 = call i64 (...) @VfdRemoveDriver()
  store i64 %135, i64* %6, align 8
  %136 = load i64, i64* %6, align 8
  %137 = load i64, i64* @ERROR_SUCCESS, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = load i32, i32* @MSG_REMOVE_NG, align 4
  %141 = call i32 (i32, ...) @PrintMessage(i32 %140)
  %142 = load i64, i64* %6, align 8
  %143 = call i8* @SystemError(i64 %142)
  %144 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %143)
  %145 = load i32, i32* @VFD_NG, align 4
  store i32 %145, i32* %2, align 4
  br label %185

146:                                              ; preds = %134
  store i32 0, i32* %7, align 4
  br label %147

147:                                              ; preds = %169, %146
  %148 = load i32, i32* %7, align 4
  %149 = icmp slt i32 %148, 10
  br i1 %149, label %150, label %172

150:                                              ; preds = %147
  %151 = call i64 @VfdGetDriverState(i64* @driver_state)
  store i64 %151, i64* %6, align 8
  %152 = load i64, i64* %6, align 8
  %153 = load i64, i64* @ERROR_SUCCESS, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %150
  %156 = load i32, i32* @MSG_GET_STAT_NG, align 4
  %157 = call i32 (i32, ...) @PrintMessage(i32 %156)
  %158 = load i64, i64* %6, align 8
  %159 = call i8* @SystemError(i64 %158)
  %160 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %159)
  %161 = load i32, i32* @VFD_NG, align 4
  store i32 %161, i32* %2, align 4
  br label %185

162:                                              ; preds = %150
  %163 = load i64, i64* @driver_state, align 8
  %164 = load i64, i64* @VFD_NOT_INSTALLED, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  br label %172

167:                                              ; preds = %162
  %168 = call i32 @Sleep(i32 300)
  br label %169

169:                                              ; preds = %167
  %170 = load i32, i32* %7, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %7, align 4
  br label %147

172:                                              ; preds = %166, %147
  %173 = load i64, i64* @driver_state, align 8
  %174 = load i64, i64* @VFD_NOT_INSTALLED, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = load i32, i32* @MSG_REMOVE_PENDING, align 4
  %178 = call i32 (i32, ...) @PrintMessage(i32 %177)
  %179 = load i32, i32* @VFD_NG, align 4
  store i32 %179, i32* %2, align 4
  br label %185

180:                                              ; preds = %172
  %181 = load i32, i32* @MSG_REMOVE_OK, align 4
  %182 = call i32 (i32, ...) @PrintMessage(i32 %181)
  %183 = load i64, i64* @VFD_OK, align 8
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %180, %176, %155, %139, %127, %112, %87, %70, %59, %34
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @_stricmp(i8*, i8*) #2

declare dso_local i32 @PrintMessage(i32, ...) #2

declare dso_local i64 @Stop(i8**) #2

declare dso_local i32 @InputChar(i32, i8*) #2

declare dso_local i64 @VfdRemoveDriver(...) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i8* @SystemError(i64) #2

declare dso_local i64 @VfdGetDriverState(i64*) #2

declare dso_local i32 @Sleep(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

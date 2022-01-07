; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_Format.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_Format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPERATION_ASK = common dso_local global i32 0, align 4
@TARGET_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"/f\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"/force\00", align 1
@MSG_DUPLICATE_ARGS = common dso_local global i32 0, align 4
@VFD_NG = common dso_local global i32 0, align 4
@OPERATION_FORCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"/q\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"/quit\00", align 1
@OPERATION_QUIT = common dso_local global i32 0, align 4
@MSG_UNKNOWN_OPTION = common dso_local global i32 0, align 4
@MSG_HINT_FORMAT = common dso_local global i32 0, align 4
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
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@MSG_FORMAT_NG = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@MSG_LOCK_NG = common dso_local global i32 0, align 4
@MSG_FORMAT_FORCE = common dso_local global i32 0, align 4
@MSG_FORMAT_QUIT = common dso_local global i32 0, align 4
@MSG_RETRY_FORCE_CANCEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"rfc\00", align 1
@TRUE = common dso_local global i32 0, align 4
@MSG_FORMAT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Format(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %9 = load i32, i32* @OPERATION_ASK, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @TARGET_NONE, align 4
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %96, %1
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
  br i1 %19, label %20, label %99

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
  br i1 %29, label %42, label %30

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
  br label %245

40:                                               ; preds = %30
  %41 = load i32, i32* @OPERATION_FORCE, align 4
  store i32 %41, i32* %4, align 4
  br label %96

42:                                               ; preds = %25
  %43 = load i8**, i8*** %3, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @_stricmp(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i8**, i8*** %3, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @_stricmp(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %47, %42
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @OPERATION_ASK, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32, i32* @MSG_DUPLICATE_ARGS, align 4
  %58 = load i8**, i8*** %3, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i32, ...) @PrintMessage(i32 %57, i8* %59)
  %61 = load i32, i32* @VFD_NG, align 4
  store i32 %61, i32* %2, align 4
  br label %245

62:                                               ; preds = %52
  %63 = load i32, i32* @OPERATION_QUIT, align 4
  store i32 %63, i32* %4, align 4
  br label %95

64:                                               ; preds = %47
  %65 = load i8**, i8*** %3, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i8, i8* %66, align 1
  %68 = call i64 @isalnum(i8 signext %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %64
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @TARGET_NONE, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* @MSG_DUPLICATE_ARGS, align 4
  %76 = load i8**, i8*** %3, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i32, ...) @PrintMessage(i32 %75, i8* %77)
  %79 = load i32, i32* @VFD_NG, align 4
  store i32 %79, i32* %2, align 4
  br label %245

80:                                               ; preds = %70
  %81 = load i8**, i8*** %3, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = load i8, i8* %82, align 1
  %84 = call i32 @toupper(i8 signext %83)
  store i32 %84, i32* %5, align 4
  br label %94

85:                                               ; preds = %64
  %86 = load i32, i32* @MSG_UNKNOWN_OPTION, align 4
  %87 = load i8**, i8*** %3, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i32, ...) @PrintMessage(i32 %86, i8* %88)
  %90 = load i32, i32* @MSG_HINT_FORMAT, align 4
  %91 = load i32, i32* @help_progname, align 4
  %92 = call i32 (i32, ...) @PrintMessage(i32 %90, i32 %91)
  %93 = load i32, i32* @VFD_NG, align 4
  store i32 %93, i32* %2, align 4
  br label %245

94:                                               ; preds = %80
  br label %95

95:                                               ; preds = %94, %62
  br label %96

96:                                               ; preds = %95, %40
  %97 = load i8**, i8*** %3, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i32 1
  store i8** %98, i8*** %3, align 8
  br label %11

99:                                               ; preds = %18
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @TARGET_NONE, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  store i32 48, i32* %5, align 4
  %104 = load i32, i32* @MSG_TARGET_NOTICE, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 (i32, ...) @PrintMessage(i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %99
  %108 = load i64, i64* @driver_state, align 8
  %109 = load i64, i64* @VFD_NOT_INSTALLED, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32, i32* @MSG_NOT_INSTALLED, align 4
  %113 = call i32 (i32, ...) @PrintMessage(i32 %112)
  %114 = load i32, i32* @VFD_NG, align 4
  store i32 %114, i32* %2, align 4
  br label %245

115:                                              ; preds = %107
  %116 = call i64 (...) @CheckDriver()
  %117 = load i64, i64* @VFD_OK, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i32, i32* @VFD_NG, align 4
  store i32 %120, i32* %2, align 4
  br label %245

121:                                              ; preds = %115
  %122 = load i64, i64* @driver_state, align 8
  %123 = load i64, i64* @SERVICE_RUNNING, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i32, i32* @MSG_NOT_STARTED, align 4
  %127 = call i32 (i32, ...) @PrintMessage(i32 %126)
  %128 = load i32, i32* @VFD_NG, align 4
  store i32 %128, i32* %2, align 4
  br label %245

129:                                              ; preds = %121
  %130 = load i32, i32* %5, align 4
  %131 = call i64 @VfdOpenDevice(i32 %130)
  store i64 %131, i64* %6, align 8
  %132 = load i64, i64* %6, align 8
  %133 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %129
  %136 = call i64 (...) @GetLastError()
  store i64 %136, i64* %7, align 8
  %137 = load i32, i32* @MSG_ACCESS_NG, align 4
  %138 = load i32, i32* %5, align 4
  %139 = call i32 (i32, ...) @PrintMessage(i32 %137, i32 %138)
  %140 = load i64, i64* %7, align 8
  %141 = call i8* @SystemError(i64 %140)
  %142 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %141)
  %143 = load i32, i32* @VFD_NG, align 4
  store i32 %143, i32* %2, align 4
  br label %245

144:                                              ; preds = %129
  %145 = load i64, i64* %6, align 8
  %146 = call i64 @VfdGetMediaState(i64 %145)
  store i64 %146, i64* %7, align 8
  %147 = load i64, i64* %7, align 8
  %148 = load i64, i64* @ERROR_SUCCESS, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %144
  %151 = load i32, i32* @MSG_FORMAT_NG, align 4
  %152 = load i32, i32* %5, align 4
  %153 = call i32 (i32, ...) @PrintMessage(i32 %151, i32 %152)
  %154 = load i64, i64* %7, align 8
  %155 = call i8* @SystemError(i64 %154)
  %156 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %155)
  %157 = load i64, i64* %6, align 8
  %158 = call i32 @CloseHandle(i64 %157)
  %159 = load i32, i32* @VFD_NG, align 4
  store i32 %159, i32* %2, align 4
  br label %245

160:                                              ; preds = %144
  br label %161

161:                                              ; preds = %196, %160
  %162 = load i64, i64* %6, align 8
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* @OPERATION_FORCE, align 4
  %165 = icmp eq i32 %163, %164
  %166 = zext i1 %165 to i32
  %167 = call i64 @VfdDismountVolume(i64 %162, i32 %166)
  store i64 %167, i64* %7, align 8
  %168 = load i64, i64* %7, align 8
  %169 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %212

171:                                              ; preds = %161
  %172 = load i32, i32* @MSG_LOCK_NG, align 4
  %173 = load i32, i32* %5, align 4
  %174 = call i32 (i32, ...) @PrintMessage(i32 %172, i32 %173)
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* @OPERATION_FORCE, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %171
  %179 = load i32, i32* @MSG_FORMAT_FORCE, align 4
  %180 = call i32 (i32, ...) @PrintMessage(i32 %179)
  br label %211

181:                                              ; preds = %171
  %182 = load i32, i32* %4, align 4
  %183 = load i32, i32* @OPERATION_QUIT, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %181
  %186 = load i32, i32* @MSG_FORMAT_QUIT, align 4
  %187 = call i32 (i32, ...) @PrintMessage(i32 %186)
  %188 = load i64, i64* %6, align 8
  %189 = call i32 @CloseHandle(i64 %188)
  %190 = load i32, i32* @VFD_NG, align 4
  store i32 %190, i32* %2, align 4
  br label %245

191:                                              ; preds = %181
  %192 = load i32, i32* @MSG_RETRY_FORCE_CANCEL, align 4
  %193 = call i32 @InputChar(i32 %192, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp eq i32 %194, 114
  br i1 %195, label %196, label %197

196:                                              ; preds = %191
  br label %161

197:                                              ; preds = %191
  %198 = load i32, i32* %8, align 4
  %199 = icmp eq i32 %198, 102
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = load i64, i64* %6, align 8
  %202 = load i32, i32* @TRUE, align 4
  %203 = call i64 @VfdDismountVolume(i64 %201, i32 %202)
  br label %208

204:                                              ; preds = %197
  %205 = load i64, i64* %6, align 8
  %206 = call i32 @CloseHandle(i64 %205)
  %207 = load i32, i32* @VFD_NG, align 4
  store i32 %207, i32* %2, align 4
  br label %245

208:                                              ; preds = %200
  br label %209

209:                                              ; preds = %208
  br label %210

210:                                              ; preds = %209
  br label %211

211:                                              ; preds = %210, %178
  br label %224

212:                                              ; preds = %161
  %213 = load i64, i64* %7, align 8
  %214 = load i64, i64* @ERROR_SUCCESS, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %216, label %223

216:                                              ; preds = %212
  %217 = load i32, i32* @MSG_LOCK_NG, align 4
  %218 = load i32, i32* %5, align 4
  %219 = call i32 (i32, ...) @PrintMessage(i32 %217, i32 %218)
  %220 = load i64, i64* %6, align 8
  %221 = call i32 @CloseHandle(i64 %220)
  %222 = load i32, i32* @VFD_NG, align 4
  store i32 %222, i32* %2, align 4
  br label %245

223:                                              ; preds = %212
  br label %224

224:                                              ; preds = %223, %211
  %225 = load i64, i64* %6, align 8
  %226 = call i64 @VfdFormatMedia(i64 %225)
  store i64 %226, i64* %7, align 8
  %227 = load i64, i64* %6, align 8
  %228 = call i32 @CloseHandle(i64 %227)
  %229 = load i64, i64* %7, align 8
  %230 = load i64, i64* @ERROR_SUCCESS, align 8
  %231 = icmp ne i64 %229, %230
  br i1 %231, label %232, label %240

232:                                              ; preds = %224
  %233 = load i32, i32* @MSG_FORMAT_NG, align 4
  %234 = load i32, i32* %5, align 4
  %235 = call i32 (i32, ...) @PrintMessage(i32 %233, i32 %234)
  %236 = load i64, i64* %7, align 8
  %237 = call i8* @SystemError(i64 %236)
  %238 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %237)
  %239 = load i32, i32* @VFD_NG, align 4
  store i32 %239, i32* %2, align 4
  br label %245

240:                                              ; preds = %224
  %241 = load i32, i32* @MSG_FORMAT_OK, align 4
  %242 = call i32 (i32, ...) @PrintMessage(i32 %241)
  %243 = load i64, i64* @VFD_OK, align 8
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %2, align 4
  br label %245

245:                                              ; preds = %240, %232, %216, %204, %185, %150, %135, %125, %119, %111, %85, %74, %56, %34
  %246 = load i32, i32* %2, align 4
  ret i32 %246
}

declare dso_local i32 @_stricmp(i8*, i8*) #1

declare dso_local i32 @PrintMessage(i32, ...) #1

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i32 @toupper(i8 signext) #1

declare dso_local i64 @CheckDriver(...) #1

declare dso_local i64 @VfdOpenDevice(i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @SystemError(i64) #1

declare dso_local i64 @VfdGetMediaState(i64) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i64 @VfdDismountVolume(i64, i32) #1

declare dso_local i32 @InputChar(i32, i8*) #1

declare dso_local i64 @VfdFormatMedia(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

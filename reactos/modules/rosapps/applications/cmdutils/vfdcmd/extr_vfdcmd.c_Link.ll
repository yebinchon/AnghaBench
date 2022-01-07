; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_Link.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_Link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_NONE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"/g\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"/l\00", align 1
@FALSE = common dso_local global i64 0, align 8
@MSG_DUPLICATE_ARGS = common dso_local global i32 0, align 4
@VFD_NG = common dso_local global i32 0, align 4
@VFD_MAXIMUM_DEVICES = common dso_local global i32 0, align 4
@MSG_UNKNOWN_OPTION = common dso_local global i32 0, align 4
@MSG_HINT_LINK = common dso_local global i32 0, align 4
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
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@MSG_LINK_NG = common dso_local global i32 0, align 4
@MSG_LINK_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Link(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  %12 = load i32, i32* @TARGET_NONE, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @TARGET_NONE, align 4
  store i32 %13, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %14 = load i64, i64* @TRUE, align 8
  store i64 %14, i64* %7, align 8
  br label %15

15:                                               ; preds = %107, %1
  %16 = load i8**, i8*** %3, align 8
  %17 = icmp ne i8** %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i8**, i8*** %3, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i1 [ false, %15 ], [ %21, %18 ]
  br i1 %23, label %24, label %110

24:                                               ; preds = %22
  %25 = load i8**, i8*** %3, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @_stricmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* @TRUE, align 8
  store i64 %30, i64* %7, align 8
  br label %107

31:                                               ; preds = %24
  %32 = load i8**, i8*** %3, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @_stricmp(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* @FALSE, align 8
  store i64 %37, i64* %7, align 8
  br label %106

38:                                               ; preds = %31
  %39 = load i8**, i8*** %3, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call i64 @isdigit(i8 signext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load i8**, i8*** %3, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 42
  br i1 %49, label %50, label %77

50:                                               ; preds = %44, %38
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @TARGET_NONE, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32, i32* @MSG_DUPLICATE_ARGS, align 4
  %56 = load i8**, i8*** %3, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i32, ...) @PrintMessage(i32 %55, i8* %57)
  %59 = load i32, i32* @VFD_NG, align 4
  store i32 %59, i32* %2, align 4
  br label %235

60:                                               ; preds = %50
  %61 = load i8**, i8*** %3, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 42
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  store i32 48, i32* %4, align 4
  %67 = load i32, i32* @VFD_MAXIMUM_DEVICES, align 4
  %68 = add nsw i32 48, %67
  store i32 %68, i32* %5, align 4
  br label %76

69:                                               ; preds = %60
  %70 = load i8**, i8*** %3, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %69, %66
  br label %105

77:                                               ; preds = %44
  %78 = load i8**, i8*** %3, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = load i8, i8* %79, align 1
  %81 = call i64 @isalpha(i8 signext %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %77
  %84 = load i8*, i8** %6, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i32, i32* @MSG_DUPLICATE_ARGS, align 4
  %88 = load i8**, i8*** %3, align 8
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 (i32, ...) @PrintMessage(i32 %87, i8* %89)
  %91 = load i32, i32* @VFD_NG, align 4
  store i32 %91, i32* %2, align 4
  br label %235

92:                                               ; preds = %83
  %93 = load i8**, i8*** %3, align 8
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %6, align 8
  br label %104

95:                                               ; preds = %77
  %96 = load i32, i32* @MSG_UNKNOWN_OPTION, align 4
  %97 = load i8**, i8*** %3, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 (i32, ...) @PrintMessage(i32 %96, i8* %98)
  %100 = load i32, i32* @MSG_HINT_LINK, align 4
  %101 = load i32, i32* @help_progname, align 4
  %102 = call i32 (i32, ...) @PrintMessage(i32 %100, i32 %101)
  %103 = load i32, i32* @VFD_NG, align 4
  store i32 %103, i32* %2, align 4
  br label %235

104:                                              ; preds = %92
  br label %105

105:                                              ; preds = %104, %76
  br label %106

106:                                              ; preds = %105, %36
  br label %107

107:                                              ; preds = %106, %29
  %108 = load i8**, i8*** %3, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i32 1
  store i8** %109, i8*** %3, align 8
  br label %15

110:                                              ; preds = %22
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @TARGET_NONE, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  store i32 48, i32* %4, align 4
  store i32 49, i32* %5, align 4
  %115 = load i32, i32* @MSG_TARGET_NOTICE, align 4
  %116 = load i32, i32* %4, align 4
  %117 = call i32 (i32, ...) @PrintMessage(i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %110
  %119 = load i64, i64* @driver_state, align 8
  %120 = load i64, i64* @VFD_NOT_INSTALLED, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i32, i32* @MSG_NOT_INSTALLED, align 4
  %124 = call i32 (i32, ...) @PrintMessage(i32 %123)
  %125 = load i32, i32* @VFD_NG, align 4
  store i32 %125, i32* %2, align 4
  br label %235

126:                                              ; preds = %118
  %127 = call i64 (...) @CheckDriver()
  %128 = load i64, i64* @VFD_OK, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i32, i32* @VFD_NG, align 4
  store i32 %131, i32* %2, align 4
  br label %235

132:                                              ; preds = %126
  %133 = load i64, i64* @driver_state, align 8
  %134 = load i64, i64* @SERVICE_RUNNING, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i32, i32* @MSG_NOT_STARTED, align 4
  %138 = call i32 (i32, ...) @PrintMessage(i32 %137)
  %139 = load i32, i32* @VFD_NG, align 4
  store i32 %139, i32* %2, align 4
  br label %235

140:                                              ; preds = %132
  br label %141

141:                                              ; preds = %224, %167, %151, %140
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* %5, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %232

145:                                              ; preds = %141
  %146 = load i32, i32* %4, align 4
  %147 = call i64 @VfdOpenDevice(i32 %146)
  store i64 %147, i64* %8, align 8
  %148 = load i64, i64* %8, align 8
  %149 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %145
  %152 = call i32 (...) @GetLastError()
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* @MSG_ACCESS_NG, align 4
  %154 = load i32, i32* %4, align 4
  %155 = call i32 (i32, ...) @PrintMessage(i32 %153, i32 %154)
  %156 = load i32, i32* %9, align 4
  %157 = call i8* @SystemError(i32 %156)
  %158 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %157)
  %159 = load i32, i32* %4, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %4, align 4
  br label %141

161:                                              ; preds = %145
  %162 = load i64, i64* %8, align 8
  %163 = call i32 @VfdGetDeviceNumber(i64 %162, i32* %10)
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* @ERROR_SUCCESS, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %178

167:                                              ; preds = %161
  %168 = load i32, i32* @MSG_ACCESS_NG, align 4
  %169 = load i32, i32* %4, align 4
  %170 = call i32 (i32, ...) @PrintMessage(i32 %168, i32 %169)
  %171 = load i32, i32* %9, align 4
  %172 = call i8* @SystemError(i32 %171)
  %173 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %172)
  %174 = load i64, i64* %8, align 8
  %175 = call i32 @CloseHandle(i64 %174)
  %176 = load i32, i32* %4, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %4, align 4
  br label %141

178:                                              ; preds = %161
  %179 = load i8*, i8** %6, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %192

181:                                              ; preds = %178
  %182 = load i8*, i8** %6, align 8
  %183 = load i8, i8* %182, align 1
  %184 = call i64 @isalpha(i8 signext %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %181
  %187 = load i8*, i8** %6, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %6, align 8
  %189 = load i8, i8* %187, align 1
  %190 = sext i8 %189 to i32
  %191 = call i64 @toupper(i32 %190)
  store i64 %191, i64* %11, align 8
  br label %194

192:                                              ; preds = %181, %178
  %193 = call i64 (...) @VfdChooseLetter()
  store i64 %193, i64* %11, align 8
  br label %194

194:                                              ; preds = %192, %186
  %195 = load i64, i64* %11, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %221

197:                                              ; preds = %194
  %198 = load i64, i64* %7, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = load i64, i64* %8, align 8
  %202 = load i64, i64* %11, align 8
  %203 = call i32 @VfdSetGlobalLink(i64 %201, i64 %202)
  store i32 %203, i32* %9, align 4
  br label %208

204:                                              ; preds = %197
  %205 = load i64, i64* %8, align 8
  %206 = load i64, i64* %11, align 8
  %207 = call i32 @VfdSetLocalLink(i64 %205, i64 %206)
  store i32 %207, i32* %9, align 4
  br label %208

208:                                              ; preds = %204, %200
  %209 = load i32, i32* %9, align 4
  %210 = load i32, i32* @ERROR_SUCCESS, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %220

212:                                              ; preds = %208
  %213 = load i32, i32* @MSG_LINK_NG, align 4
  %214 = load i32, i32* %10, align 4
  %215 = load i64, i64* %11, align 8
  %216 = call i32 (i32, ...) @PrintMessage(i32 %213, i32 %214, i64 %215)
  %217 = load i32, i32* %9, align 4
  %218 = call i8* @SystemError(i32 %217)
  %219 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %218)
  br label %220

220:                                              ; preds = %212, %208
  br label %224

221:                                              ; preds = %194
  %222 = load i32, i32* @MSG_LINK_FULL, align 4
  %223 = call i32 (i32, ...) @PrintMessage(i32 %222)
  br label %224

224:                                              ; preds = %221, %220
  %225 = load i64, i64* %8, align 8
  %226 = load i32, i32* %10, align 4
  %227 = call i32 @PrintDriveLetter(i64 %225, i32 %226)
  %228 = load i64, i64* %8, align 8
  %229 = call i32 @CloseHandle(i64 %228)
  %230 = load i32, i32* %4, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %4, align 4
  br label %141

232:                                              ; preds = %141
  %233 = load i64, i64* @VFD_OK, align 8
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %2, align 4
  br label %235

235:                                              ; preds = %232, %136, %130, %122, %95, %86, %54
  %236 = load i32, i32* %2, align 4
  ret i32 %236
}

declare dso_local i32 @_stricmp(i8*, i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @PrintMessage(i32, ...) #1

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i64 @CheckDriver(...) #1

declare dso_local i64 @VfdOpenDevice(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @SystemError(i32) #1

declare dso_local i32 @VfdGetDeviceNumber(i64, i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i64 @toupper(i32) #1

declare dso_local i64 @VfdChooseLetter(...) #1

declare dso_local i32 @VfdSetGlobalLink(i64, i64) #1

declare dso_local i32 @VfdSetLocalLink(i64, i64) #1

declare dso_local i32 @PrintDriveLetter(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/explorer-old/services/extr_startup.c_startup.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/explorer-old/services/extr_startup.c_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_mask = type { i64, i64, i64, i32, i64, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Couldn't get the windows directory - error %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i32] [i32 67, i32 97, i32 110, i32 110, i32 111, i32 116, i32 32, i32 115, i32 101, i32 116, i32 32, i32 116, i32 104, i32 101, i32 32, i32 100, i32 105, i32 114, i32 32, i32 116, i32 111, i32 32, i32 37, i32 115, i32 32, i32 40, i32 37, i32 108, i32 100, i32 41, i32 10, i32 0], align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i32] [i32 83, i32 116, i32 97, i32 114, i32 116, i32 117, i32 112, i32 72, i32 97, i32 115, i32 66, i32 101, i32 101, i32 110, i32 82, i32 117, i32 110, i32 0], align 4
@REG_OPTION_VOLATILE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@REG_OPENED_EXISTING_KEY = common dso_local global i64 0, align 8
@SETUP = common dso_local global %struct.op_mask zeroinitializer, align 8
@SESSION_START = common dso_local global %struct.op_mask zeroinitializer, align 8
@DEFAULT = common dso_local global %struct.op_mask zeroinitializer, align 8
@SM_CLEANBOOT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@runkeys_names = common dso_local global i32* null, align 8
@RUNKEY_RUNSERVICESONCE = common dso_local global i64 0, align 8
@RUNKEY_RUNSERVICES = common dso_local global i64 0, align 8
@RUNKEY_RUNONCE = common dso_local global i64 0, align 8
@RUNKEY_RUN = common dso_local global i64 0, align 8
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Operation done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @startup(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.op_mask, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = trunc i64 %17 to i32
  %21 = call i64 @GetWindowsDirectory(i8* %19, i32 %20)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = call i32 (...) @GetLastError()
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 100, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %237

27:                                               ; preds = %2
  %28 = call i32 @SetCurrentDirectory(i8* %19)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = call i32 (...) @GetLastError()
  %32 = call i32 @wprintf(i8* bitcast ([32 x i32]* @.str.1 to i8*), i8* %19, i32 %31)
  store i32 100, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %237

33:                                               ; preds = %27
  %34 = load i32, i32* @KEY_WRITE, align 4
  %35 = call i32 @SHCreateSessionKey(i32 %34, i32* %10)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i64 @SUCCEEDED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @REG_OPTION_VOLATILE, align 4
  %42 = load i32, i32* @KEY_WRITE, align 4
  %43 = call i64 @RegCreateKeyEx(i32 %40, i8* bitcast ([18 x i32]* @.str.2 to i8*), i32 0, i32* null, i32 %41, i32 %42, i32* null, i32* %11, i64* %15)
  store i64 %43, i64* %14, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @RegCloseKey(i32 %44)
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* @ERROR_SUCCESS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %39
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @RegCloseKey(i32 %50)
  %52 = load i64, i64* %15, align 8
  %53 = load i64, i64* @REG_OPENED_EXISTING_KEY, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %237

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %39
  br label %58

58:                                               ; preds = %57, %33
  %59 = load i32, i32* %4, align 4
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  switch i32 %67, label %72 [
    i32 114, label %68
    i32 115, label %70
  ]

68:                                               ; preds = %61
  %69 = bitcast %struct.op_mask* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 bitcast (%struct.op_mask* @SETUP to i8*), i64 48, i1 false)
  br label %74

70:                                               ; preds = %61
  %71 = bitcast %struct.op_mask* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 bitcast (%struct.op_mask* @SESSION_START to i8*), i64 48, i1 false)
  br label %74

72:                                               ; preds = %61
  %73 = bitcast %struct.op_mask* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 bitcast (%struct.op_mask* @DEFAULT to i8*), i64 48, i1 false)
  br label %74

74:                                               ; preds = %72, %70, %68
  br label %77

75:                                               ; preds = %58
  %76 = bitcast %struct.op_mask* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 bitcast (%struct.op_mask* @DEFAULT to i8*), i64 48, i1 false)
  br label %77

77:                                               ; preds = %75, %74
  %78 = load i32, i32* @SM_CLEANBOOT, align 4
  %79 = call i64 @GetSystemMetrics(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, i64* @FALSE, align 8
  %83 = getelementptr inbounds %struct.op_mask, %struct.op_mask* %6, i32 0, i32 0
  store i64 %82, i64* %83, align 8
  br label %84

84:                                               ; preds = %81, %77
  %85 = load i64, i64* @TRUE, align 8
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* %9, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.op_mask, %struct.op_mask* %6, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.op_mask, %struct.op_mask* %6, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call i64 (...) @wininit()
  store i64 %97, i64* %9, align 8
  br label %98

98:                                               ; preds = %96, %92, %88, %84
  %99 = load i64, i64* %9, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.op_mask, %struct.op_mask* %6, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.op_mask, %struct.op_mask* %6, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = call i64 (...) @pendingRename()
  store i64 %110, i64* %9, align 8
  br label %111

111:                                              ; preds = %109, %105, %101, %98
  %112 = load i64, i64* %9, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.op_mask, %struct.op_mask* %6, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %131, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.op_mask, %struct.op_mask* %6, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %118
  %123 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %124 = load i32*, i32** @runkeys_names, align 8
  %125 = load i64, i64* @RUNKEY_RUNSERVICESONCE, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i64, i64* @TRUE, align 8
  %129 = load i64, i64* @FALSE, align 8
  %130 = call i64 @ProcessRunKeys(i32 %123, i32 %127, i64 %128, i64 %129)
  store i64 %130, i64* %9, align 8
  br label %131

131:                                              ; preds = %122, %118, %114, %111
  %132 = load i64, i64* %9, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %155

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.op_mask, %struct.op_mask* %6, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %155, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.op_mask, %struct.op_mask* %6, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.op_mask, %struct.op_mask* %6, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %142
  %147 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %148 = load i32*, i32** @runkeys_names, align 8
  %149 = load i64, i64* @RUNKEY_RUNSERVICES, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i64, i64* @FALSE, align 8
  %153 = load i64, i64* @FALSE, align 8
  %154 = call i64 @ProcessRunKeys(i32 %147, i32 %151, i64 %152, i64 %153)
  store i64 %154, i64* %9, align 8
  br label %155

155:                                              ; preds = %146, %142, %138, %134, %131
  %156 = load i64, i64* %9, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.op_mask, %struct.op_mask* %6, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %158
  %163 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %164 = load i32*, i32** @runkeys_names, align 8
  %165 = load i64, i64* @RUNKEY_RUNONCE, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i64, i64* @TRUE, align 8
  %169 = load i64, i64* @TRUE, align 8
  %170 = call i64 @ProcessRunKeys(i32 %163, i32 %167, i64 %168, i64 %169)
  store i64 %170, i64* %9, align 8
  br label %171

171:                                              ; preds = %162, %158, %155
  %172 = load i64, i64* %9, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %191

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.op_mask, %struct.op_mask* %6, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %191

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.op_mask, %struct.op_mask* %6, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %178
  %183 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %184 = load i32*, i32** @runkeys_names, align 8
  %185 = load i64, i64* @RUNKEY_RUN, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i64, i64* @FALSE, align 8
  %189 = load i64, i64* @FALSE, align 8
  %190 = call i64 @ProcessRunKeys(i32 %183, i32 %187, i64 %188, i64 %189)
  store i64 %190, i64* %9, align 8
  br label %191

191:                                              ; preds = %182, %178, %174, %171
  %192 = load i64, i64* %9, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %211

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.op_mask, %struct.op_mask* %6, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %211

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.op_mask, %struct.op_mask* %6, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %211

202:                                              ; preds = %198
  %203 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %204 = load i32*, i32** @runkeys_names, align 8
  %205 = load i64, i64* @RUNKEY_RUN, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i64, i64* @FALSE, align 8
  %209 = load i64, i64* @FALSE, align 8
  %210 = call i64 @ProcessRunKeys(i32 %203, i32 %207, i64 %208, i64 %209)
  store i64 %210, i64* %9, align 8
  br label %211

211:                                              ; preds = %202, %198, %194, %191
  %212 = load i64, i64* %9, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %231

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.op_mask, %struct.op_mask* %6, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %231

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.op_mask, %struct.op_mask* %6, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %218
  %223 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %224 = load i32*, i32** @runkeys_names, align 8
  %225 = load i64, i64* @RUNKEY_RUNONCE, align 8
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = load i64, i64* @TRUE, align 8
  %229 = load i64, i64* @FALSE, align 8
  %230 = call i64 @ProcessRunKeys(i32 %223, i32 %227, i64 %228, i64 %229)
  store i64 %230, i64* %9, align 8
  br label %231

231:                                              ; preds = %222, %218, %214, %211
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %233 = load i64, i64* %9, align 8
  %234 = icmp ne i64 %233, 0
  %235 = zext i1 %234 to i64
  %236 = select i1 %234, i32 0, i32 101
  store i32 %236, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %237

237:                                              ; preds = %231, %55, %30, %24
  %238 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %238)
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetWindowsDirectory(i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @SetCurrentDirectory(i8*) #2

declare dso_local i32 @wprintf(i8*, i8*, i32) #2

declare dso_local i32 @SHCreateSessionKey(i32, i32*) #2

declare dso_local i64 @SUCCEEDED(i32) #2

declare dso_local i64 @RegCreateKeyEx(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i64*) #2

declare dso_local i32 @RegCloseKey(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @GetSystemMetrics(i32) #2

declare dso_local i64 @wininit(...) #2

declare dso_local i64 @pendingRename(...) #2

declare dso_local i64 @ProcessRunKeys(i32, i32, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/explorer-old/services/extr_startup.c_pendingRename.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/explorer-old/services/extr_startup.c_pendingRename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pendingRename.ValueName = internal constant [28 x i8] c"PendingFileRenameOperations\00", align 16
@pendingRename.SessionW = internal constant [49 x i8] c"System\\CurrentControlSet\\Control\\Session Manager\00", align 16
@.str = private unnamed_addr constant [9 x i8] c"Entered\0A\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"The key was not found - skipping\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Couldn't open key, error %lu\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Value not present - nothing to rename\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Couldn't query value's length (%lu)\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Couldn't allocate %lu bytes for the value\0A\00", align 1
@.str.6 = private unnamed_addr constant [103 x i8] c"Couldn't query value after successfully querying before (%lu),\0Aplease report to wine-devel@winehq.org\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Improper value format - doesn't end with NULL\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"processing next command\0A\00", align 1
@MOVEFILE_REPLACE_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"couldn't get file attributes (%ld)\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Error deleting the value (%lu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pendingRename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pendingRename() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* null, i8** %1, align 8
  store i8* null, i8** %2, align 8
  store i8* null, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %10 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %11 = call i32 @RegOpenKeyExW(i32 %9, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @pendingRename.SessionW, i64 0, i64 0), i32 0, i32 %10, i32** %5)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @ERROR_SUCCESS, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %0
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @TRUE, align 4
  store i32 %20, i32* %6, align 4
  br label %25

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %21, %18
  br label %234

26:                                               ; preds = %0
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @RegQueryValueExW(i32* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @pendingRename.ValueName, i64 0, i64 0), i32* null, i32* null, i32* null, i32* %4)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* %6, align 4
  br label %234

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @ERROR_SUCCESS, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %6, align 4
  br label %234

43:                                               ; preds = %35
  %44 = load i32, i32* %4, align 4
  %45 = call i8* @malloc(i32 %44)
  store i8* %45, i8** %1, align 8
  %46 = load i8*, i8** %1, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* %4, align 4
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %6, align 4
  br label %234

52:                                               ; preds = %43
  %53 = load i32*, i32** %5, align 8
  %54 = load i8*, i8** %1, align 8
  %55 = bitcast i8* %54 to i32*
  %56 = call i32 @RegQueryValueExW(i32* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @pendingRename.ValueName, i64 0, i64 0), i32* null, i32* null, i32* %55, i32* %4)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @ERROR_SUCCESS, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i32, i32* %6, align 4
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.6, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %6, align 4
  br label %234

64:                                               ; preds = %52
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp ult i64 %66, 2
  br i1 %67, label %88, label %68

68:                                               ; preds = %64
  %69 = load i8*, i8** %1, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = udiv i64 %71, 1
  %73 = sub i64 %72, 1
  %74 = getelementptr inbounds i8, i8* %69, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %68
  %79 = load i8*, i8** %1, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = udiv i64 %81, 1
  %83 = sub i64 %82, 2
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %78, %68, %64
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  %90 = load i32, i32* @FALSE, align 4
  store i32 %90, i32* %6, align 4
  br label %234

91:                                               ; preds = %78
  %92 = load i8*, i8** %1, align 8
  store i8* %92, i8** %2, align 8
  br label %93

93:                                               ; preds = %215, %91
  %94 = load i8*, i8** %2, align 8
  %95 = load i8*, i8** %1, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = mul i64 %98, 1
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = icmp ult i64 %99, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %93
  %104 = load i8*, i8** %2, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 0
  br label %108

108:                                              ; preds = %103, %93
  %109 = phi i1 [ false, %93 ], [ %107, %103 ]
  br i1 %109, label %110, label %222

110:                                              ; preds = %108
  store i32 0, i32* %7, align 4
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %112 = load i8*, i8** %2, align 8
  %113 = load i8*, i8** %2, align 8
  %114 = call i32 @lstrlenW(i8* %113)
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %112, i64 %115
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  store i8* %117, i8** %3, align 8
  %118 = load i8*, i8** %2, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 92
  br i1 %122, label %123, label %144

123:                                              ; preds = %110
  %124 = load i8*, i8** %2, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 63
  br i1 %128, label %129, label %144

129:                                              ; preds = %123
  %130 = load i8*, i8** %2, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 2
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 63
  br i1 %134, label %135, label %144

135:                                              ; preds = %129
  %136 = load i8*, i8** %2, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 3
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 92
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i8*, i8** %2, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 4
  store i8* %143, i8** %2, align 8
  br label %144

144:                                              ; preds = %141, %135, %129, %123, %110
  %145 = load i8*, i8** %3, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 33
  br i1 %149, label %150, label %156

150:                                              ; preds = %144
  %151 = load i32, i32* @MOVEFILE_REPLACE_EXISTING, align 4
  %152 = load i32, i32* %7, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %7, align 4
  %154 = load i8*, i8** %3, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %3, align 8
  br label %156

156:                                              ; preds = %150, %144
  %157 = load i8*, i8** %3, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 0
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 92
  br i1 %161, label %162, label %183

162:                                              ; preds = %156
  %163 = load i8*, i8** %3, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 63
  br i1 %167, label %168, label %183

168:                                              ; preds = %162
  %169 = load i8*, i8** %3, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 2
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 63
  br i1 %173, label %174, label %183

174:                                              ; preds = %168
  %175 = load i8*, i8** %3, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 3
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 92
  br i1 %179, label %180, label %183

180:                                              ; preds = %174
  %181 = load i8*, i8** %3, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 4
  store i8* %182, i8** %3, align 8
  br label %183

183:                                              ; preds = %180, %174, %168, %162, %156
  %184 = load i8*, i8** %3, align 8
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %183
  %189 = load i8*, i8** %2, align 8
  %190 = load i8*, i8** %3, align 8
  %191 = load i32, i32* %7, align 4
  %192 = call i32 @MoveFileExW(i8* %189, i8* %190, i32 %191)
  br label %214

193:                                              ; preds = %183
  %194 = load i8*, i8** %2, align 8
  %195 = call i32 @GetFileAttributesW(i8* %194)
  store i32 %195, i32* %6, align 4
  %196 = load i32, i32* %6, align 4
  %197 = icmp ne i32 %196, -1
  br i1 %197, label %198, label %210

198:                                              ; preds = %193
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %201 = and i32 %199, %200
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load i8*, i8** %2, align 8
  %205 = call i32 @DeleteFileW(i8* %204)
  br label %209

206:                                              ; preds = %198
  %207 = load i8*, i8** %2, align 8
  %208 = call i32 @RemoveDirectoryW(i8* %207)
  br label %209

209:                                              ; preds = %206, %203
  br label %213

210:                                              ; preds = %193
  %211 = call i32 (...) @GetLastError()
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %211)
  br label %213

213:                                              ; preds = %210, %209
  br label %214

214:                                              ; preds = %213, %188
  br label %215

215:                                              ; preds = %214
  %216 = load i8*, i8** %3, align 8
  %217 = load i8*, i8** %3, align 8
  %218 = call i32 @lstrlenW(i8* %217)
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %216, i64 %219
  %221 = getelementptr inbounds i8, i8* %220, i64 1
  store i8* %221, i8** %2, align 8
  br label %93

222:                                              ; preds = %108
  %223 = load i32*, i32** %5, align 8
  %224 = call i32 @RegDeleteValueW(i32* %223, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @pendingRename.ValueName, i64 0, i64 0))
  store i32 %224, i32* %6, align 4
  %225 = load i32, i32* @ERROR_SUCCESS, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %227, label %231

227:                                              ; preds = %222
  %228 = call i32 (...) @GetLastError()
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %228)
  %230 = load i32, i32* @FALSE, align 4
  store i32 %230, i32* %6, align 4
  br label %233

231:                                              ; preds = %222
  %232 = load i32, i32* @TRUE, align 4
  store i32 %232, i32* %6, align 4
  br label %233

233:                                              ; preds = %231, %227
  br label %234

234:                                              ; preds = %233, %88, %60, %48, %39, %32, %25
  %235 = load i8*, i8** %1, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load i8*, i8** %1, align 8
  %239 = call i32 @free(i8* %238)
  br label %240

240:                                              ; preds = %237, %234
  %241 = load i32*, i32** %5, align 8
  %242 = icmp ne i32* %241, null
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load i32*, i32** %5, align 8
  %245 = call i32 @RegCloseKey(i32* %244)
  br label %246

246:                                              ; preds = %243, %240
  %247 = load i32, i32* %6, align 4
  ret i32 %247
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @RegOpenKeyExW(i32, i8*, i32, i32, i32**) #1

declare dso_local i32 @RegQueryValueExW(i32*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i32 @MoveFileExW(i8*, i8*, i32) #1

declare dso_local i32 @GetFileAttributesW(i8*) #1

declare dso_local i32 @DeleteFileW(i8*) #1

declare dso_local i32 @RemoveDirectoryW(i8*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @RegDeleteValueW(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

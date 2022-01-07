; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/userenv/extr_registry.c_CopyKey.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/userenv/extr_registry.c_CopyKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"CopyKey() called \0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"RegQueryInfoKey() failed (Error %lu)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"dwSubKeys %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"dwMaxSubKeyNameLength %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"dwValues %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"dwMaxValueNameLength %lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"dwMaxValueLength %lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Buffer allocation failed\0A\00", align 1
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [39 x i8] c"Subkey enumeration failed (Error %lu)\0A\00", align 1
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"Subkey creation failed (Error %lu)\0A\00", align 1
@KEY_READ = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"Error: %lu\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"CopyKey() done \0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @CopyKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CopyKey(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %23 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @RegQueryInfoKey(i32 %24, i32* null, i32* null, i32* null, i64* %8, i64* %11, i32* null, i64* %9, i64* %13, i64* %15, i32* null, i32* null)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @ERROR_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load i64, i64* %6, align 8
  %31 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @SetLastError(i64 %32)
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %3, align 4
  br label %245

35:                                               ; preds = %2
  %36 = load i64, i64* %11, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %13, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  %42 = load i64, i64* %11, align 8
  %43 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %42)
  %44 = load i64, i64* %9, align 8
  %45 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 %44)
  %46 = load i64, i64* %13, align 8
  %47 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %46)
  %48 = load i64, i64* %15, align 8
  %49 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i64 %48)
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %152

52:                                               ; preds = %35
  %53 = call i32 (...) @GetProcessHeap()
  %54 = load i64, i64* %11, align 8
  %55 = mul i64 %54, 4
  %56 = call i32* @HeapAlloc(i32 %53, i32 0, i64 %55)
  store i32* %56, i32** %19, align 8
  %57 = load i32*, i32** %19, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %61 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  %62 = call i32 @SetLastError(i64 %61)
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %3, align 4
  br label %245

64:                                               ; preds = %52
  store i64 0, i64* %18, align 8
  br label %65

65:                                               ; preds = %145, %64
  %66 = load i64, i64* %18, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %148

69:                                               ; preds = %65
  %70 = load i64, i64* %11, align 8
  store i64 %70, i64* %12, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i64, i64* %18, align 8
  %73 = load i32*, i32** %19, align 8
  %74 = call i64 @RegEnumKeyExW(i32 %71, i64 %72, i32* %73, i64* %12, i32* null, i32* null, i32* null, i32* %7)
  store i64 %74, i64* %6, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @ERROR_SUCCESS, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %69
  %79 = load i64, i64* %6, align 8
  %80 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i64 %79)
  %81 = call i32 (...) @GetProcessHeap()
  %82 = load i32*, i32** %19, align 8
  %83 = call i32 @HeapFree(i32 %81, i32 0, i32* %82)
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @SetLastError(i64 %84)
  %86 = load i32, i32* @FALSE, align 4
  store i32 %86, i32* %3, align 4
  br label %245

87:                                               ; preds = %69
  %88 = load i32, i32* %4, align 4
  %89 = load i32*, i32** %19, align 8
  %90 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %91 = load i32, i32* @KEY_WRITE, align 4
  %92 = call i64 @RegCreateKeyExW(i32 %88, i32* %89, i32 0, i32* null, i32 %90, i32 %91, i32* null, i32* %21, i64* %17)
  store i64 %92, i64* %6, align 8
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* @ERROR_SUCCESS, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %87
  %97 = load i64, i64* %6, align 8
  %98 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i64 %97)
  %99 = call i32 (...) @GetProcessHeap()
  %100 = load i32*, i32** %19, align 8
  %101 = call i32 @HeapFree(i32 %99, i32 0, i32* %100)
  %102 = load i64, i64* %6, align 8
  %103 = call i32 @SetLastError(i64 %102)
  %104 = load i32, i32* @FALSE, align 4
  store i32 %104, i32* %3, align 4
  br label %245

105:                                              ; preds = %87
  %106 = load i32, i32* %5, align 4
  %107 = load i32*, i32** %19, align 8
  %108 = load i32, i32* @KEY_READ, align 4
  %109 = call i64 @RegOpenKeyExW(i32 %106, i32* %107, i32 0, i32 %108, i32* %22)
  store i64 %109, i64* %6, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* @ERROR_SUCCESS, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %105
  %114 = load i64, i64* %6, align 8
  %115 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 %114)
  %116 = load i32, i32* %21, align 4
  %117 = call i32 @RegCloseKey(i32 %116)
  %118 = call i32 (...) @GetProcessHeap()
  %119 = load i32*, i32** %19, align 8
  %120 = call i32 @HeapFree(i32 %118, i32 0, i32* %119)
  %121 = load i64, i64* %6, align 8
  %122 = call i32 @SetLastError(i64 %121)
  %123 = load i32, i32* @FALSE, align 4
  store i32 %123, i32* %3, align 4
  br label %245

124:                                              ; preds = %105
  %125 = load i32, i32* %21, align 4
  %126 = load i32, i32* %22, align 4
  %127 = call i32 @CopyKey(i32 %125, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %140, label %129

129:                                              ; preds = %124
  %130 = call i64 (...) @GetLastError()
  %131 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 %130)
  %132 = load i32, i32* %22, align 4
  %133 = call i32 @RegCloseKey(i32 %132)
  %134 = load i32, i32* %21, align 4
  %135 = call i32 @RegCloseKey(i32 %134)
  %136 = call i32 (...) @GetProcessHeap()
  %137 = load i32*, i32** %19, align 8
  %138 = call i32 @HeapFree(i32 %136, i32 0, i32* %137)
  %139 = load i32, i32* @FALSE, align 4
  store i32 %139, i32* %3, align 4
  br label %245

140:                                              ; preds = %124
  %141 = load i32, i32* %22, align 4
  %142 = call i32 @RegCloseKey(i32 %141)
  %143 = load i32, i32* %21, align 4
  %144 = call i32 @RegCloseKey(i32 %143)
  br label %145

145:                                              ; preds = %140
  %146 = load i64, i64* %18, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %18, align 8
  br label %65

148:                                              ; preds = %65
  %149 = call i32 (...) @GetProcessHeap()
  %150 = load i32*, i32** %19, align 8
  %151 = call i32 @HeapFree(i32 %149, i32 0, i32* %150)
  br label %152

152:                                              ; preds = %148, %35
  %153 = load i64, i64* %9, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %242

155:                                              ; preds = %152
  %156 = call i32 (...) @GetProcessHeap()
  %157 = load i64, i64* %13, align 8
  %158 = mul i64 %157, 4
  %159 = call i32* @HeapAlloc(i32 %156, i32 0, i64 %158)
  store i32* %159, i32** %19, align 8
  %160 = load i32*, i32** %19, align 8
  %161 = icmp eq i32* %160, null
  br i1 %161, label %162, label %167

162:                                              ; preds = %155
  %163 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %164 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  %165 = call i32 @SetLastError(i64 %164)
  %166 = load i32, i32* @FALSE, align 4
  store i32 %166, i32* %3, align 4
  br label %245

167:                                              ; preds = %155
  %168 = call i32 (...) @GetProcessHeap()
  %169 = load i64, i64* %15, align 8
  %170 = call i32* @HeapAlloc(i32 %168, i32 0, i64 %169)
  store i32* %170, i32** %20, align 8
  %171 = load i32*, i32** %20, align 8
  %172 = icmp eq i32* %171, null
  br i1 %172, label %173, label %181

173:                                              ; preds = %167
  %174 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %175 = call i32 (...) @GetProcessHeap()
  %176 = load i32*, i32** %19, align 8
  %177 = call i32 @HeapFree(i32 %175, i32 0, i32* %176)
  %178 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  %179 = call i32 @SetLastError(i64 %178)
  %180 = load i32, i32* @FALSE, align 4
  store i32 %180, i32* %3, align 4
  br label %245

181:                                              ; preds = %167
  store i64 0, i64* %18, align 8
  br label %182

182:                                              ; preds = %232, %181
  %183 = load i64, i64* %18, align 8
  %184 = load i64, i64* %9, align 8
  %185 = icmp slt i64 %183, %184
  br i1 %185, label %186, label %235

186:                                              ; preds = %182
  %187 = load i64, i64* %13, align 8
  store i64 %187, i64* %14, align 8
  %188 = load i64, i64* %15, align 8
  store i64 %188, i64* %16, align 8
  %189 = load i32, i32* %5, align 4
  %190 = load i64, i64* %18, align 8
  %191 = load i32*, i32** %19, align 8
  %192 = load i32*, i32** %20, align 8
  %193 = call i64 @RegEnumValueW(i32 %189, i64 %190, i32* %191, i64* %14, i32* null, i64* %10, i32* %192, i64* %16)
  store i64 %193, i64* %6, align 8
  %194 = load i64, i64* %6, align 8
  %195 = load i64, i64* @ERROR_SUCCESS, align 8
  %196 = icmp ne i64 %194, %195
  br i1 %196, label %197, label %209

197:                                              ; preds = %186
  %198 = load i64, i64* %6, align 8
  %199 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 %198)
  %200 = call i32 (...) @GetProcessHeap()
  %201 = load i32*, i32** %20, align 8
  %202 = call i32 @HeapFree(i32 %200, i32 0, i32* %201)
  %203 = call i32 (...) @GetProcessHeap()
  %204 = load i32*, i32** %19, align 8
  %205 = call i32 @HeapFree(i32 %203, i32 0, i32* %204)
  %206 = load i64, i64* %6, align 8
  %207 = call i32 @SetLastError(i64 %206)
  %208 = load i32, i32* @FALSE, align 4
  store i32 %208, i32* %3, align 4
  br label %245

209:                                              ; preds = %186
  %210 = load i32, i32* %4, align 4
  %211 = load i32*, i32** %19, align 8
  %212 = load i64, i64* %10, align 8
  %213 = load i32*, i32** %20, align 8
  %214 = load i64, i64* %16, align 8
  %215 = call i64 @RegSetValueExW(i32 %210, i32* %211, i32 0, i64 %212, i32* %213, i64 %214)
  store i64 %215, i64* %6, align 8
  %216 = load i64, i64* %6, align 8
  %217 = load i64, i64* @ERROR_SUCCESS, align 8
  %218 = icmp ne i64 %216, %217
  br i1 %218, label %219, label %231

219:                                              ; preds = %209
  %220 = load i64, i64* %6, align 8
  %221 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 %220)
  %222 = call i32 (...) @GetProcessHeap()
  %223 = load i32*, i32** %20, align 8
  %224 = call i32 @HeapFree(i32 %222, i32 0, i32* %223)
  %225 = call i32 (...) @GetProcessHeap()
  %226 = load i32*, i32** %19, align 8
  %227 = call i32 @HeapFree(i32 %225, i32 0, i32* %226)
  %228 = load i64, i64* %6, align 8
  %229 = call i32 @SetLastError(i64 %228)
  %230 = load i32, i32* @FALSE, align 4
  store i32 %230, i32* %3, align 4
  br label %245

231:                                              ; preds = %209
  br label %232

232:                                              ; preds = %231
  %233 = load i64, i64* %18, align 8
  %234 = add nsw i64 %233, 1
  store i64 %234, i64* %18, align 8
  br label %182

235:                                              ; preds = %182
  %236 = call i32 (...) @GetProcessHeap()
  %237 = load i32*, i32** %20, align 8
  %238 = call i32 @HeapFree(i32 %236, i32 0, i32* %237)
  %239 = call i32 (...) @GetProcessHeap()
  %240 = load i32*, i32** %19, align 8
  %241 = call i32 @HeapFree(i32 %239, i32 0, i32* %240)
  br label %242

242:                                              ; preds = %235, %152
  %243 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %244 = load i32, i32* @TRUE, align 4
  store i32 %244, i32* %3, align 4
  br label %245

245:                                              ; preds = %242, %219, %197, %173, %162, %129, %113, %96, %78, %59, %29
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i64 @RegQueryInfoKey(i32, i32*, i32*, i32*, i64*, i64*, i32*, i64*, i64*, i64*, i32*, i32*) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @SetLastError(i64) #1

declare dso_local i32* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @RegEnumKeyExW(i32, i64, i32*, i64*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i64 @RegCreateKeyExW(i32, i32*, i32, i32*, i32, i32, i32*, i32*, i64*) #1

declare dso_local i64 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @RegEnumValueW(i32, i64, i32*, i64*, i32*, i64*, i32*, i64*) #1

declare dso_local i64 @RegSetValueExW(i32, i32*, i32, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

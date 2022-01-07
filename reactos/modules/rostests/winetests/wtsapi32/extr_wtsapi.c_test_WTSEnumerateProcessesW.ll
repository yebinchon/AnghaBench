; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wtsapi32/extr_wtsapi.c_test_WTSEnumerateProcessesW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wtsapi32/extr_wtsapi.c_test_WTSEnumerateProcessesW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@WTS_CURRENT_SERVER_HANDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"expected WTSEnumerateProcessesW to fail\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"expected ERROR_INVALID_PARAMETER got: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"expected WTSEnumerateProcessesW to succeed; failed with %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"process name %s not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_WTSEnumerateProcessesW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_WTSEnumerateProcessesW() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = call i32 @GetModuleFileNameW(i32* null, i8* %13, i32 %14)
  %16 = call i32 @lstrlenW(i8* %13)
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %13, i64 %17
  store i8* %18, i8** %6, align 8
  br label %19

19:                                               ; preds = %36, %0
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ugt i8* %20, %13
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 47
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 92
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %22
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %6, align 8
  br label %39

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 -1
  store i8* %38, i8** %6, align 8
  br label %19

39:                                               ; preds = %32, %19
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  %40 = call i32 @SetLastError(i32 -559038737)
  %41 = load i32, i32* @WTS_CURRENT_SERVER_HANDLE, align 4
  %42 = call i32 @WTSEnumerateProcessesW(i32 %41, i32 1, i32 1, %struct.TYPE_4__** %5, i64* %3)
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %48 = call i64 (...) @GetLastError()
  %49 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 (...) @GetLastError()
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = icmp ne %struct.TYPE_4__* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %39
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = call i32 @WTSFreeMemory(%struct.TYPE_4__* %57)
  br label %59

59:                                               ; preds = %56, %39
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  %60 = call i32 @SetLastError(i32 -559038737)
  %61 = load i32, i32* @WTS_CURRENT_SERVER_HANDLE, align 4
  %62 = call i32 @WTSEnumerateProcessesW(i32 %61, i32 0, i32 0, %struct.TYPE_4__** %5, i64* %3)
  store i32 %62, i32* %2, align 4
  %63 = load i32, i32* %2, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %68 = call i64 (...) @GetLastError()
  %69 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i64 (...) @GetLastError()
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %72)
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %75 = icmp ne %struct.TYPE_4__* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %59
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %78 = call i32 @WTSFreeMemory(%struct.TYPE_4__* %77)
  br label %79

79:                                               ; preds = %76, %59
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  %80 = call i32 @SetLastError(i32 -559038737)
  %81 = load i32, i32* @WTS_CURRENT_SERVER_HANDLE, align 4
  %82 = call i32 @WTSEnumerateProcessesW(i32 %81, i32 0, i32 2, %struct.TYPE_4__** %5, i64* %3)
  store i32 %82, i32* %2, align 4
  %83 = load i32, i32* %2, align 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %88 = call i64 (...) @GetLastError()
  %89 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i64 (...) @GetLastError()
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %92)
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = icmp ne %struct.TYPE_4__* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %79
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %98 = call i32 @WTSFreeMemory(%struct.TYPE_4__* %97)
  br label %99

99:                                               ; preds = %96, %79
  %100 = call i32 @SetLastError(i32 -559038737)
  %101 = load i32, i32* @WTS_CURRENT_SERVER_HANDLE, align 4
  %102 = call i32 @WTSEnumerateProcessesW(i32 %101, i32 0, i32 1, %struct.TYPE_4__** null, i64* %3)
  store i32 %102, i32* %2, align 4
  %103 = load i32, i32* %2, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %108 = call i64 (...) @GetLastError()
  %109 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i64 (...) @GetLastError()
  %113 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %112)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  %114 = call i32 @SetLastError(i32 -559038737)
  %115 = load i32, i32* @WTS_CURRENT_SERVER_HANDLE, align 4
  %116 = call i32 @WTSEnumerateProcessesW(i32 %115, i32 0, i32 1, %struct.TYPE_4__** %5, i64* null)
  store i32 %116, i32* %2, align 4
  %117 = load i32, i32* %2, align 4
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %122 = call i64 (...) @GetLastError()
  %123 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %124 = icmp eq i64 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i64 (...) @GetLastError()
  %127 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %126)
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %129 = icmp ne %struct.TYPE_4__* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %99
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %132 = call i32 @WTSFreeMemory(%struct.TYPE_4__* %131)
  br label %133

133:                                              ; preds = %130, %99
  store i64 0, i64* %3, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  %134 = call i32 @SetLastError(i32 -559038737)
  %135 = load i32, i32* @WTS_CURRENT_SERVER_HANDLE, align 4
  %136 = call i32 @WTSEnumerateProcessesW(i32 %135, i32 0, i32 1, %struct.TYPE_4__** %5, i64* %3)
  store i32 %136, i32* %2, align 4
  %137 = load i32, i32* %2, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %133
  %140 = load i32, i32* %2, align 4
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = call i64 @broken(i32 %143)
  %145 = icmp ne i64 %144, 0
  br label %146

146:                                              ; preds = %139, %133
  %147 = phi i1 [ true, %133 ], [ %145, %139 ]
  %148 = zext i1 %147 to i32
  %149 = call i64 (...) @GetLastError()
  %150 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i64 %149)
  store i64 0, i64* %4, align 8
  br label %151

151:                                              ; preds = %176, %146
  %152 = load i32, i32* %2, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load i64, i64* %4, align 8
  %156 = load i64, i64* %3, align 8
  %157 = icmp ult i64 %155, %156
  br label %158

158:                                              ; preds = %154, %151
  %159 = phi i1 [ false, %151 ], [ %157, %154 ]
  br i1 %159, label %160, label %179

160:                                              ; preds = %158
  %161 = load i32, i32* %1, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %173, label %163

163:                                              ; preds = %160
  %164 = load i8*, i8** %6, align 8
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %166 = load i64, i64* %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @lstrcmpW(i8* %164, i32 %169)
  %171 = icmp ne i32 %170, 0
  %172 = xor i1 %171, true
  br label %173

173:                                              ; preds = %163, %160
  %174 = phi i1 [ true, %160 ], [ %172, %163 ]
  %175 = zext i1 %174 to i32
  store i32 %175, i32* %1, align 4
  br label %176

176:                                              ; preds = %173
  %177 = load i64, i64* %4, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %4, align 8
  br label %151

179:                                              ; preds = %158
  %180 = load i32, i32* %1, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %189, label %182

182:                                              ; preds = %179
  %183 = load i32, i32* %2, align 4
  %184 = icmp ne i32 %183, 0
  %185 = xor i1 %184, true
  %186 = zext i1 %185 to i32
  %187 = call i64 @broken(i32 %186)
  %188 = icmp ne i64 %187, 0
  br label %189

189:                                              ; preds = %182, %179
  %190 = phi i1 [ true, %179 ], [ %188, %182 ]
  %191 = zext i1 %190 to i32
  %192 = load i8*, i8** %6, align 8
  %193 = call i64 @wine_dbgstr_w(i8* %192)
  %194 = call i32 (i32, i8*, ...) @ok(i32 %191, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %193)
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %196 = icmp ne %struct.TYPE_4__* %195, null
  br i1 %196, label %197, label %200

197:                                              ; preds = %189
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %199 = call i32 @WTSFreeMemory(%struct.TYPE_4__* %198)
  br label %200

200:                                              ; preds = %197, %189
  %201 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %201)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetModuleFileNameW(i32*, i8*, i32) #2

declare dso_local i32 @lstrlenW(i8*) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @WTSEnumerateProcessesW(i32, i32, i32, %struct.TYPE_4__**, i64*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @WTSFreeMemory(%struct.TYPE_4__*) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @lstrcmpW(i8*, i32) #2

declare dso_local i64 @wine_dbgstr_w(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

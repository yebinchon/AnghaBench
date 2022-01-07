; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_SearchPathW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_SearchPathW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_SearchPathW.testdeprelW = internal constant [14 x i8] c"./testdep.dll\00", align 1
@test_SearchPathW.testdepW = internal constant [12 x i8] c"testdep.dll\00", align 1
@test_SearchPathW.testdep1W = internal constant [8 x i8] c"testdep\00", align 1
@test_SearchPathW.kernel32dllW = internal constant [13 x i8] c"kernel32.dll\00", align 1
@test_SearchPathW.kernel32W = internal constant [9 x i8] c"kernel32\00", align 1
@test_SearchPathW.ole32W = internal constant [6 x i8] c"ole32\00", align 1
@test_SearchPathW.extW = internal constant [5 x i8] c".ext\00", align 1
@test_SearchPathW.dllW = internal constant [5 x i8] c".dll\00", align 1
@test_SearchPathW.fileW = internal constant [1 x i8] zeroinitializer, align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Expected failure, got %d\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Expected ERROR_INVALID_PARAMETER, got %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"testdep1.manifest\00", align 1
@manifest_dep = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"main.manifest\00", align 1
@manifest_main = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to activate context, %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"got wrong path %s, %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"failed to deactivate context, %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SearchPathW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SearchPathW() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %1, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %2, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %3, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %4, align 8
  store i8* null, i8** %5, align 8
  %19 = udiv i64 %10, 1
  %20 = trunc i64 %19 to i32
  %21 = call i32 @GetWindowsDirectoryW(i8* %12, i32 %20)
  %22 = call i32 @SetLastError(i32 -559038737)
  %23 = udiv i64 %14, 1
  %24 = trunc i64 %23 to i32
  %25 = call i32 @pSearchPathW(i8* %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_SearchPathW.fileW, i64 0, i64 0), i8* null, i32 %24, i8* %15, i8** %5)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %8, align 4
  %30 = call i32 (i32, i8*, i32, ...) @ok(i32 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = call i32 (...) @GetLastError()
  %32 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 (...) @GetLastError()
  %36 = call i32 (i32, i8*, i32, ...) @ok(i32 %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @manifest_dep, align 4
  %38 = call i32 @create_manifest_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @manifest_main, align 4
  %40 = call i32 @create_manifest_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = call i32 @test_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 %41, i32* %7, align 4
  %42 = call i32 @delete_manifest_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 @delete_manifest_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %44 = udiv i64 %14, 1
  %45 = trunc i64 %44 to i32
  %46 = call i32 @pSearchPathW(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_SearchPathW.testdepW, i64 0, i64 0), i8* null, i32 %45, i8* %15, i8** null)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %8, align 4
  %51 = call i32 (i32, i8*, i32, ...) @ok(i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = udiv i64 %17, 1
  %53 = trunc i64 %52 to i32
  %54 = call i32 @pSearchPathW(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_SearchPathW.kernel32dllW, i64 0, i64 0), i8* null, i32 %53, i8* %18, i8** null)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %0
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @lstrlenW(i8* %18)
  %60 = icmp eq i32 %58, %59
  br label %61

61:                                               ; preds = %57, %0
  %62 = phi i1 [ false, %0 ], [ %60, %57 ]
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (i32, i8*, i32, ...) @ok(i32 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  %66 = udiv i64 %10, 1
  %67 = trunc i64 %66 to i32
  %68 = call i32 @GetSystemDirectoryW(i8* %12, i32 %67)
  %69 = udiv i64 %17, 1
  %70 = trunc i64 %69 to i32
  %71 = call i32 @pSearchPathW(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SearchPathW.kernel32W, i64 0, i64 0), i8* null, i32 %70, i8* %18, i8** null)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %8, align 4
  %76 = call i32 (i32, i8*, i32, ...) @ok(i32 %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  %77 = udiv i64 %10, 1
  %78 = trunc i64 %77 to i32
  %79 = call i32 @GetWindowsDirectoryW(i8* %12, i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @pActivateActCtx(i32 %80, i32* %6)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 (...) @GetLastError()
  %84 = call i32 (i32, i8*, i32, ...) @ok(i32 %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  %85 = udiv i64 %14, 1
  %86 = trunc i64 %85 to i32
  %87 = call i32 @pSearchPathW(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_SearchPathW.testdepW, i64 0, i64 0), i8* null, i32 %86, i8* %15, i8** null)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %61
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @lstrlenW(i8* %15)
  %93 = icmp eq i32 %91, %92
  br label %94

94:                                               ; preds = %90, %61
  %95 = phi i1 [ false, %61 ], [ %93, %90 ]
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %8, align 4
  %98 = call i32 (i32, i8*, i32, ...) @ok(i32 %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  %99 = udiv i64 %14, 1
  %100 = trunc i64 %99 to i32
  %101 = call i32 @pSearchPathW(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_SearchPathW.testdepW, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_SearchPathW.extW, i64 0, i64 0), i32 %100, i8* %15, i8** null)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %94
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @lstrlenW(i8* %15)
  %107 = icmp eq i32 %105, %106
  br label %108

108:                                              ; preds = %104, %94
  %109 = phi i1 [ false, %94 ], [ %107, %104 ]
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %8, align 4
  %112 = call i32 (i32, i8*, i32, ...) @ok(i32 %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = udiv i64 %14, 1
  %114 = trunc i64 %113 to i32
  %115 = call i32 @pSearchPathW(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SearchPathW.testdep1W, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_SearchPathW.dllW, i64 0, i64 0), i32 %114, i8* %15, i8** null)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %108
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @lstrlenW(i8* %15)
  %121 = icmp eq i32 %119, %120
  br label %122

122:                                              ; preds = %118, %108
  %123 = phi i1 [ false, %108 ], [ %121, %118 ]
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %8, align 4
  %126 = call i32 (i32, i8*, i32, ...) @ok(i32 %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  %127 = udiv i64 %14, 1
  %128 = trunc i64 %127 to i32
  %129 = call i32 @pSearchPathW(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SearchPathW.testdep1W, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_SearchPathW.extW, i64 0, i64 0), i32 %128, i8* %15, i8** null)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = load i32, i32* %8, align 4
  %135 = call i32 (i32, i8*, i32, ...) @ok(i32 %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %134)
  %136 = udiv i64 %14, 1
  %137 = trunc i64 %136 to i32
  %138 = call i32 @pSearchPathW(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_SearchPathW.testdeprelW, i64 0, i64 0), i8* null, i32 %137, i8* %15, i8** null)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = load i32, i32* %8, align 4
  %144 = call i32 (i32, i8*, i32, ...) @ok(i32 %142, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %143)
  %145 = udiv i64 %14, 1
  %146 = trunc i64 %145 to i32
  %147 = call i32 @pSearchPathW(i8* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_SearchPathW.testdepW, i64 0, i64 0), i8* null, i32 %146, i8* %15, i8** null)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = load i32, i32* %8, align 4
  %153 = call i32 (i32, i8*, i32, ...) @ok(i32 %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %152)
  %154 = udiv i64 %14, 1
  %155 = trunc i64 %154 to i32
  %156 = call i32 @pSearchPathW(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_SearchPathW.kernel32dllW, i64 0, i64 0), i8* null, i32 %155, i8* %15, i8** null)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %122
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @lstrlenW(i8* %15)
  %162 = icmp eq i32 %160, %161
  br label %163

163:                                              ; preds = %159, %122
  %164 = phi i1 [ false, %122 ], [ %162, %159 ]
  %165 = zext i1 %164 to i32
  %166 = load i32, i32* %8, align 4
  %167 = call i32 (i32, i8*, i32, ...) @ok(i32 %165, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %166)
  %168 = call i32 @lstrcmpW(i8* %15, i8* %18)
  %169 = call i32 @wine_dbgstr_w(i8* %15)
  %170 = call i32 @wine_dbgstr_w(i8* %18)
  %171 = call i32 (i32, i8*, i32, ...) @ok(i32 %168, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %169, i32 %170)
  %172 = udiv i64 %14, 1
  %173 = trunc i64 %172 to i32
  %174 = call i32 @pSearchPathW(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_SearchPathW.ole32W, i64 0, i64 0), i8* null, i32 %173, i8* %15, i8** null)
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %163
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @lstrlenW(i8* %15)
  %180 = icmp eq i32 %178, %179
  br label %181

181:                                              ; preds = %177, %163
  %182 = phi i1 [ false, %163 ], [ %180, %177 ]
  %183 = zext i1 %182 to i32
  %184 = load i32, i32* %8, align 4
  %185 = call i32 (i32, i8*, i32, ...) @ok(i32 %183, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %6, align 4
  %187 = call i32 @pDeactivateActCtx(i32 0, i32 %186)
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* %8, align 4
  %189 = call i32 (...) @GetLastError()
  %190 = call i32 (i32, i8*, i32, ...) @ok(i32 %188, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* %7, align 4
  %192 = call i32 @pReleaseActCtx(i32 %191)
  %193 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %193)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetWindowsDirectoryW(i8*, i32) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @pSearchPathW(i8*, i8*, i8*, i32, i8*, i8**) #2

declare dso_local i32 @ok(i32, i8*, i32, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @create_manifest_file(i8*, i32) #2

declare dso_local i32 @test_create(i8*) #2

declare dso_local i32 @delete_manifest_file(i8*) #2

declare dso_local i32 @lstrlenW(i8*) #2

declare dso_local i32 @GetSystemDirectoryW(i8*, i32) #2

declare dso_local i32 @pActivateActCtx(i32, i32*) #2

declare dso_local i32 @lstrcmpW(i8*, i8*) #2

declare dso_local i32 @wine_dbgstr_w(i8*) #2

declare dso_local i32 @pDeactivateActCtx(i32, i32) #2

declare dso_local i32 @pReleaseActCtx(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

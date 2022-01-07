; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_ordinal.c_test_alloc_shared.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_ordinal.c_test_alloc_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.shared_struct = type { i32, i32* }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"SHAllocShared(NULL...) failed: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"SHFreeShared failed: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"SHLockShared failed: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Wrong value in shared memory: %d instead of %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"SHUnlockShared failed: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%s %s %d %p\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"could not create child process error: %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Expected handle in shared memory\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"last error should not have changed, got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @test_alloc_shared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_alloc_shared(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.shared_struct, align 8
  %13 = alloca %struct.shared_struct*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = bitcast %struct.TYPE_5__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 4, i1 false)
  store i32* null, i32** %11, align 8
  %20 = call i32 (...) @GetCurrentProcessId()
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32* @pSHAllocShared(%struct.shared_struct* null, i32 10, i32 %21)
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 (...) @GetLastError()
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @pSHFreeShared(i32* %28, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = call i32 (...) @GetLastError()
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = getelementptr inbounds %struct.shared_struct, %struct.shared_struct* %12, i32 0, i32 0
  store i32 305419896, i32* %34, align 8
  %35 = getelementptr inbounds %struct.shared_struct, %struct.shared_struct* %12, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32* @pSHAllocShared(%struct.shared_struct* %12, i32 16, i32 %36)
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = icmp ne i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 (...) @GetLastError()
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call %struct.shared_struct* @pSHLockShared(i32* %43, i32 %44)
  store %struct.shared_struct* %45, %struct.shared_struct** %13, align 8
  %46 = load %struct.shared_struct*, %struct.shared_struct** %13, align 8
  %47 = icmp ne %struct.shared_struct* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i32 (...) @GetLastError()
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load %struct.shared_struct*, %struct.shared_struct** %13, align 8
  %52 = icmp ne %struct.shared_struct* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %2
  %54 = load %struct.shared_struct*, %struct.shared_struct** %13, align 8
  %55 = getelementptr inbounds %struct.shared_struct, %struct.shared_struct* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 305419896
  %58 = zext i1 %57 to i32
  %59 = load %struct.shared_struct*, %struct.shared_struct** %13, align 8
  %60 = getelementptr inbounds %struct.shared_struct, %struct.shared_struct* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 305419896)
  br label %63

63:                                               ; preds = %53, %2
  %64 = load %struct.shared_struct*, %struct.shared_struct** %13, align 8
  %65 = call i32 @pSHUnlockShared(%struct.shared_struct* %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i32 (...) @GetLastError()
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = load i8**, i8*** %4, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i8**, i8*** %4, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %71, i8* %74, i32 %75, i32* %76)
  %78 = load i32, i32* @FALSE, align 4
  %79 = call i32 @CreateProcessA(i32* null, i8* %18, i32* null, i32* null, i32 %78, i32 0, i32* null, i32* null, %struct.TYPE_5__* %8, %struct.TYPE_6__* %7)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = call i32 (...) @GetLastError()
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %133

85:                                               ; preds = %63
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @winetest_wait_child_process(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @CloseHandle(i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @CloseHandle(i32 %93)
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call %struct.shared_struct* @pSHLockShared(i32* %95, i32 %96)
  store %struct.shared_struct* %97, %struct.shared_struct** %13, align 8
  %98 = load %struct.shared_struct*, %struct.shared_struct** %13, align 8
  %99 = icmp ne %struct.shared_struct* %98, null
  %100 = zext i1 %99 to i32
  %101 = call i32 (...) @GetLastError()
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load %struct.shared_struct*, %struct.shared_struct** %13, align 8
  %104 = icmp ne %struct.shared_struct* %103, null
  br i1 %104, label %105, label %127

105:                                              ; preds = %85
  %106 = load %struct.shared_struct*, %struct.shared_struct** %13, align 8
  %107 = getelementptr inbounds %struct.shared_struct, %struct.shared_struct* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 305419896
  br i1 %109, label %110, label %127

110:                                              ; preds = %105
  %111 = load %struct.shared_struct*, %struct.shared_struct** %13, align 8
  %112 = getelementptr inbounds %struct.shared_struct, %struct.shared_struct* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 305419897
  %115 = zext i1 %114 to i32
  %116 = load %struct.shared_struct*, %struct.shared_struct** %13, align 8
  %117 = getelementptr inbounds %struct.shared_struct, %struct.shared_struct* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %118, i32 305419897)
  %120 = load %struct.shared_struct*, %struct.shared_struct** %13, align 8
  %121 = getelementptr inbounds %struct.shared_struct, %struct.shared_struct* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  store i32* %122, i32** %11, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = icmp ne i32* %123, null
  %125 = zext i1 %124 to i32
  %126 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %127

127:                                              ; preds = %110, %105, %85
  %128 = load %struct.shared_struct*, %struct.shared_struct** %13, align 8
  %129 = call i32 @pSHUnlockShared(%struct.shared_struct* %128)
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = call i32 (...) @GetLastError()
  %132 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %127, %63
  %134 = load i32*, i32** %10, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @pSHFreeShared(i32* %134, i32 %135)
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = call i32 (...) @GetLastError()
  %139 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %138)
  %140 = load i32*, i32** %11, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %175

142:                                              ; preds = %133
  %143 = load i32*, i32** %11, align 8
  %144 = load i32, i32* %9, align 4
  %145 = call %struct.shared_struct* @pSHLockShared(i32* %143, i32 %144)
  store %struct.shared_struct* %145, %struct.shared_struct** %13, align 8
  %146 = load %struct.shared_struct*, %struct.shared_struct** %13, align 8
  %147 = icmp ne %struct.shared_struct* %146, null
  %148 = zext i1 %147 to i32
  %149 = call i32 (...) @GetLastError()
  %150 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %149)
  %151 = load %struct.shared_struct*, %struct.shared_struct** %13, align 8
  %152 = icmp ne %struct.shared_struct* %151, null
  br i1 %152, label %153, label %163

153:                                              ; preds = %142
  %154 = load %struct.shared_struct*, %struct.shared_struct** %13, align 8
  %155 = getelementptr inbounds %struct.shared_struct, %struct.shared_struct* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, -559038737
  %158 = zext i1 %157 to i32
  %159 = load %struct.shared_struct*, %struct.shared_struct** %13, align 8
  %160 = getelementptr inbounds %struct.shared_struct, %struct.shared_struct* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %161, i32 -559038737)
  br label %163

163:                                              ; preds = %153, %142
  %164 = load %struct.shared_struct*, %struct.shared_struct** %13, align 8
  %165 = call i32 @pSHUnlockShared(%struct.shared_struct* %164)
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %14, align 4
  %167 = call i32 (...) @GetLastError()
  %168 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %167)
  %169 = load i32*, i32** %11, align 8
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @pSHFreeShared(i32* %169, i32 %170)
  store i32 %171, i32* %14, align 4
  %172 = load i32, i32* %14, align 4
  %173 = call i32 (...) @GetLastError()
  %174 = call i32 (i32, i8*, ...) @ok(i32 %172, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %163, %133
  %176 = call i32 @SetLastError(i32 -559038737)
  %177 = load i32, i32* %9, align 4
  %178 = call i32 @pSHFreeShared(i32* null, i32 %177)
  store i32 %178, i32* %14, align 4
  %179 = load i32, i32* %14, align 4
  %180 = call i32 (...) @GetLastError()
  %181 = call i32 (i32, i8*, ...) @ok(i32 %179, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %180)
  %182 = call i32 (...) @GetLastError()
  %183 = icmp eq i32 %182, -559038737
  %184 = zext i1 %183 to i32
  %185 = call i32 (...) @GetLastError()
  %186 = call i32 (i32, i8*, ...) @ok(i32 %184, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %185)
  %187 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %187)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @GetCurrentProcessId(...) #3

declare dso_local i32* @pSHAllocShared(%struct.shared_struct*, i32, i32) #3

declare dso_local i32 @ok(i32, i8*, ...) #3

declare dso_local i32 @GetLastError(...) #3

declare dso_local i32 @pSHFreeShared(i32*, i32) #3

declare dso_local %struct.shared_struct* @pSHLockShared(i32*, i32) #3

declare dso_local i32 @pSHUnlockShared(%struct.shared_struct*) #3

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i32, i32*) #3

declare dso_local i32 @CreateProcessA(i32*, i8*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_5__*, %struct.TYPE_6__*) #3

declare dso_local i32 @winetest_wait_child_process(i32) #3

declare dso_local i32 @CloseHandle(i32) #3

declare dso_local i32 @SetLastError(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

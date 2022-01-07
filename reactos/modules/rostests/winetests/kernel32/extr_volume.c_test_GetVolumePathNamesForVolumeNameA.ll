; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_volume.c_test_GetVolumePathNamesForVolumeNameA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_volume.c_test_GetVolumePathNamesForVolumeNameA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"c:\\\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to get volume name %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"c:\\ -> %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"expected failure\0A\00", align 1
@ERROR_INVALID_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"expected ERROR_INVALID_NAME got %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ERROR_MORE_DATA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"expected ERROR_MORE_DATA got %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"failed to get path names %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"C:\\\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"expected \22\\C:\22 got \22%s\22\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"expected double null-terminated buffer\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"expected 5 got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetVolumePathNamesForVolumeNameA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetVolumePathNamesForVolumeNameA() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %3, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  %14 = trunc i64 %8 to i32
  %15 = call i32 @pGetVolumeNameForVolumeMountPointA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %10, i32 %14)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = call i32 (...) @GetLastError()
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = call i32 @trace(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %10)
  %20 = call i32 @SetLastError(i32 -559038737)
  %21 = call i32 @pGetVolumePathNamesForVolumeNameA(i8* null, i8* null, i32 0, i32* null)
  store i32 %21, i32* %1, align 4
  %22 = call i32 (...) @GetLastError()
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %1, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ERROR_INVALID_NAME, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %6, align 4
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %32)
  %34 = call i32 @SetLastError(i32 -559038737)
  %35 = call i32 @pGetVolumePathNamesForVolumeNameA(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* null, i32 0, i32* null)
  store i32 %35, i32* %1, align 4
  %36 = call i32 (...) @GetLastError()
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %1, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @ERROR_INVALID_NAME, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  %48 = call i32 @SetLastError(i32 -559038737)
  %49 = call i32 @pGetVolumePathNamesForVolumeNameA(i8* %10, i8* null, i32 0, i32* null)
  store i32 %49, i32* %1, align 4
  %50 = call i32 (...) @GetLastError()
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %1, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @ERROR_MORE_DATA, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %6, align 4
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %60)
  %62 = call i32 @SetLastError(i32 -559038737)
  %63 = call i32 @pGetVolumePathNamesForVolumeNameA(i8* %10, i8* %13, i32 0, i32* null)
  store i32 %63, i32* %1, align 4
  %64 = call i32 (...) @GetLastError()
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %1, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @ERROR_MORE_DATA, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %6, align 4
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %74)
  %76 = trunc i64 %12 to i32
  %77 = call i32 @memset(i8* %13, i32 255, i32 %76)
  %78 = trunc i64 %12 to i32
  %79 = call i32 @pGetVolumePathNamesForVolumeNameA(i8* %10, i8* %13, i32 %78, i32* null)
  store i32 %79, i32* %1, align 4
  %80 = load i32, i32* %1, align 4
  %81 = call i32 (...) @GetLastError()
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %81)
  %83 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %13)
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %13)
  %88 = getelementptr inbounds i8, i8* %13, i64 4
  %89 = load i8, i8* %88, align 4
  %90 = icmp ne i8 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  %94 = call i32 @SetLastError(i32 -559038737)
  %95 = call i32 @pGetVolumePathNamesForVolumeNameA(i8* null, i8* null, i32 0, i32* %5)
  store i32 %95, i32* %1, align 4
  %96 = call i32 (...) @GetLastError()
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %1, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @ERROR_INVALID_NAME, align 4
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %6, align 4
  %107 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  store i32 0, i32* %5, align 4
  %108 = call i32 @SetLastError(i32 -559038737)
  %109 = trunc i64 %12 to i32
  %110 = call i32 @pGetVolumePathNamesForVolumeNameA(i8* null, i8* null, i32 %109, i32* %5)
  store i32 %110, i32* %1, align 4
  %111 = call i32 (...) @GetLastError()
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %1, align 4
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @ERROR_INVALID_NAME, align 4
  %119 = icmp eq i32 %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %6, align 4
  %122 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %121)
  store i32 0, i32* %5, align 4
  %123 = call i32 @SetLastError(i32 -559038737)
  %124 = trunc i64 %12 to i32
  %125 = call i32 @pGetVolumePathNamesForVolumeNameA(i8* null, i8* %13, i32 %124, i32* %5)
  store i32 %125, i32* %1, align 4
  %126 = call i32 (...) @GetLastError()
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %1, align 4
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @ERROR_INVALID_NAME, align 4
  %134 = icmp eq i32 %132, %133
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* %6, align 4
  %137 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  store i32 0, i32* %5, align 4
  %138 = call i32 @SetLastError(i32 -559038737)
  %139 = trunc i64 %12 to i32
  %140 = call i32 @pGetVolumePathNamesForVolumeNameA(i8* null, i8* %13, i32 %139, i32* %5)
  store i32 %140, i32* %1, align 4
  %141 = call i32 (...) @GetLastError()
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %1, align 4
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @ERROR_INVALID_NAME, align 4
  %149 = icmp eq i32 %147, %148
  %150 = zext i1 %149 to i32
  %151 = load i32, i32* %6, align 4
  %152 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %151)
  store i32 0, i32* %5, align 4
  %153 = trunc i64 %12 to i32
  %154 = call i32 @memset(i8* %13, i32 255, i32 %153)
  %155 = trunc i64 %12 to i32
  %156 = call i32 @pGetVolumePathNamesForVolumeNameA(i8* %10, i8* %13, i32 %155, i32* %5)
  store i32 %156, i32* %1, align 4
  %157 = load i32, i32* %1, align 4
  %158 = call i32 (...) @GetLastError()
  %159 = call i32 (i32, i8*, ...) @ok(i32 %157, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* %5, align 4
  %161 = icmp eq i32 %160, 5
  br i1 %161, label %168, label %162

162:                                              ; preds = %0
  %163 = load i32, i32* %5, align 4
  %164 = icmp eq i32 %163, 2
  %165 = zext i1 %164 to i32
  %166 = call i64 @broken(i32 %165)
  %167 = icmp ne i64 %166, 0
  br label %168

168:                                              ; preds = %162, %0
  %169 = phi i1 [ true, %0 ], [ %167, %162 ]
  %170 = zext i1 %169 to i32
  %171 = load i32, i32* %5, align 4
  %172 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %171)
  %173 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %13)
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  %177 = call i32 (i32, i8*, ...) @ok(i32 %176, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %13)
  %178 = getelementptr inbounds i8, i8* %13, i64 4
  %179 = load i8, i8* %178, align 4
  %180 = icmp ne i8 %179, 0
  %181 = xor i1 %180, true
  %182 = zext i1 %181 to i32
  %183 = call i32 (i32, i8*, ...) @ok(i32 %182, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  %184 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %184)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pGetVolumeNameForVolumeMountPointA(i8*, i8*, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @trace(i8*, i8*) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @pGetVolumePathNamesForVolumeNameA(i8*, i8*, i32, i32*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i64 @broken(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

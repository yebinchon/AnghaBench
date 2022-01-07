; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_ordinal.c_test_alloc_shared_remote.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_ordinal.c_test_alloc_shared_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shared_struct = type { i32, i32* }

@.str = private unnamed_addr constant [25 x i8] c"SHLockShared failed: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Subprocess failed to modify shared memory, skipping test\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Wrong value in shared memory: %d instead of %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"SHAllocShared failed: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"SHUnlockShared failed: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"expected NULL, got new handle\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"last error should not have changed, got %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"SHMapHandle failed: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"Subprocess failed to map shared memory, skipping test\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"SHFreeShared failed: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @test_alloc_shared_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_alloc_shared_remote(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.shared_struct, align 8
  %6 = alloca %struct.shared_struct*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.shared_struct* @pSHLockShared(i32* %9, i32 %10)
  store %struct.shared_struct* %11, %struct.shared_struct** %6, align 8
  %12 = load %struct.shared_struct*, %struct.shared_struct** %6, align 8
  %13 = icmp ne %struct.shared_struct* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.shared_struct*, %struct.shared_struct** %6, align 8
  %16 = icmp eq %struct.shared_struct* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i64 @broken(i32 %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %14, %2
  %21 = phi i1 [ true, %2 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 (...) @GetLastError()
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.shared_struct*, %struct.shared_struct** %6, align 8
  %26 = icmp eq %struct.shared_struct* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = call i32 @win_skip(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %128

29:                                               ; preds = %20
  %30 = load %struct.shared_struct*, %struct.shared_struct** %6, align 8
  %31 = getelementptr inbounds %struct.shared_struct, %struct.shared_struct* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 305419896
  %34 = zext i1 %33 to i32
  %35 = load %struct.shared_struct*, %struct.shared_struct** %6, align 8
  %36 = getelementptr inbounds %struct.shared_struct, %struct.shared_struct* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 305419896)
  %39 = load %struct.shared_struct*, %struct.shared_struct** %6, align 8
  %40 = getelementptr inbounds %struct.shared_struct, %struct.shared_struct* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = getelementptr inbounds %struct.shared_struct, %struct.shared_struct* %5, i32 0, i32 0
  store i32 -559038737, i32* %43, align 8
  %44 = getelementptr inbounds %struct.shared_struct, %struct.shared_struct* %5, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32* @pSHAllocShared(%struct.shared_struct* %5, i32 16, i32 %45)
  %47 = load %struct.shared_struct*, %struct.shared_struct** %6, align 8
  %48 = getelementptr inbounds %struct.shared_struct, %struct.shared_struct* %47, i32 0, i32 1
  store i32* %46, i32** %48, align 8
  %49 = load %struct.shared_struct*, %struct.shared_struct** %6, align 8
  %50 = getelementptr inbounds %struct.shared_struct, %struct.shared_struct* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 (...) @GetLastError()
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load %struct.shared_struct*, %struct.shared_struct** %6, align 8
  %57 = call i32 @pSHUnlockShared(%struct.shared_struct* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 (...) @GetLastError()
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = call i32 @SetLastError(i32 -559038737)
  %62 = load i32, i32* %3, align 4
  %63 = call i32 (...) @GetCurrentProcessId()
  %64 = call i32* @pSHMapHandle(i32* null, i32 %62, i32 %63, i32 0, i32 0)
  store i32* %64, i32** %7, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = icmp eq i32* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %69 = call i32 (...) @GetLastError()
  %70 = icmp eq i32 %69, -559038737
  %71 = zext i1 %70 to i32
  %72 = call i32 (...) @GetLastError()
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %72)
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* %3, align 4
  %76 = call i32 (...) @GetCurrentProcessId()
  %77 = call i32* @pSHMapHandle(i32* %74, i32 %75, i32 %76, i32 0, i32 0)
  store i32* %77, i32** %7, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %29
  %81 = load i32*, i32** %7, align 8
  %82 = icmp eq i32* %81, null
  %83 = zext i1 %82 to i32
  %84 = call i64 @broken(i32 %83)
  %85 = icmp ne i64 %84, 0
  br label %86

86:                                               ; preds = %80, %29
  %87 = phi i1 [ true, %29 ], [ %85, %80 ]
  %88 = zext i1 %87 to i32
  %89 = call i32 (...) @GetLastError()
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %89)
  %91 = load i32*, i32** %7, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = call i32 @win_skip(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0))
  br label %128

95:                                               ; preds = %86
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 (...) @GetCurrentProcessId()
  %98 = call %struct.shared_struct* @pSHLockShared(i32* %96, i32 %97)
  store %struct.shared_struct* %98, %struct.shared_struct** %6, align 8
  %99 = load %struct.shared_struct*, %struct.shared_struct** %6, align 8
  %100 = icmp ne %struct.shared_struct* %99, null
  %101 = zext i1 %100 to i32
  %102 = call i32 (...) @GetLastError()
  %103 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = load %struct.shared_struct*, %struct.shared_struct** %6, align 8
  %105 = icmp ne %struct.shared_struct* %104, null
  br i1 %105, label %106, label %116

106:                                              ; preds = %95
  %107 = load %struct.shared_struct*, %struct.shared_struct** %6, align 8
  %108 = getelementptr inbounds %struct.shared_struct, %struct.shared_struct* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 305419897
  %111 = zext i1 %110 to i32
  %112 = load %struct.shared_struct*, %struct.shared_struct** %6, align 8
  %113 = getelementptr inbounds %struct.shared_struct, %struct.shared_struct* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %114, i32 305419897)
  br label %116

116:                                              ; preds = %106, %95
  %117 = load %struct.shared_struct*, %struct.shared_struct** %6, align 8
  %118 = call i32 @pSHUnlockShared(%struct.shared_struct* %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 (...) @GetLastError()
  %121 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %120)
  %122 = load i32*, i32** %7, align 8
  %123 = call i32 (...) @GetCurrentProcessId()
  %124 = call i32 @pSHFreeShared(i32* %122, i32 %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 (...) @GetLastError()
  %127 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %116, %93, %27
  ret void
}

declare dso_local %struct.shared_struct* @pSHLockShared(i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32* @pSHAllocShared(%struct.shared_struct*, i32, i32) #1

declare dso_local i32 @pSHUnlockShared(%struct.shared_struct*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32* @pSHMapHandle(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @GetCurrentProcessId(...) #1

declare dso_local i32 @pSHFreeShared(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_diskspace.c_test_SetupDuplicateDiskSpaceListA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_diskspace.c_test_SetupDuplicateDiskSpaceListA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_win9x = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [75 x i8] c"SetupDuplicateDiskSpaceListA crashes with NULL disk space handle on Win9x\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Expected SetupDuplicateDiskSpaceList to return NULL, got %p\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [64 x i8] c"Expected GetLastError() to return ERROR_INVALID_HANDLE, got %u\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [67 x i8] c"Expected GetLastError() to return ERROR_INVALID_PARAMETER, got %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"Expected SetupCreateDiskSpaceListA to return a valid handle, got NULL\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Failed to create a disk space handle\0A\00", align 1
@SPDSL_IGNORE_DISK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [67 x i8] c"Expected new handle (%p) to be different from the old handle (%p)\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Expected SetupDestroyDiskSpaceList to succeed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SetupDuplicateDiskSpaceListA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetupDuplicateDiskSpaceListA() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i64, i64* @is_win9x, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @win_skip(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  br label %64

7:                                                ; preds = %0
  %8 = call i32 @SetLastError(i32 -559038737)
  %9 = call i32* @SetupDuplicateDiskSpaceListA(i32* null, i8* null, i32 0, i32 0)
  store i32* %9, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = icmp ne i32* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32* %14)
  %16 = call i64 (...) @GetLastError()
  %17 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 (...) @GetLastError()
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i64 %20)
  %22 = call i32 @SetLastError(i32 -559038737)
  %23 = call i32* @SetupDuplicateDiskSpaceListA(i32* null, i8* inttoptr (i64 3735928559 to i8*), i32 0, i32 0)
  store i32* %23, i32** %2, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = icmp ne i32* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32* %28)
  %30 = call i64 (...) @GetLastError()
  %31 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 (...) @GetLastError()
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i64 %34)
  %36 = call i32 @SetLastError(i32 -559038737)
  %37 = call i32* @SetupDuplicateDiskSpaceListA(i32* null, i8* null, i32 -559038737, i32 0)
  store i32* %37, i32** %2, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = icmp ne i32* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32* %42)
  %44 = call i64 (...) @GetLastError()
  %45 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 (...) @GetLastError()
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  %50 = call i32 @SetLastError(i32 -559038737)
  %51 = call i32* @SetupDuplicateDiskSpaceListA(i32* null, i8* null, i32 0, i32 -1)
  store i32* %51, i32** %2, align 8
  %52 = load i32*, i32** %2, align 8
  %53 = icmp ne i32* %52, null
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32* %56)
  %58 = call i64 (...) @GetLastError()
  %59 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 (...) @GetLastError()
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i64 %62)
  br label %64

64:                                               ; preds = %7, %5
  %65 = call i32* @SetupCreateDiskSpaceListA(i32* null, i32 0, i32 0)
  store i32* %65, i32** %1, align 8
  %66 = load i32*, i32** %1, align 8
  %67 = icmp ne i32* %66, null
  %68 = zext i1 %67 to i32
  %69 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i32*, i32** %1, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %64
  %73 = call i32 @skip(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %156

74:                                               ; preds = %64
  %75 = call i32 @SetLastError(i32 -559038737)
  %76 = load i32*, i32** %1, align 8
  %77 = call i32* @SetupDuplicateDiskSpaceListA(i32* %76, i8* inttoptr (i64 3735928559 to i8*), i32 0, i32 0)
  store i32* %77, i32** %2, align 8
  %78 = load i32*, i32** %2, align 8
  %79 = icmp ne i32* %78, null
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = load i32*, i32** %2, align 8
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32* %82)
  %84 = call i64 (...) @GetLastError()
  %85 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i64 (...) @GetLastError()
  %89 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i64 %88)
  %90 = call i32 @SetLastError(i32 -559038737)
  %91 = load i32*, i32** %1, align 8
  %92 = call i32* @SetupDuplicateDiskSpaceListA(i32* %91, i8* null, i32 -559038737, i32 0)
  store i32* %92, i32** %2, align 8
  %93 = load i32*, i32** %2, align 8
  %94 = icmp ne i32* %93, null
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = load i32*, i32** %2, align 8
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32* %97)
  %99 = call i64 (...) @GetLastError()
  %100 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i64 (...) @GetLastError()
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i64 %103)
  %105 = call i32 @SetLastError(i32 -559038737)
  %106 = load i32*, i32** %1, align 8
  %107 = load i32, i32* @SPDSL_IGNORE_DISK, align 4
  %108 = call i32* @SetupDuplicateDiskSpaceListA(i32* %106, i8* null, i32 0, i32 %107)
  store i32* %108, i32** %2, align 8
  %109 = load i32*, i32** %2, align 8
  %110 = icmp ne i32* %109, null
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = load i32*, i32** %2, align 8
  %114 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32* %113)
  %115 = call i64 (...) @GetLastError()
  %116 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %117 = icmp eq i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i64 (...) @GetLastError()
  %120 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i64 %119)
  %121 = call i32 @SetLastError(i32 -559038737)
  %122 = load i32*, i32** %1, align 8
  %123 = call i32* @SetupDuplicateDiskSpaceListA(i32* %122, i8* null, i32 0, i32 -1)
  store i32* %123, i32** %2, align 8
  %124 = load i32*, i32** %2, align 8
  %125 = icmp ne i32* %124, null
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = load i32*, i32** %2, align 8
  %129 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32* %128)
  %130 = call i64 (...) @GetLastError()
  %131 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i64 (...) @GetLastError()
  %135 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i64 %134)
  %136 = load i32*, i32** %1, align 8
  %137 = call i32* @SetupDuplicateDiskSpaceListA(i32* %136, i8* null, i32 0, i32 0)
  store i32* %137, i32** %2, align 8
  %138 = load i32*, i32** %2, align 8
  %139 = icmp ne i32* %138, null
  %140 = zext i1 %139 to i32
  %141 = load i32*, i32** %2, align 8
  %142 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32* %141)
  %143 = load i32*, i32** %2, align 8
  %144 = load i32*, i32** %1, align 8
  %145 = icmp ne i32* %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i32*, i32** %2, align 8
  %148 = load i32*, i32** %1, align 8
  %149 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i32* %147, i32* %148)
  %150 = load i32*, i32** %2, align 8
  %151 = call i32 @SetupDestroyDiskSpaceList(i32* %150)
  %152 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  %153 = load i32*, i32** %1, align 8
  %154 = call i32 @SetupDestroyDiskSpaceList(i32* %153)
  %155 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  br label %156

156:                                              ; preds = %74, %72
  ret void
}

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32* @SetupDuplicateDiskSpaceListA(i32*, i8*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32* @SetupCreateDiskSpaceListA(i32*, i32, i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @SetupDestroyDiskSpaceList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

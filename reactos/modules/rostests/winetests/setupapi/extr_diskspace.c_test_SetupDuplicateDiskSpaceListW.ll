; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_diskspace.c_test_SetupDuplicateDiskSpaceListW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_diskspace.c_test_SetupDuplicateDiskSpaceListW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"SetupDuplicateDiskSpaceListW is not available\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Expected SetupDuplicateDiskSpaceList to return NULL, got %p\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [64 x i8] c"Expected GetLastError() to return ERROR_INVALID_HANDLE, got %u\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [67 x i8] c"Expected GetLastError() to return ERROR_INVALID_PARAMETER, got %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"Expected SetupCreateDiskSpaceListW to return a valid handle, got NULL\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Failed to create a disk space handle\0A\00", align 1
@SPDSL_IGNORE_DISK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [67 x i8] c"Expected new handle (%p) to be different from the old handle (%p)\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Expected SetupDestroyDiskSpaceList to succeed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SetupDuplicateDiskSpaceListW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetupDuplicateDiskSpaceListW() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32 @SetLastError(i32 -559038737)
  %4 = call i32* @SetupDuplicateDiskSpaceListW(i32* null, i8* null, i32 0, i32 0)
  store i32* %4, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %0
  %8 = call i64 (...) @GetLastError()
  %9 = load i64, i64* @ERROR_CALL_NOT_IMPLEMENTED, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call i32 @win_skip(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %159

13:                                               ; preds = %7, %0
  %14 = load i32*, i32** %2, align 8
  %15 = icmp ne i32* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32* %18)
  %20 = call i64 (...) @GetLastError()
  %21 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 (...) @GetLastError()
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i64 %24)
  %26 = call i32 @SetLastError(i32 -559038737)
  %27 = call i32* @SetupDuplicateDiskSpaceListW(i32* null, i8* inttoptr (i64 3735928559 to i8*), i32 0, i32 0)
  store i32* %27, i32** %2, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = icmp ne i32* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32* %32)
  %34 = call i64 (...) @GetLastError()
  %35 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 (...) @GetLastError()
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i64 %38)
  %40 = call i32 @SetLastError(i32 -559038737)
  %41 = call i32* @SetupDuplicateDiskSpaceListW(i32* null, i8* null, i32 -559038737, i32 0)
  store i32* %41, i32** %2, align 8
  %42 = load i32*, i32** %2, align 8
  %43 = icmp ne i32* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32* %46)
  %48 = call i64 (...) @GetLastError()
  %49 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 (...) @GetLastError()
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i64 %52)
  %54 = call i32 @SetLastError(i32 -559038737)
  %55 = call i32* @SetupDuplicateDiskSpaceListW(i32* null, i8* null, i32 0, i32 -1)
  store i32* %55, i32** %2, align 8
  %56 = load i32*, i32** %2, align 8
  %57 = icmp ne i32* %56, null
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32* %60)
  %62 = call i64 (...) @GetLastError()
  %63 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i64 (...) @GetLastError()
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i64 %66)
  %68 = call i32* @SetupCreateDiskSpaceListW(i32* null, i32 0, i32 0)
  store i32* %68, i32** %1, align 8
  %69 = load i32*, i32** %1, align 8
  %70 = icmp ne i32* %69, null
  %71 = zext i1 %70 to i32
  %72 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i32*, i32** %1, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %13
  %76 = call i32 @skip(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %159

77:                                               ; preds = %13
  %78 = call i32 @SetLastError(i32 -559038737)
  %79 = load i32*, i32** %1, align 8
  %80 = call i32* @SetupDuplicateDiskSpaceListW(i32* %79, i8* inttoptr (i64 3735928559 to i8*), i32 0, i32 0)
  store i32* %80, i32** %2, align 8
  %81 = load i32*, i32** %2, align 8
  %82 = icmp ne i32* %81, null
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = load i32*, i32** %2, align 8
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32* %85)
  %87 = call i64 (...) @GetLastError()
  %88 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i64 (...) @GetLastError()
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i64 %91)
  %93 = call i32 @SetLastError(i32 -559038737)
  %94 = load i32*, i32** %1, align 8
  %95 = call i32* @SetupDuplicateDiskSpaceListW(i32* %94, i8* null, i32 -559038737, i32 0)
  store i32* %95, i32** %2, align 8
  %96 = load i32*, i32** %2, align 8
  %97 = icmp ne i32* %96, null
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = load i32*, i32** %2, align 8
  %101 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32* %100)
  %102 = call i64 (...) @GetLastError()
  %103 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i64 (...) @GetLastError()
  %107 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i64 %106)
  %108 = call i32 @SetLastError(i32 -559038737)
  %109 = load i32*, i32** %1, align 8
  %110 = load i32, i32* @SPDSL_IGNORE_DISK, align 4
  %111 = call i32* @SetupDuplicateDiskSpaceListW(i32* %109, i8* null, i32 0, i32 %110)
  store i32* %111, i32** %2, align 8
  %112 = load i32*, i32** %2, align 8
  %113 = icmp ne i32* %112, null
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = load i32*, i32** %2, align 8
  %117 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32* %116)
  %118 = call i64 (...) @GetLastError()
  %119 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i64 (...) @GetLastError()
  %123 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i64 %122)
  %124 = call i32 @SetLastError(i32 -559038737)
  %125 = load i32*, i32** %1, align 8
  %126 = call i32* @SetupDuplicateDiskSpaceListW(i32* %125, i8* null, i32 0, i32 -1)
  store i32* %126, i32** %2, align 8
  %127 = load i32*, i32** %2, align 8
  %128 = icmp ne i32* %127, null
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = load i32*, i32** %2, align 8
  %132 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32* %131)
  %133 = call i64 (...) @GetLastError()
  %134 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %135 = icmp eq i64 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i64 (...) @GetLastError()
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i64 %137)
  %139 = load i32*, i32** %1, align 8
  %140 = call i32* @SetupDuplicateDiskSpaceListW(i32* %139, i8* null, i32 0, i32 0)
  store i32* %140, i32** %2, align 8
  %141 = load i32*, i32** %2, align 8
  %142 = icmp ne i32* %141, null
  %143 = zext i1 %142 to i32
  %144 = load i32*, i32** %2, align 8
  %145 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32* %144)
  %146 = load i32*, i32** %2, align 8
  %147 = load i32*, i32** %1, align 8
  %148 = icmp ne i32* %146, %147
  %149 = zext i1 %148 to i32
  %150 = load i32*, i32** %2, align 8
  %151 = load i32*, i32** %1, align 8
  %152 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i32* %150, i32* %151)
  %153 = load i32*, i32** %2, align 8
  %154 = call i32 @SetupDestroyDiskSpaceList(i32* %153)
  %155 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  %156 = load i32*, i32** %1, align 8
  %157 = call i32 @SetupDestroyDiskSpaceList(i32* %156)
  %158 = call i32 (i32, i8*, ...) @ok(i32 %157, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  br label %159

159:                                              ; preds = %77, %75, %11
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32* @SetupDuplicateDiskSpaceListW(i32*, i8*, i32, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @SetupCreateDiskSpaceListW(i32*, i32, i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @SetupDestroyDiskSpaceList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

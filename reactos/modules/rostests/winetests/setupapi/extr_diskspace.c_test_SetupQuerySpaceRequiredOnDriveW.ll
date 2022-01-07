; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_diskspace.c_test_SetupQuerySpaceRequiredOnDriveW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_diskspace.c_test_SetupQuerySpaceRequiredOnDriveW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_SetupQuerySpaceRequiredOnDriveW.emptyW = internal constant [1 x i32] zeroinitializer, align 4
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"SetupQuerySpaceRequiredOnDriveW is not available\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Expected SetupQuerySpaceRequiredOnDriveW to return FALSE, got %d\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [64 x i8] c"Expected GetLastError() to return ERROR_INVALID_HANDLE, got %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Expected output space parameter to be untouched\0A\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"Expected SetupCreateDiskSpaceListA to return a valid handle, got NULL\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERROR_INVALID_DRIVE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [67 x i8] c"Expected GetLastError() to return ERROR_INVALID_PARAMETER, got %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"Expected SetupDestroyDiskSpaceList to succeed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SetupQuerySpaceRequiredOnDriveW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetupQuerySpaceRequiredOnDriveW() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 @SetLastError(i32 -559038737)
  %5 = call i64 @SetupQuerySpaceRequiredOnDriveW(i32* null, i32* null, i32* null, i32* null, i32 0)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %0
  %9 = call i64 (...) @GetLastError()
  %10 = load i64, i64* @ERROR_CALL_NOT_IMPLEMENTED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 @win_skip(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %165

14:                                               ; preds = %8, %0
  %15 = load i64, i64* %1, align 8
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %1, align 8
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = call i64 (...) @GetLastError()
  %22 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 (...) @GetLastError()
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i64 %25)
  %27 = call i32 @SetLastError(i32 -559038737)
  store i32 -559038737, i32* %3, align 4
  %28 = call i64 @SetupQuerySpaceRequiredOnDriveW(i32* null, i32* null, i32* %3, i32* null, i32 0)
  store i64 %28, i64* %1, align 8
  %29 = load i64, i64* %1, align 8
  %30 = icmp ne i64 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %1, align 8
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* %3, align 4
  %36 = icmp eq i32 %35, -559038737
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %39 = call i64 (...) @GetLastError()
  %40 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 (...) @GetLastError()
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i64 %43)
  %45 = call i32 @SetLastError(i32 -559038737)
  %46 = call i64 @SetupQuerySpaceRequiredOnDriveW(i32* null, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @test_SetupQuerySpaceRequiredOnDriveW.emptyW, i64 0, i64 0), i32* null, i32* null, i32 0)
  store i64 %46, i64* %1, align 8
  %47 = load i64, i64* %1, align 8
  %48 = icmp ne i64 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %1, align 8
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = call i64 (...) @GetLastError()
  %54 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 (...) @GetLastError()
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i64 %57)
  %59 = call i32 @SetLastError(i32 -559038737)
  store i32 -559038737, i32* %3, align 4
  %60 = call i64 @SetupQuerySpaceRequiredOnDriveW(i32* null, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @test_SetupQuerySpaceRequiredOnDriveW.emptyW, i64 0, i64 0), i32* %3, i32* null, i32 0)
  store i64 %60, i64* %1, align 8
  %61 = load i64, i64* %1, align 8
  %62 = icmp ne i64 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %1, align 8
  %66 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  %67 = load i32, i32* %3, align 4
  %68 = icmp eq i32 %67, -559038737
  %69 = zext i1 %68 to i32
  %70 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %71 = call i64 (...) @GetLastError()
  %72 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i64 (...) @GetLastError()
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i64 %75)
  %77 = call i32* @SetupCreateDiskSpaceListA(i32* null, i32 0, i32 0)
  store i32* %77, i32** %2, align 8
  %78 = load i32*, i32** %2, align 8
  %79 = icmp ne i32* %78, null
  %80 = zext i1 %79 to i32
  %81 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0))
  %82 = call i32 @SetLastError(i32 -559038737)
  %83 = load i32*, i32** %2, align 8
  %84 = call i64 @SetupQuerySpaceRequiredOnDriveW(i32* %83, i32* null, i32* null, i32* null, i32 0)
  store i64 %84, i64* %1, align 8
  %85 = load i64, i64* %1, align 8
  %86 = icmp ne i64 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = load i64, i64* %1, align 8
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i64 %89)
  %91 = call i64 (...) @GetLastError()
  %92 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %14
  %95 = call i64 (...) @GetLastError()
  %96 = load i64, i64* @ERROR_INVALID_DRIVE, align 8
  %97 = icmp eq i64 %95, %96
  br label %98

98:                                               ; preds = %94, %14
  %99 = phi i1 [ true, %14 ], [ %97, %94 ]
  %100 = zext i1 %99 to i32
  %101 = call i64 (...) @GetLastError()
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), i64 %101)
  %103 = call i32 @SetLastError(i32 -559038737)
  store i32 -559038737, i32* %3, align 4
  %104 = load i32*, i32** %2, align 8
  %105 = call i64 @SetupQuerySpaceRequiredOnDriveW(i32* %104, i32* null, i32* %3, i32* null, i32 0)
  store i64 %105, i64* %1, align 8
  %106 = load i64, i64* %1, align 8
  %107 = icmp ne i64 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = load i64, i64* %1, align 8
  %111 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i64 %110)
  %112 = load i32, i32* %3, align 4
  %113 = icmp eq i32 %112, -559038737
  %114 = zext i1 %113 to i32
  %115 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %116 = call i64 (...) @GetLastError()
  %117 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %123, label %119

119:                                              ; preds = %98
  %120 = call i64 (...) @GetLastError()
  %121 = load i64, i64* @ERROR_INVALID_DRIVE, align 8
  %122 = icmp eq i64 %120, %121
  br label %123

123:                                              ; preds = %119, %98
  %124 = phi i1 [ true, %98 ], [ %122, %119 ]
  %125 = zext i1 %124 to i32
  %126 = call i64 (...) @GetLastError()
  %127 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), i64 %126)
  %128 = call i32 @SetLastError(i32 -559038737)
  %129 = load i32*, i32** %2, align 8
  %130 = call i64 @SetupQuerySpaceRequiredOnDriveW(i32* %129, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @test_SetupQuerySpaceRequiredOnDriveW.emptyW, i64 0, i64 0), i32* null, i32* null, i32 0)
  store i64 %130, i64* %1, align 8
  %131 = load i64, i64* %1, align 8
  %132 = icmp ne i64 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = load i64, i64* %1, align 8
  %136 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i64 %135)
  %137 = call i64 (...) @GetLastError()
  %138 = load i64, i64* @ERROR_INVALID_DRIVE, align 8
  %139 = icmp eq i64 %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i64 (...) @GetLastError()
  %142 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), i64 %141)
  %143 = call i32 @SetLastError(i32 -559038737)
  store i32 -559038737, i32* %3, align 4
  %144 = load i32*, i32** %2, align 8
  %145 = call i64 @SetupQuerySpaceRequiredOnDriveW(i32* %144, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @test_SetupQuerySpaceRequiredOnDriveW.emptyW, i64 0, i64 0), i32* %3, i32* null, i32 0)
  store i64 %145, i64* %1, align 8
  %146 = load i64, i64* %1, align 8
  %147 = icmp ne i64 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = load i64, i64* %1, align 8
  %151 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i64 %150)
  %152 = load i32, i32* %3, align 4
  %153 = icmp eq i32 %152, -559038737
  %154 = zext i1 %153 to i32
  %155 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %156 = call i64 (...) @GetLastError()
  %157 = load i64, i64* @ERROR_INVALID_DRIVE, align 8
  %158 = icmp eq i64 %156, %157
  %159 = zext i1 %158 to i32
  %160 = call i64 (...) @GetLastError()
  %161 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), i64 %160)
  %162 = load i32*, i32** %2, align 8
  %163 = call i32 @SetupDestroyDiskSpaceList(i32* %162)
  %164 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  br label %165

165:                                              ; preds = %123, %12
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @SetupQuerySpaceRequiredOnDriveW(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @SetupCreateDiskSpaceListA(i32*, i32, i32) #1

declare dso_local i32 @SetupDestroyDiskSpaceList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

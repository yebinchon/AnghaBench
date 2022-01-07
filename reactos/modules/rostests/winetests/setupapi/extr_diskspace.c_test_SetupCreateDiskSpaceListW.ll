; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_diskspace.c_test_SetupCreateDiskSpaceListW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_diskspace.c_test_SetupCreateDiskSpaceListW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"SetupCreateDiskSpaceListW is not implemented\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Expected SetupCreateDiskSpaceListW to return a valid handle, got NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Expected SetupDestroyDiskSpaceList to succeed\0A\00", align 1
@SPDSL_IGNORE_DISK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"Expected SetupCreateDiskSpaceListW to return NULL, got %p\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [67 x i8] c"Expected GetLastError() to return ERROR_INVALID_PARAMETER, got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SetupCreateDiskSpaceListW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetupCreateDiskSpaceListW() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32* @SetupCreateDiskSpaceListW(i8* null, i32 0, i32 0)
  store i32* %2, i32** %1, align 8
  %3 = load i32*, i32** %1, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %0
  %6 = call i32 (...) @GetLastError()
  %7 = load i32, i32* @ERROR_CALL_NOT_IMPLEMENTED, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = call i32 @win_skip(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %120

11:                                               ; preds = %5, %0
  %12 = load i32*, i32** %1, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @SetupDestroyDiskSpaceList(i32* %16)
  %18 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i32, i32* @SPDSL_IGNORE_DISK, align 4
  %20 = call i32* @SetupCreateDiskSpaceListW(i8* null, i32 0, i32 %19)
  store i32* %20, i32** %1, align 8
  %21 = load i32*, i32** %1, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @SetupDestroyDiskSpaceList(i32* %25)
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %28 = call i32 @SetLastError(i32 -559038737)
  %29 = call i32* @SetupCreateDiskSpaceListW(i8* null, i32 0, i32 -1)
  store i32* %29, i32** %1, align 8
  %30 = load i32*, i32** %1, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %11
  %33 = load i32*, i32** %1, align 8
  %34 = icmp ne i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i64 @broken(i32 %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %32, %11
  %39 = phi i1 [ true, %11 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32* %41)
  %43 = load i32*, i32** %1, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = call i32 (...) @GetLastError()
  %47 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 (...) @GetLastError()
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  br label %56

52:                                               ; preds = %38
  %53 = load i32*, i32** %1, align 8
  %54 = call i32 @SetupDestroyDiskSpaceList(i32* %53)
  %55 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %52, %45
  %57 = call i32 @SetLastError(i32 -559038737)
  %58 = call i32* @SetupCreateDiskSpaceListW(i8* null, i32 -559038737, i32 0)
  store i32* %58, i32** %1, align 8
  %59 = load i32*, i32** %1, align 8
  %60 = icmp eq i32* %59, null
  %61 = zext i1 %60 to i32
  %62 = load i32*, i32** %1, align 8
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32* %62)
  %64 = call i32 (...) @GetLastError()
  %65 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %56
  %68 = call i32 (...) @GetLastError()
  %69 = icmp eq i32 %68, -559038737
  %70 = zext i1 %69 to i32
  %71 = call i64 @broken(i32 %70)
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %67, %56
  %74 = phi i1 [ true, %56 ], [ %72, %67 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 (...) @GetLastError()
  %77 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = call i32 @SetLastError(i32 -559038737)
  %79 = call i32* @SetupCreateDiskSpaceListW(i8* inttoptr (i64 3735928559 to i8*), i32 0, i32 0)
  store i32* %79, i32** %1, align 8
  %80 = load i32*, i32** %1, align 8
  %81 = icmp eq i32* %80, null
  %82 = zext i1 %81 to i32
  %83 = load i32*, i32** %1, align 8
  %84 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32* %83)
  %85 = call i32 (...) @GetLastError()
  %86 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %73
  %89 = call i32 (...) @GetLastError()
  %90 = icmp eq i32 %89, -559038737
  %91 = zext i1 %90 to i32
  %92 = call i64 @broken(i32 %91)
  %93 = icmp ne i64 %92, 0
  br label %94

94:                                               ; preds = %88, %73
  %95 = phi i1 [ true, %73 ], [ %93, %88 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 (...) @GetLastError()
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  %99 = call i32 @SetLastError(i32 -559038737)
  %100 = call i32* @SetupCreateDiskSpaceListW(i8* inttoptr (i64 3735928559 to i8*), i32 -559038737, i32 0)
  store i32* %100, i32** %1, align 8
  %101 = load i32*, i32** %1, align 8
  %102 = icmp eq i32* %101, null
  %103 = zext i1 %102 to i32
  %104 = load i32*, i32** %1, align 8
  %105 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32* %104)
  %106 = call i32 (...) @GetLastError()
  %107 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %115, label %109

109:                                              ; preds = %94
  %110 = call i32 (...) @GetLastError()
  %111 = icmp eq i32 %110, -559038737
  %112 = zext i1 %111 to i32
  %113 = call i64 @broken(i32 %112)
  %114 = icmp ne i64 %113, 0
  br label %115

115:                                              ; preds = %109, %94
  %116 = phi i1 [ true, %94 ], [ %114, %109 ]
  %117 = zext i1 %116 to i32
  %118 = call i32 (...) @GetLastError()
  %119 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %115, %9
  ret void
}

declare dso_local i32* @SetupCreateDiskSpaceListW(i8*, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SetupDestroyDiskSpaceList(i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

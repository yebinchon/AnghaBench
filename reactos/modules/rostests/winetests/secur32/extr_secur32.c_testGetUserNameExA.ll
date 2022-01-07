; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_secur32.c_testGetUserNameExA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_secur32.c_testGetUserNameExA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@formats = common dso_local global i64* null, align 8
@NameUnknown = common dso_local global i64 0, align 8
@ERROR_NO_SUCH_USER = common dso_local global i64 0, align 8
@ERROR_NONE_MAPPED = common dso_local global i64 0, align 8
@NameDnsDomain = common dso_local global i64 0, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"GetUserNameExW(%d) failed: %d\0A\00", align 1
@NameSamCompatible = common dso_local global i64 0, align 8
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"Expected fail with ERROR_MORE_DATA, got %d with %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Expected size to be set to required size\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Expected unchanged buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testGetUserNameExA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testGetUserNameExA() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %61, %0
  %6 = load i64, i64* %4, align 8
  %7 = load i64*, i64** @formats, align 8
  %8 = call i64 @ARRAY_SIZE(i64* %7)
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %64

10:                                               ; preds = %5
  store i32 256, i32* %2, align 4
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %12 = call i32 @ZeroMemory(i8* %11, i32 256)
  %13 = load i64*, i64** @formats, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %18 = call i64 @pGetUserNameExA(i64 %16, i8* %17, i32* %2)
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %52, label %21

21:                                               ; preds = %10
  %22 = load i64*, i64** @formats, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NameUnknown, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = call i64 (...) @GetLastError()
  %30 = load i64, i64* @ERROR_NO_SUCH_USER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %52, label %32

32:                                               ; preds = %28, %21
  %33 = call i64 (...) @GetLastError()
  %34 = load i64, i64* @ERROR_NONE_MAPPED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %52, label %36

36:                                               ; preds = %32
  %37 = load i64*, i64** @formats, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NameDnsDomain, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = call i64 (...) @GetLastError()
  %45 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %46 = icmp eq i64 %44, %45
  br label %47

47:                                               ; preds = %43, %36
  %48 = phi i1 [ false, %36 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  %50 = call i64 @broken(i32 %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %47, %32, %28, %10
  %53 = phi i1 [ true, %32 ], [ true, %28 ], [ true, %10 ], [ %51, %47 ]
  %54 = zext i1 %53 to i32
  %55 = load i64*, i64** @formats, align 8
  %56 = load i64, i64* %4, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = call i64 (...) @GetLastError()
  %60 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %58, i64 %59)
  br label %61

61:                                               ; preds = %52
  %62 = load i64, i64* %4, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %4, align 8
  br label %5

64:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  %65 = load i64, i64* @NameSamCompatible, align 8
  %66 = call i64 @pGetUserNameExA(i64 %65, i8* null, i32* %2)
  store i64 %66, i64* %3, align 8
  %67 = load i64, i64* %3, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = call i64 (...) @GetLastError()
  %71 = load i64, i64* @ERROR_MORE_DATA, align 8
  %72 = icmp eq i64 %70, %71
  br label %73

73:                                               ; preds = %69, %64
  %74 = phi i1 [ false, %64 ], [ %72, %69 ]
  %75 = zext i1 %74 to i32
  %76 = load i64, i64* %3, align 8
  %77 = call i64 (...) @GetLastError()
  %78 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %76, i64 %77)
  %79 = load i32, i32* %2, align 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  %83 = load i64, i64* @NameSamCompatible, align 8
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %85 = call i64 @pGetUserNameExA(i64 %83, i8* %84, i32* %2)
  store i64 %85, i64* %3, align 8
  %86 = load i64, i64* %3, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %73
  %89 = call i64 (...) @GetLastError()
  %90 = load i64, i64* @ERROR_MORE_DATA, align 8
  %91 = icmp eq i64 %89, %90
  br label %92

92:                                               ; preds = %88, %73
  %93 = phi i1 [ false, %73 ], [ %91, %88 ]
  %94 = zext i1 %93 to i32
  %95 = load i64, i64* %3, align 8
  %96 = call i64 (...) @GetLastError()
  %97 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %95, i64 %96)
  %98 = load i32, i32* %2, align 4
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  %102 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  store i8 -1, i8* %102, align 16
  %103 = load i64, i64* @NameSamCompatible, align 8
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %105 = call i64 @pGetUserNameExA(i64 %103, i8* %104, i32* %2)
  store i64 %105, i64* %3, align 8
  %106 = load i64, i64* %3, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %92
  %109 = call i64 (...) @GetLastError()
  %110 = load i64, i64* @ERROR_MORE_DATA, align 8
  %111 = icmp eq i64 %109, %110
  br label %112

112:                                              ; preds = %108, %92
  %113 = phi i1 [ false, %92 ], [ %111, %108 ]
  %114 = zext i1 %113 to i32
  %115 = load i64, i64* %3, align 8
  %116 = call i64 (...) @GetLastError()
  %117 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %115, i64 %116)
  %118 = load i32, i32* %2, align 4
  %119 = icmp slt i32 1, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %122 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %123 = load i8, i8* %122, align 16
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, -1
  %126 = zext i1 %125 to i32
  %127 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @ZeroMemory(i8*, i32) #1

declare dso_local i64 @pGetUserNameExA(i64, i8*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

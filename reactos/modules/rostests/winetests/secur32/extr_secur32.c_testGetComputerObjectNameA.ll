; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_secur32.c_testGetComputerObjectNameA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_secur32.c_testGetComputerObjectNameA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@formats = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"GetComputerObjectName(%u) should fail\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"%u: got %u\0A\00", align 1
@ERROR_NONE_MAPPED = common dso_local global i64 0, align 8
@ERROR_NO_SUCH_USER = common dso_local global i64 0, align 8
@ERROR_CANT_ACCESS_DOMAIN_INFO = common dso_local global i64 0, align 8
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"GetComputerObjectName(%u) error %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"GetComputerObjectName(%u) returned %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testGetComputerObjectNameA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testGetComputerObjectNameA() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %118, %0
  %6 = load i64, i64* %4, align 8
  %7 = load i32*, i32** @formats, align 8
  %8 = call i64 @ARRAY_SIZE(i32* %7)
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %121

10:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  %11 = call i32 @SetLastError(i32 -559038737)
  %12 = load i32*, i32** @formats, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pGetComputerObjectNameA(i32 %15, i8* null, i32* %2)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load i32*, i32** @formats, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, i8*, i32, ...) @ok(i32 %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32*, i32** @formats, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %41 [
    i32 128, label %30
  ]

30:                                               ; preds = %10
  %31 = call i64 (...) @GetLastError()
  %32 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32*, i32** @formats, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i64 (...) @GetLastError()
  %40 = call i32 (i32, i8*, i32, ...) @ok(i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %38, i64 %39)
  br label %66

41:                                               ; preds = %10
  %42 = call i64 (...) @GetLastError()
  %43 = load i64, i64* @ERROR_NONE_MAPPED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %57, label %45

45:                                               ; preds = %41
  %46 = call i64 (...) @GetLastError()
  %47 = load i64, i64* @ERROR_NO_SUCH_USER, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = call i64 (...) @GetLastError()
  %51 = load i64, i64* @ERROR_CANT_ACCESS_DOMAIN_INFO, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = call i64 (...) @GetLastError()
  %55 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %56 = icmp eq i64 %54, %55
  br label %57

57:                                               ; preds = %53, %49, %45, %41
  %58 = phi i1 [ true, %49 ], [ true, %45 ], [ true, %41 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  %60 = load i32*, i32** @formats, align 8
  %61 = load i64, i64* %4, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i64 (...) @GetLastError()
  %65 = call i32 (i32, i8*, i32, ...) @ok(i32 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %63, i64 %64)
  br label %66

66:                                               ; preds = %57, %30
  %67 = call i64 (...) @GetLastError()
  %68 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %118

71:                                               ; preds = %66
  store i32 256, i32* %2, align 4
  %72 = call i32 @SetLastError(i32 -559038737)
  %73 = load i32*, i32** @formats, align 8
  %74 = load i64, i64* %4, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %78 = call i32 @pGetComputerObjectNameA(i32 %76, i8* %77, i32* %2)
  store i32 %78, i32* %3, align 4
  %79 = load i32*, i32** @formats, align 8
  %80 = load i64, i64* %4, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %103 [
    i32 128, label %83
  ]

83:                                               ; preds = %71
  %84 = load i32, i32* %3, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = load i32*, i32** @formats, align 8
  %89 = load i64, i64* %4, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32, i8*, i32, ...) @ok(i32 %87, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = call i64 (...) @GetLastError()
  %94 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i32*, i32** @formats, align 8
  %98 = load i64, i64* %4, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i64 (...) @GetLastError()
  %102 = call i32 (i32, i8*, i32, ...) @ok(i32 %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %100, i64 %101)
  br label %117

103:                                              ; preds = %71
  %104 = load i32, i32* %3, align 4
  %105 = load i32*, i32** @formats, align 8
  %106 = load i64, i64* %4, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i64 (...) @GetLastError()
  %110 = call i32 (i32, i8*, i32, ...) @ok(i32 %104, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %108, i64 %109)
  %111 = load i32*, i32** @formats, align 8
  %112 = load i64, i64* %4, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %116 = call i32 @trace(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %114, i8* %115)
  br label %117

117:                                              ; preds = %103, %83
  br label %118

118:                                              ; preds = %117, %70
  %119 = load i64, i64* %4, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %4, align 8
  br label %5

121:                                              ; preds = %5
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @pGetComputerObjectNameA(i32, i8*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @trace(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_secur32.c_testGetComputerObjectNameW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_secur32.c_testGetComputerObjectNameW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@formats = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"GetComputerObjectName(%u) should fail\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"%u: got %u\0A\00", align 1
@ERROR_NONE_MAPPED = common dso_local global i64 0, align 8
@ERROR_NO_SUCH_USER = common dso_local global i64 0, align 8
@ERROR_CANT_ACCESS_DOMAIN_INFO = common dso_local global i64 0, align 8
@WSAHOST_NOT_FOUND = common dso_local global i64 0, align 8
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"GetComputerObjectName(%u) error %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"GetComputerObjectName(%u) returned %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testGetComputerObjectNameW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testGetComputerObjectNameW() #0 {
  %1 = alloca [256 x i32], align 16
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %130, %0
  %6 = load i64, i64* %4, align 8
  %7 = load i32*, i32** @formats, align 8
  %8 = call i64 @ARRAY_SIZE(i32* %7)
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %133

10:                                               ; preds = %5
  store i64 0, i64* %2, align 8
  %11 = call i32 @SetLastError(i32 -559038737)
  %12 = load i32*, i32** @formats, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pGetComputerObjectNameW(i32 %15, i32* null, i64* %2)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @broken(i32 %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %19, %10
  %24 = phi i1 [ true, %10 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = load i32*, i32** @formats, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, i32, ...) @ok(i32 %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** @formats, align 8
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %46 [
    i32 128, label %35
  ]

35:                                               ; preds = %23
  %36 = call i64 (...) @GetLastError()
  %37 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i32*, i32** @formats, align 8
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i64 (...) @GetLastError()
  %45 = call i32 (i32, i8*, i32, ...) @ok(i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %43, i64 %44)
  br label %75

46:                                               ; preds = %23
  %47 = call i64 (...) @GetLastError()
  %48 = load i64, i64* @ERROR_NONE_MAPPED, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %66, label %50

50:                                               ; preds = %46
  %51 = call i64 (...) @GetLastError()
  %52 = load i64, i64* @ERROR_NO_SUCH_USER, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %66, label %54

54:                                               ; preds = %50
  %55 = call i64 (...) @GetLastError()
  %56 = load i64, i64* @ERROR_CANT_ACCESS_DOMAIN_INFO, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = call i64 (...) @GetLastError()
  %60 = load i64, i64* @WSAHOST_NOT_FOUND, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = call i64 (...) @GetLastError()
  %64 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %65 = icmp eq i64 %63, %64
  br label %66

66:                                               ; preds = %62, %58, %54, %50, %46
  %67 = phi i1 [ true, %58 ], [ true, %54 ], [ true, %50 ], [ true, %46 ], [ %65, %62 ]
  %68 = zext i1 %67 to i32
  %69 = load i32*, i32** @formats, align 8
  %70 = load i64, i64* %4, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i64 (...) @GetLastError()
  %74 = call i32 (i32, i8*, i32, ...) @ok(i32 %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %72, i64 %73)
  br label %75

75:                                               ; preds = %66, %35
  %76 = call i64 (...) @GetLastError()
  %77 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %130

80:                                               ; preds = %75
  %81 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 0
  %82 = call i64 @ARRAY_SIZE(i32* %81)
  store i64 %82, i64* %2, align 8
  %83 = call i32 @SetLastError(i32 -559038737)
  %84 = load i32*, i32** @formats, align 8
  %85 = load i64, i64* %4, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 0
  %89 = call i32 @pGetComputerObjectNameW(i32 %87, i32* %88, i64* %2)
  store i32 %89, i32* %3, align 4
  %90 = load i32*, i32** @formats, align 8
  %91 = load i64, i64* %4, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %114 [
    i32 128, label %94
  ]

94:                                               ; preds = %80
  %95 = load i32, i32* %3, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = load i32*, i32** @formats, align 8
  %100 = load i64, i64* %4, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i8*, i32, ...) @ok(i32 %98, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = call i64 (...) @GetLastError()
  %105 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load i32*, i32** @formats, align 8
  %109 = load i64, i64* %4, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i64 (...) @GetLastError()
  %113 = call i32 (i32, i8*, i32, ...) @ok(i32 %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %111, i64 %112)
  br label %129

114:                                              ; preds = %80
  %115 = load i32, i32* %3, align 4
  %116 = load i32*, i32** @formats, align 8
  %117 = load i64, i64* %4, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i64 (...) @GetLastError()
  %121 = call i32 (i32, i8*, i32, ...) @ok(i32 %115, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %119, i64 %120)
  %122 = load i32*, i32** @formats, align 8
  %123 = load i64, i64* %4, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 0
  %127 = call i32 @wine_dbgstr_w(i32* %126)
  %128 = call i32 @trace(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %125, i32 %127)
  br label %129

129:                                              ; preds = %114, %94
  br label %130

130:                                              ; preds = %129, %79
  %131 = load i64, i64* %4, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %4, align 8
  br label %5

133:                                              ; preds = %5
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @pGetComputerObjectNameW(i32, i32*, i64*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @trace(i8*, i32, i32) #1

declare dso_local i32 @wine_dbgstr_w(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

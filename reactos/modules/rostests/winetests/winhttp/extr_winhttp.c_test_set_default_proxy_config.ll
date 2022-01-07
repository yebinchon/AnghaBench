; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winhttp/extr_winhttp.c_test_set_default_proxy_config.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winhttp/extr_winhttp.c_test_set_default_proxy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32* }

@test_set_default_proxy_config.wideString = internal global [3 x i32] [i32 8815, i32 22363, i32 0], align 4
@test_set_default_proxy_config.normalString = internal global [4 x i32] [i32 102, i32 111, i32 111, i32 0], align 16
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"expected ERROR_INVALID_PARAMETER, got %d\0A\00", align 1
@WINHTTP_ACCESS_TYPE_NAMED_PROXY = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"couldn't set default proxy configuration: access denied\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"WinHttpSetDefaultProxyConfiguration failed: %u\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_set_default_proxy_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_set_default_proxy_config() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i32, align 4
  store i32* null, i32** %3, align 8
  %6 = call i64 @get_default_proxy_reg_value(i32* null, i64 0, i64* %1)
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %0
  %10 = call i32 (...) @GetProcessHeap()
  %11 = load i64, i64* %2, align 8
  %12 = call i32* @HeapAlloc(i32 %10, i32 0, i64 %11)
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i64, i64* %2, align 8
  %15 = call i64 @get_default_proxy_reg_value(i32* %13, i64 %14, i64* %1)
  store i64 %15, i64* %2, align 8
  br label %16

16:                                               ; preds = %9, %0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 -559038737, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store i32* null, i32** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i32* null, i32** %19, align 8
  %20 = call i32 @SetLastError(i32 -559038737)
  %21 = call i32 @WinHttpSetDefaultProxyConfiguration(%struct.TYPE_3__* %4)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %16
  %25 = call i32 (...) @GetLastError()
  %26 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %27 = icmp eq i32 %25, %26
  br label %28

28:                                               ; preds = %24, %16
  %29 = phi i1 [ false, %16 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 (...) @GetLastError()
  %32 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @WINHTTP_ACCESS_TYPE_NAMED_PROXY, align 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store i32* null, i32** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = call i32 @SetLastError(i32 -559038737)
  %38 = call i32 @WinHttpSetDefaultProxyConfiguration(%struct.TYPE_3__* %4)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %28
  %42 = call i32 (...) @GetLastError()
  %43 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %44 = icmp eq i32 %42, %43
  br label %45

45:                                               ; preds = %41, %28
  %46 = phi i1 [ false, %28 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 (...) @GetLastError()
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @test_set_default_proxy_config.normalString, i64 0, i64 0), i32** %50, align 8
  %51 = call i32 @SetLastError(i32 -559038737)
  %52 = call i32 @WinHttpSetDefaultProxyConfiguration(%struct.TYPE_3__* %4)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %45
  %56 = call i32 (...) @GetLastError()
  %57 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %58 = icmp eq i32 %56, %57
  br label %59

59:                                               ; preds = %55, %45
  %60 = phi i1 [ false, %45 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 (...) @GetLastError()
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @test_set_default_proxy_config.wideString, i64 0, i64 0), i32** %64, align 8
  %65 = call i32 @SetLastError(i32 -559038737)
  %66 = call i32 @WinHttpSetDefaultProxyConfiguration(%struct.TYPE_3__* %4)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %59
  %70 = call i32 (...) @GetLastError()
  %71 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = call i32 @skip(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %91

75:                                               ; preds = %69, %59
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = call i32 (...) @GetLastError()
  %80 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %78, %75
  %83 = load i32, i32* %5, align 4
  %84 = call i64 @broken(i32 %83)
  %85 = icmp ne i64 %84, 0
  br label %86

86:                                               ; preds = %82, %78
  %87 = phi i1 [ true, %78 ], [ %85, %82 ]
  %88 = zext i1 %87 to i32
  %89 = call i32 (...) @GetLastError()
  %90 = call i32 @ok(i32 %88, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %86, %73
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @test_set_default_proxy_config.normalString, i64 0, i64 0), i32** %92, align 8
  %93 = call i32 @SetLastError(i32 -559038737)
  %94 = call i32 @WinHttpSetDefaultProxyConfiguration(%struct.TYPE_3__* %4)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %91
  %98 = call i32 (...) @GetLastError()
  %99 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = call i32 @skip(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %121

103:                                              ; preds = %97, %91
  %104 = load i32, i32* %5, align 4
  %105 = call i32 (...) @GetLastError()
  %106 = call i32 @ok(i32 %104, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = call i32 (...) @GetLastError()
  %108 = load i32, i32* @ERROR_SUCCESS, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %116, label %110

110:                                              ; preds = %103
  %111 = call i32 (...) @GetLastError()
  %112 = icmp eq i32 %111, -559038737
  %113 = zext i1 %112 to i32
  %114 = call i64 @broken(i32 %113)
  %115 = icmp ne i64 %114, 0
  br label %116

116:                                              ; preds = %110, %103
  %117 = phi i1 [ true, %103 ], [ %115, %110 ]
  %118 = zext i1 %117 to i32
  %119 = call i32 (...) @GetLastError()
  %120 = call i32 @ok(i32 %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %116, %101
  %122 = load i32*, i32** %3, align 8
  %123 = load i64, i64* %2, align 8
  %124 = load i64, i64* %1, align 8
  %125 = call i32 @set_default_proxy_reg_value(i32* %122, i64 %123, i64 %124)
  ret void
}

declare dso_local i64 @get_default_proxy_reg_value(i32*, i64, i64*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @WinHttpSetDefaultProxyConfiguration(%struct.TYPE_3__*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @set_default_proxy_reg_value(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

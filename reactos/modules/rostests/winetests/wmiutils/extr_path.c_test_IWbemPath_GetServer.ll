; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wmiutils/extr_path.c_test_IWbemPath_GetServer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wmiutils/extr_path.c_test_IWbemPath_GetServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_IWbemPath_GetServer.dotW = internal constant [2 x i8] c".\00", align 1
@WBEM_E_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@WBEM_E_NOT_AVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"unexpected length %u\0A\00", align 1
@WBEMPATH_CREATE_ACCEPT_ALL = common dso_local global i32 0, align 4
@path17 = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"unexpected buffer contents %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IWbemPath_GetServer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IWbemPath_GetServer() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca [32 x i8], align 16
  %4 = alloca i32, align 4
  %5 = call i32* (...) @create_path()
  store i32* %5, i32** %1, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %107

8:                                                ; preds = %0
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @IWbemPath_GetServer(i32* %9, i32* null, i8* null)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @WBEM_E_INVALID_PARAMETER, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 0, i32* %4, align 4
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @IWbemPath_GetServer(i32* %17, i32* %4, i8* null)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @WBEM_E_NOT_AVAILABLE, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 32, i32* %4, align 4
  %25 = load i32*, i32** %1, align 8
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %27 = call i32 @IWbemPath_GetServer(i32* %25, i32* %4, i8* %26)
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @WBEM_E_NOT_AVAILABLE, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 32, i32* %4, align 4
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @IWbemPath_GetServer(i32* %34, i32* %4, i8* null)
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @WBEM_E_INVALID_PARAMETER, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp eq i64 %43, 32
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32*, i32** %1, align 8
  %49 = load i32, i32* @WBEMPATH_CREATE_ACCEPT_ALL, align 4
  %50 = load i32, i32* @path17, align 4
  %51 = call i32 @IWbemPath_SetText(i32* %48, i32 %49, i32 %50)
  store i32 %51, i32* %2, align 4
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @S_OK, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %56)
  store i32 0, i32* %4, align 4
  %58 = load i32*, i32** %1, align 8
  %59 = call i32 @IWbemPath_GetServer(i32* %58, i32* %4, i8* null)
  store i32 %59, i32* %2, align 4
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @S_OK, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %64)
  store i32 32, i32* %4, align 4
  %66 = load i32*, i32** %1, align 8
  %67 = call i32 @IWbemPath_GetServer(i32* %66, i32* %4, i8* null)
  store i32 %67, i32* %2, align 4
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* @WBEM_E_INVALID_PARAMETER, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %2, align 4
  %73 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp eq i64 %75, 32
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %80, align 16
  store i32 32, i32* %4, align 4
  %81 = load i32*, i32** %1, align 8
  %82 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %83 = call i32 @IWbemPath_GetServer(i32* %81, i32* %4, i8* %82)
  store i32 %83, i32* %2, align 4
  %84 = load i32, i32* %2, align 4
  %85 = load i32, i32* @S_OK, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %2, align 4
  %89 = call i32 @ok(i32 %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %91 = call i32 @lstrcmpW(i8* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_IWbemPath_GetServer.dotW, i64 0, i64 0))
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %96 = call i32 @wine_dbgstr_w(i8* %95)
  %97 = call i32 @ok(i32 %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @lstrlenW(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_IWbemPath_GetServer.dotW, i64 0, i64 0))
  %100 = add nsw i32 %99, 1
  %101 = icmp eq i32 %98, %100
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @ok(i32 %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load i32*, i32** %1, align 8
  %106 = call i32 @IWbemPath_Release(i32* %105)
  br label %107

107:                                              ; preds = %8, %7
  ret void
}

declare dso_local i32* @create_path(...) #1

declare dso_local i32 @IWbemPath_GetServer(i32*, i32*, i8*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @IWbemPath_SetText(i32*, i32, i32) #1

declare dso_local i32 @lstrcmpW(i8*, i8*) #1

declare dso_local i32 @wine_dbgstr_w(i8*) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i32 @IWbemPath_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wmiutils/extr_path.c_test_IWbemPath_SetServer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wmiutils/extr_path.c_test_IWbemPath_SetServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_IWbemPath_SetServer.serverW = internal constant [7 x i8] c"server\00", align 1
@test_IWbemPath_SetServer.emptyW = internal constant [1 x i8] zeroinitializer, align 1
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@WBEM_E_NOT_AVAILABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"unexpected buffer contents %s\0A\00", align 1
@WBEMPATH_INFO_HAS_MACHINE_NAME = common dso_local global i32 0, align 4
@WBEMPATH_INFO_V1_COMPLIANT = common dso_local global i32 0, align 4
@WBEMPATH_INFO_V2_COMPLIANT = common dso_local global i32 0, align 4
@WBEMPATH_INFO_CIM_COMPLIANT = common dso_local global i32 0, align 4
@WBEMPATH_INFO_SERVER_NAMESPACE_ONLY = common dso_local global i32 0, align 4
@WBEMPATH_INFO_PATH_HAD_SERVER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@WBEMPATH_INFO_ANON_LOCAL_MACHINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IWbemPath_SetServer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IWbemPath_SetServer() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [16 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = call i32* (...) @create_path()
  store i32* %6, i32** %1, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %122

9:                                                ; preds = %0
  %10 = load i32*, i32** %1, align 8
  %11 = call i64 @IWbemPath_SetServer(i32* %10, i8* null)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @S_OK, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %16)
  store i32 16, i32* %3, align 4
  %18 = load i32*, i32** %1, align 8
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %20 = call i64 @IWbemPath_GetServer(i32* %18, i32* %3, i8* %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @WBEM_E_NOT_AVAILABLE, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i64 @IWbemPath_SetServer(i32* %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_IWbemPath_SetServer.emptyW, i64 0, i64 0))
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = call i64 @IWbemPath_SetServer(i32* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test_IWbemPath_SetServer.serverW, i64 0, i64 0))
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @S_OK, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  store i8 0, i8* %43, align 16
  store i32 16, i32* %3, align 4
  %44 = load i32*, i32** %1, align 8
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %46 = call i64 @IWbemPath_GetServer(i32* %44, i32* %3, i8* %45)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @S_OK, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %51)
  %53 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %54 = call i32 @lstrcmpW(i8* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test_IWbemPath_SetServer.serverW, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %59 = call i64 @wine_dbgstr_w(i8* %58)
  %60 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  store i32 0, i32* %4, align 4
  %61 = load i32*, i32** %1, align 8
  %62 = call i64 @IWbemPath_GetInfo(i32* %61, i32 0, i32* %4)
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @S_OK, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %67)
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @WBEMPATH_INFO_HAS_MACHINE_NAME, align 4
  %71 = load i32, i32* @WBEMPATH_INFO_V1_COMPLIANT, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @WBEMPATH_INFO_V2_COMPLIANT, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @WBEMPATH_INFO_CIM_COMPLIANT, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @WBEMPATH_INFO_SERVER_NAMESPACE_ONLY, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @WBEMPATH_INFO_PATH_HAD_SERVER, align 4
  %80 = or i32 %78, %79
  %81 = icmp eq i32 %69, %80
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %4, align 4
  %84 = call i64 @wine_dbgstr_longlong(i32 %83)
  %85 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %84)
  %86 = load i32*, i32** %1, align 8
  %87 = call i64 @IWbemPath_SetServer(i32* %86, i8* null)
  store i64 %87, i64* %5, align 8
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* @S_OK, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %92)
  store i32 16, i32* %3, align 4
  %94 = load i32*, i32** %1, align 8
  %95 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %96 = call i64 @IWbemPath_GetServer(i32* %94, i32* %3, i8* %95)
  store i64 %96, i64* %5, align 8
  %97 = load i64, i64* %5, align 8
  %98 = load i64, i64* @WBEM_E_NOT_AVAILABLE, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %101)
  store i32 0, i32* %4, align 4
  %103 = load i32*, i32** %1, align 8
  %104 = call i64 @IWbemPath_GetInfo(i32* %103, i32 0, i32* %4)
  store i64 %104, i64* %5, align 8
  %105 = load i64, i64* %5, align 8
  %106 = load i64, i64* @S_OK, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i64, i64* %5, align 8
  %110 = call i32 @ok(i32 %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %109)
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @WBEMPATH_INFO_ANON_LOCAL_MACHINE, align 4
  %113 = load i32, i32* @WBEMPATH_INFO_SERVER_NAMESPACE_ONLY, align 4
  %114 = or i32 %112, %113
  %115 = icmp eq i32 %111, %114
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* %4, align 4
  %118 = call i64 @wine_dbgstr_longlong(i32 %117)
  %119 = call i32 @ok(i32 %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %118)
  %120 = load i32*, i32** %1, align 8
  %121 = call i32 @IWbemPath_Release(i32* %120)
  br label %122

122:                                              ; preds = %9, %8
  ret void
}

declare dso_local i32* @create_path(...) #1

declare dso_local i64 @IWbemPath_SetServer(i32*, i8*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IWbemPath_GetServer(i32*, i32*, i8*) #1

declare dso_local i32 @lstrcmpW(i8*, i8*) #1

declare dso_local i64 @wine_dbgstr_w(i8*) #1

declare dso_local i64 @IWbemPath_GetInfo(i32*, i32, i32*) #1

declare dso_local i64 @wine_dbgstr_longlong(i32) #1

declare dso_local i32 @IWbemPath_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

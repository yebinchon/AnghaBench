; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wmiutils/extr_path.c_test_IWbemPath_SetClassName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wmiutils/extr_path.c_test_IWbemPath_SetClassName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_IWbemPath_SetClassName.classW = internal constant [6 x i8] c"class\00", align 1
@test_IWbemPath_SetClassName.emptyW = internal constant [1 x i8] zeroinitializer, align 1
@WBEM_E_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"unexpected buffer contents %s\0A\00", align 1
@WBEMPATH_INFO_ANON_LOCAL_MACHINE = common dso_local global i32 0, align 4
@WBEMPATH_INFO_IS_CLASS_REF = common dso_local global i32 0, align 4
@WBEMPATH_INFO_HAS_SUBSCOPES = common dso_local global i32 0, align 4
@WBEMPATH_INFO_V2_COMPLIANT = common dso_local global i32 0, align 4
@WBEMPATH_INFO_CIM_COMPLIANT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IWbemPath_SetClassName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IWbemPath_SetClassName() #0 {
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
  br label %77

9:                                                ; preds = %0
  %10 = load i32*, i32** %1, align 8
  %11 = call i64 @IWbemPath_SetClassName(i32* %10, i8* null)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @WBEM_E_INVALID_PARAMETER, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i64 @IWbemPath_SetClassName(i32* %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_IWbemPath_SetClassName.emptyW, i64 0, i64 0))
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @S_OK, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i32*, i32** %1, align 8
  %27 = call i64 @IWbemPath_SetClassName(i32* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_IWbemPath_SetClassName.classW, i64 0, i64 0))
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  store i8 0, i8* %34, align 16
  store i32 16, i32* %3, align 4
  %35 = load i32*, i32** %1, align 8
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %37 = call i64 @IWbemPath_GetClassName(i32* %35, i32* %3, i8* %36)
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @S_OK, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %45 = call i32 @lstrcmpW(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_IWbemPath_SetClassName.classW, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %50 = call i64 @wine_dbgstr_w(i8* %49)
  %51 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  store i32 0, i32* %4, align 4
  %52 = load i32*, i32** %1, align 8
  %53 = call i64 @IWbemPath_GetInfo(i32* %52, i32 0, i32* %4)
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @S_OK, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %58)
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @WBEMPATH_INFO_ANON_LOCAL_MACHINE, align 4
  %62 = load i32, i32* @WBEMPATH_INFO_IS_CLASS_REF, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @WBEMPATH_INFO_HAS_SUBSCOPES, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @WBEMPATH_INFO_V2_COMPLIANT, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @WBEMPATH_INFO_CIM_COMPLIANT, align 4
  %69 = or i32 %67, %68
  %70 = icmp eq i32 %60, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %4, align 4
  %73 = call i64 @wine_dbgstr_longlong(i32 %72)
  %74 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %73)
  %75 = load i32*, i32** %1, align 8
  %76 = call i32 @IWbemPath_Release(i32* %75)
  br label %77

77:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32* @create_path(...) #1

declare dso_local i64 @IWbemPath_SetClassName(i32*, i8*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IWbemPath_GetClassName(i32*, i32*, i8*) #1

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

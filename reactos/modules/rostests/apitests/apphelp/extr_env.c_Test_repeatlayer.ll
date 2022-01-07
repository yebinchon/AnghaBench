; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_env.c_Test_repeatlayer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_env.c_Test_repeatlayer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@Test_repeatlayer.layers = internal global [8 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"256Color\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"__COMPAT_LAYER\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"256Color 256Color 256Color 256Color 256Color 256Color 256Color 256Color\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Expected AppCompatFlags to be 0, was: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Expected AppCompatFlagsUser to be 0, was: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Expected AppCompatInfo to be 0, was: %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Expected pShimData to be valid, was NULL\0A\00", align 1
@g_ShimDataSize = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [41 x i8] c"Expected ShimDataSize to be %u, was: %u\0A\00", align 1
@g_WinVersion = common dso_local global i64 0, align 8
@WINVER_VISTA = common dso_local global i64 0, align 8
@SDB_MAX_LAYERS = common dso_local global i32 0, align 4
@WINVER_WIN10 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"Unable to get process info!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Test_repeatlayer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Test_repeatlayer(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %6 = call i32 @SetEnvironmentVariableA(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32, i32* @TRUE, align 4
  %8 = call i32 @create_proc(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @get_shiminfo(i32 %9, %struct.TYPE_7__* %4)
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @TerminateProcess(i32 %11, i32 0)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @CloseHandle(i32 %13)
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %89

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @wine_dbgstr_longlong(i64 %25)
  %27 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @wine_dbgstr_longlong(i64 %35)
  %37 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i64 %43)
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @g_ShimDataSize, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* @g_ShimDataSize, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i64 %55, i64 %57)
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %88

62:                                               ; preds = %17
  %63 = load i64, i64* @g_WinVersion, align 8
  %64 = load i64, i64* @WINVER_VISTA, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* @SDB_MAX_LAYERS, align 4
  %70 = call i32 @Validate_ShimData_Win2k3(i32* %68, i32 %69, i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @Test_repeatlayer.layers, i64 0, i64 0))
  br label %87

71:                                               ; preds = %62
  %72 = load i64, i64* @g_WinVersion, align 8
  %73 = load i64, i64* @WINVER_WIN10, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32*, i32** %2, align 8
  %79 = load i32, i32* @SDB_MAX_LAYERS, align 4
  %80 = call i32 @Validate_ShimData_Win7(i32* %77, i32* %78, i32 %79, i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @Test_repeatlayer.layers, i64 0, i64 0))
  br label %86

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32*, i32** %2, align 8
  %85 = call i32 @Validate_ShimData_Win10(i32* %83, i32* %84, i32 1, i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @Test_repeatlayer.layers, i64 0, i64 0))
  br label %86

86:                                               ; preds = %81, %75
  br label %87

87:                                               ; preds = %86, %66
  br label %88

88:                                               ; preds = %87, %17
  br label %91

89:                                               ; preds = %1
  %90 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %88
  ret void
}

declare dso_local i32 @SetEnvironmentVariableA(i8*, i8*) #1

declare dso_local i32 @create_proc(i32) #1

declare dso_local i64 @get_shiminfo(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @TerminateProcess(i32, i32) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @wine_dbgstr_longlong(i64) #1

declare dso_local i32 @Validate_ShimData_Win2k3(i32*, i32, i8**) #1

declare dso_local i32 @Validate_ShimData_Win7(i32*, i32*, i32, i8**) #1

declare dso_local i32 @Validate_ShimData_Win10(i32*, i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

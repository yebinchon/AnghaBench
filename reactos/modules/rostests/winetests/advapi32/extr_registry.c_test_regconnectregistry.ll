; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_regconnectregistry.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_regconnectregistry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_COMPUTERNAME_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"GetComputerName failed err = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@ERROR_DLL_INIT_FAILED = common dso_local global i64 0, align 8
@ERROR_BAD_NETPATH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"RegConnectRegistryA failed err = %d\0A\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"OpenSCManagerA is not implemented\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"OpenSCManagerA failed err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_regconnectregistry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_regconnectregistry() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = load i32, i32* @MAX_COMPUTERNAME_LENGTH, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %1, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %2, align 8
  %15 = load i32, i32* @MAX_COMPUTERNAME_LENGTH, align 4
  %16 = add nsw i32 %15, 3
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %3, align 8
  %19 = mul nuw i64 4, %12
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %4, align 4
  %21 = call i32 @SetLastError(i32 -559038737)
  %22 = call i32 @GetComputerNameA(i32* %14, i32* %4)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i64 (...) @GetLastError()
  %25 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %0
  store i32 1, i32* %9, align 4
  br label %107

29:                                               ; preds = %0
  %30 = call i32 @lstrcpyA(i32* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %31 = getelementptr inbounds i32, i32* %18, i64 2
  %32 = load i32, i32* @MAX_COMPUTERNAME_LENGTH, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i32 @lstrcpynA(i32* %31, i32* %14, i32 %33)
  %35 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %36 = call i64 @RegConnectRegistryA(i32* %14, i32 %35, i32* %7)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %29
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @ERROR_DLL_INIT_FAILED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @ERROR_BAD_NETPATH, align 8
  %46 = icmp eq i64 %44, %45
  br label %47

47:                                               ; preds = %43, %39, %29
  %48 = phi i1 [ true, %39 ], [ true, %29 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  %52 = load i64, i64* %6, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @RegCloseKey(i32 %55)
  br label %57

57:                                               ; preds = %54, %47
  %58 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %59 = call i64 @RegConnectRegistryA(i32* %18, i32 %58, i32* %7)
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @ERROR_DLL_INIT_FAILED, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* @ERROR_BAD_NETPATH, align 8
  %69 = icmp eq i64 %67, %68
  br label %70

70:                                               ; preds = %66, %62, %57
  %71 = phi i1 [ true, %62 ], [ true, %57 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %73)
  %75 = load i64, i64* %6, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @RegCloseKey(i32 %78)
  br label %80

80:                                               ; preds = %77, %70
  %81 = call i32 @SetLastError(i32 -559038737)
  %82 = load i32, i32* @GENERIC_READ, align 4
  %83 = call i32* @OpenSCManagerA(i32* %14, i32* null, i32 %82)
  store i32* %83, i32** %8, align 8
  %84 = call i64 (...) @GetLastError()
  %85 = load i64, i64* @ERROR_CALL_NOT_IMPLEMENTED, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = call i32 @win_skip(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %107

89:                                               ; preds = %80
  %90 = load i32*, i32** %8, align 8
  %91 = icmp ne i32* %90, null
  %92 = zext i1 %91 to i32
  %93 = call i64 (...) @GetLastError()
  %94 = call i32 @ok(i32 %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %93)
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @CloseServiceHandle(i32* %95)
  %97 = call i32 @SetLastError(i32 -559038737)
  %98 = load i32, i32* @GENERIC_READ, align 4
  %99 = call i32* @OpenSCManagerA(i32* %18, i32* null, i32 %98)
  store i32* %99, i32** %8, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = icmp ne i32* %100, null
  %102 = zext i1 %101 to i32
  %103 = call i64 (...) @GetLastError()
  %104 = call i32 @ok(i32 %102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %103)
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @CloseServiceHandle(i32* %105)
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %89, %87, %28
  %108 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load i32, i32* %9, align 4
  switch i32 %109, label %111 [
    i32 0, label %110
    i32 1, label %110
  ]

110:                                              ; preds = %107, %107
  ret void

111:                                              ; preds = %107
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @GetComputerNameA(i32*, i32*) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @lstrcpyA(i32*, i8*) #2

declare dso_local i32 @lstrcpynA(i32*, i32*, i32) #2

declare dso_local i64 @RegConnectRegistryA(i32*, i32, i32*) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i32* @OpenSCManagerA(i32*, i32*, i32) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @CloseServiceHandle(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/hnetcfg/extr_policy.c_test_NetFwAuthorizedApplication.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/hnetcfg/extr_policy.c_test_NetFwAuthorizedApplication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@test_NetFwAuthorizedApplication.empty = internal global [1 x i32] zeroinitializer, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@CLSID_NetFwAuthorizedApplication = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@CLSCTX_INPROC_HANDLER = common dso_local global i32 0, align 4
@IID_INetFwAuthorizedApplication = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"got: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"GetModuleFileName failed: %u\0A\00", align 1
@E_POINTER = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"got: %s\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@ERROR_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@UNIVERSAL_NAME_INFO_LEVEL = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"expected %s, got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_NetFwAuthorizedApplication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_NetFwAuthorizedApplication() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %20 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %21 = load i32, i32* @CLSCTX_INPROC_HANDLER, align 4
  %22 = or i32 %20, %21
  %23 = bitcast i32** %1 to i8**
  %24 = call i32 @CoCreateInstance(i32* @CLSID_NetFwAuthorizedApplication, i32* null, i32 %22, i32* @IID_INetFwAuthorizedApplication, i8** %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @S_OK, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (i32, i8*, i32, ...) @ok(i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = call i32 @ARRAY_SIZE(i32* %19)
  %32 = call i32 @GetModuleFileNameW(i32* null, i32* %19, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (...) @GetLastError()
  %35 = call i32 (i32, i8*, i32, ...) @ok(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @INetFwAuthorizedApplication_get_ProcessImageFileName(i32* %36, i32** null)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @E_POINTER, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %7, align 4
  %43 = call i32 (i32, i8*, i32, ...) @ok(i32 %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %1, align 8
  %45 = call i32 @INetFwAuthorizedApplication_get_ProcessImageFileName(i32* %44, i32** %8)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @S_OK, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %0
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  %52 = call i32 @HRESULT_FROM_WIN32(i32 %51)
  %53 = icmp eq i32 %50, %52
  br label %54

54:                                               ; preds = %49, %0
  %55 = phi i1 [ true, %0 ], [ %53, %49 ]
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %7, align 4
  %58 = call i32 (i32, i8*, i32, ...) @ok(i32 %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32*, i32** %8, align 8
  %60 = icmp ne i32* %59, null
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @wine_dbgstr_w(i32* %63)
  %65 = call i32 (i32, i8*, i32, ...) @ok(i32 %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32*, i32** %1, align 8
  %67 = call i32 @INetFwAuthorizedApplication_put_ProcessImageFileName(i32* %66, i32* null)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @E_INVALIDARG, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %76, label %71

71:                                               ; preds = %54
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @ERROR_PATH_NOT_FOUND, align 4
  %74 = call i32 @HRESULT_FROM_WIN32(i32 %73)
  %75 = icmp eq i32 %72, %74
  br label %76

76:                                               ; preds = %71, %54
  %77 = phi i1 [ true, %54 ], [ %75, %71 ]
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %7, align 4
  %80 = call i32 (i32, i8*, i32, ...) @ok(i32 %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32*, i32** %1, align 8
  %82 = call i32 @INetFwAuthorizedApplication_put_ProcessImageFileName(i32* %81, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @test_NetFwAuthorizedApplication.empty, i64 0, i64 0))
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @E_INVALIDARG, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %91, label %86

86:                                               ; preds = %76
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @ERROR_PATH_NOT_FOUND, align 4
  %89 = call i32 @HRESULT_FROM_WIN32(i32 %88)
  %90 = icmp eq i32 %87, %89
  br label %91

91:                                               ; preds = %86, %76
  %92 = phi i1 [ true, %76 ], [ %90, %86 ]
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %7, align 4
  %95 = call i32 (i32, i8*, i32, ...) @ok(i32 %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %94)
  %96 = call i32* @SysAllocString(i32* %19)
  store i32* %96, i32** %8, align 8
  %97 = load i32*, i32** %1, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @INetFwAuthorizedApplication_put_ProcessImageFileName(i32* %97, i32* %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @S_OK, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* %7, align 4
  %105 = call i32 (i32, i8*, i32, ...) @ok(i32 %103, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load i32*, i32** %8, align 8
  %107 = call i32 @SysFreeString(i32* %106)
  %108 = call i32 @ARRAY_SIZE(i32* %13)
  %109 = call i32 @GetFullPathNameW(i32* %19, i32 %108, i32* %13, i32* null)
  %110 = call i32 @ARRAY_SIZE(i32* %13)
  %111 = call i32 @GetLongPathNameW(i32* %13, i32* %13, i32 %110)
  %112 = bitcast i32* %16 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %112, %struct.TYPE_3__** %2, align 8
  %113 = mul nuw i64 4, %15
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* @UNIVERSAL_NAME_INFO_LEVEL, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %117 = call i32 @WNetGetUniversalNameW(i32* %19, i32 %115, %struct.TYPE_3__* %116, i32* %9)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @NO_ERROR, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %91
  %122 = getelementptr inbounds i32, i32* %16, i64 2
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  store i32* %122, i32** %124, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @lstrcpyW(i32* %127, i32* %13)
  br label %129

129:                                              ; preds = %121, %91
  %130 = load i32*, i32** %1, align 8
  %131 = call i32 @INetFwAuthorizedApplication_get_ProcessImageFileName(i32* %130, i32** %8)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @S_OK, align 4
  %134 = icmp eq i32 %132, %133
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* %7, align 4
  %137 = call i32 (i32, i8*, i32, ...) @ok(i32 %135, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %136)
  %138 = load i32*, i32** %8, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @lstrcmpW(i32* %138, i32* %141)
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @wine_dbgstr_w(i32* %148)
  %150 = load i32*, i32** %8, align 8
  %151 = call i32 @wine_dbgstr_w(i32* %150)
  %152 = call i32 (i32, i8*, i32, ...) @ok(i32 %145, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %149, i32 %151)
  %153 = load i32*, i32** %8, align 8
  %154 = call i32 @SysFreeString(i32* %153)
  %155 = load i32*, i32** %1, align 8
  %156 = call i32 @INetFwAuthorizedApplication_Release(i32* %155)
  %157 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %157)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #2

declare dso_local i32 @ok(i32, i8*, i32, ...) #2

declare dso_local i32 @GetModuleFileNameW(i32*, i32*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @INetFwAuthorizedApplication_get_ProcessImageFileName(i32*, i32**) #2

declare dso_local i32 @HRESULT_FROM_WIN32(i32) #2

declare dso_local i32 @wine_dbgstr_w(i32*) #2

declare dso_local i32 @INetFwAuthorizedApplication_put_ProcessImageFileName(i32*, i32*) #2

declare dso_local i32* @SysAllocString(i32*) #2

declare dso_local i32 @SysFreeString(i32*) #2

declare dso_local i32 @GetFullPathNameW(i32*, i32, i32*, i32*) #2

declare dso_local i32 @GetLongPathNameW(i32*, i32*, i32) #2

declare dso_local i32 @WNetGetUniversalNameW(i32*, i32, %struct.TYPE_3__*, i32*) #2

declare dso_local i32 @lstrcpyW(i32*, i32*) #2

declare dso_local i32 @lstrcmpW(i32*, i32*) #2

declare dso_local i32 @INetFwAuthorizedApplication_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

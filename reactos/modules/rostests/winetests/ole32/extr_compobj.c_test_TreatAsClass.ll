; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_TreatAsClass.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_TreatAsClass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@test_TreatAsClass.deadbeef = internal global %struct.TYPE_11__ { i32 -559038737, i32 57005, i32 48879, %struct.TYPE_10__ { i32 222, i32 173, i32 190, i32 239, i32 222, i32 173, i32 190, i32 239 } }, align 4
@test_TreatAsClass.deadbeefA = internal constant [39 x i8] c"{DEADBEEF-DEAD-BEEF-DEAD-BEEFDEADBEEF}\00", align 16
@S_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"expected S_FALSE got %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"expected to get same clsid back\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"expected E_INVALIDARG got %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"expected no change to the clsid\0A\00", align 1
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"CLSID\00", align 1
@KEY_READ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Couldn't open CLSID key, error %d\0A\00", align 1
@KEY_WRITE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [83 x i8] c"CoGetTreatAsClass() tests will be skipped (failed to create a test key, error %d)\0A\00", align 1
@REGDB_E_WRITEREGDB = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [39 x i8] c"CoTreatAsClass gave wrong error: %08x\0A\00", align 1
@CLSID_FileProtocol = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [47 x i8] c"Insufficient privileges to use CoTreatAsClass\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [29 x i8] c"CoTreatAsClass failed: %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"CoGetTreatAsClass failed: %08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"expected to get substituted clsid\0A\00", align 1
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IInternetProtocol = common dso_local global i32 0, align 4
@REGDB_E_CLASSNOTREG = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [49 x i8] c"IE not installed so can't test CoCreateInstance\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"CoCreateInstance failed: %08x\0A\00", align 1
@CLSID_NULL = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str.14 = private unnamed_addr constant [27 x i8] c"expected S_FALSE got %08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"CoCreateInstance gave wrong error: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_TreatAsClass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_TreatAsClass() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32* null, i32** %3, align 8
  %7 = call i64 @pCoGetTreatAsClass(%struct.TYPE_11__* @test_TreatAsClass.deadbeef, i32* %2)
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @S_FALSE, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i64, i64* %1, align 8
  %13 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = call i32 @IsEqualGUID(i32* %2, %struct.TYPE_11__* @test_TreatAsClass.deadbeef)
  %15 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i64 @pCoGetTreatAsClass(%struct.TYPE_11__* null, i32* %2)
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @E_INVALIDARG, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %1, align 8
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %21)
  %23 = call i32 @IsEqualGUID(i32* %2, %struct.TYPE_11__* @test_TreatAsClass.deadbeef)
  %24 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %25 = call i64 @pCoGetTreatAsClass(%struct.TYPE_11__* @test_TreatAsClass.deadbeef, i32* null)
  store i64 %25, i64* %1, align 8
  %26 = load i64, i64* %1, align 8
  %27 = load i64, i64* @E_INVALIDARG, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %1, align 8
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %33 = load i32, i32* @KEY_READ, align 4
  %34 = call i64 @RegOpenKeyExA(i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 %33, i32* %4)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %6, align 8
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @KEY_WRITE, align 4
  %43 = call i64 @RegCreateKeyExA(i32 %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @test_TreatAsClass.deadbeefA, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %42, i32* null, i32* %5, i32* null)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %0
  %47 = load i64, i64* %6, align 8
  %48 = call i32 (i8*, ...) @win_skip(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.6, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @RegCloseKey(i32 %49)
  br label %143

51:                                               ; preds = %0
  %52 = call i64 @pCoTreatAsClass(%struct.TYPE_11__* @test_TreatAsClass.deadbeef, %struct.TYPE_11__* @test_TreatAsClass.deadbeef)
  store i64 %52, i64* %1, align 8
  %53 = load i64, i64* %1, align 8
  %54 = load i64, i64* @REGDB_E_WRITEREGDB, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %1, align 8
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i64 %57)
  %59 = call i64 @pCoTreatAsClass(%struct.TYPE_11__* @test_TreatAsClass.deadbeef, %struct.TYPE_11__* @CLSID_FileProtocol)
  store i64 %59, i64* %1, align 8
  %60 = load i64, i64* %1, align 8
  %61 = load i64, i64* @REGDB_E_WRITEREGDB, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = call i32 (i8*, ...) @win_skip(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  br label %135

65:                                               ; preds = %51
  %66 = load i64, i64* %1, align 8
  %67 = load i64, i64* @S_OK, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %1, align 8
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i64 %70)
  %72 = call i64 @pCoGetTreatAsClass(%struct.TYPE_11__* @test_TreatAsClass.deadbeef, i32* %2)
  store i64 %72, i64* %1, align 8
  %73 = load i64, i64* %1, align 8
  %74 = load i64, i64* @S_OK, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* %1, align 8
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i64 %77)
  %79 = call i32 @IsEqualGUID(i32* %2, %struct.TYPE_11__* @CLSID_FileProtocol)
  %80 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %81 = call i32 @OleInitialize(i32* null)
  %82 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %83 = bitcast i32** %3 to i8**
  %84 = call i64 @CoCreateInstance(%struct.TYPE_11__* @test_TreatAsClass.deadbeef, i32* null, i32 %82, i32* @IID_IInternetProtocol, i8** %83)
  store i64 %84, i64* %1, align 8
  %85 = load i64, i64* %1, align 8
  %86 = load i64, i64* @REGDB_E_CLASSNOTREG, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %65
  %89 = call i32 (i8*, ...) @win_skip(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0))
  br label %135

90:                                               ; preds = %65
  %91 = load i64, i64* %1, align 8
  %92 = load i64, i64* @S_OK, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i64, i64* %1, align 8
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i64 %95)
  %97 = load i32*, i32** %3, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @IInternetProtocol_Release(i32* %100)
  store i32* null, i32** %3, align 8
  br label %102

102:                                              ; preds = %99, %90
  %103 = call i64 @pCoTreatAsClass(%struct.TYPE_11__* @test_TreatAsClass.deadbeef, %struct.TYPE_11__* @CLSID_NULL)
  store i64 %103, i64* %1, align 8
  %104 = load i64, i64* %1, align 8
  %105 = load i64, i64* @S_OK, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load i64, i64* %1, align 8
  %109 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i64 %108)
  %110 = call i64 @pCoGetTreatAsClass(%struct.TYPE_11__* @test_TreatAsClass.deadbeef, i32* %2)
  store i64 %110, i64* %1, align 8
  %111 = load i64, i64* %1, align 8
  %112 = load i64, i64* @S_FALSE, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = load i64, i64* %1, align 8
  %116 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i64 %115)
  %117 = call i32 @IsEqualGUID(i32* %2, %struct.TYPE_11__* @test_TreatAsClass.deadbeef)
  %118 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %119 = call i32 @Sleep(i32 200)
  %120 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %121 = bitcast i32** %3 to i8**
  %122 = call i64 @CoCreateInstance(%struct.TYPE_11__* @test_TreatAsClass.deadbeef, i32* null, i32 %120, i32* @IID_IInternetProtocol, i8** %121)
  store i64 %122, i64* %1, align 8
  %123 = load i64, i64* %1, align 8
  %124 = load i64, i64* @REGDB_E_CLASSNOTREG, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load i64, i64* %1, align 8
  %128 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i64 %127)
  %129 = load i32*, i32** %3, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %102
  %132 = load i32*, i32** %3, align 8
  %133 = call i32 @IInternetProtocol_Release(i32* %132)
  br label %134

134:                                              ; preds = %131, %102
  br label %135

135:                                              ; preds = %134, %88, %63
  %136 = call i32 (...) @OleUninitialize()
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @RegCloseKey(i32 %137)
  %139 = load i32, i32* %4, align 4
  %140 = call i32 @RegDeleteKeyA(i32 %139, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @test_TreatAsClass.deadbeefA, i64 0, i64 0))
  %141 = load i32, i32* %4, align 4
  %142 = call i32 @RegCloseKey(i32 %141)
  br label %143

143:                                              ; preds = %135, %46
  ret void
}

declare dso_local i64 @pCoGetTreatAsClass(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IsEqualGUID(i32*, %struct.TYPE_11__*) #1

declare dso_local i64 @RegOpenKeyExA(i32, i8*, i32, i32, i32*) #1

declare dso_local i64 @RegCreateKeyExA(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @win_skip(i8*, ...) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @pCoTreatAsClass(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @OleInitialize(i32*) #1

declare dso_local i64 @CoCreateInstance(%struct.TYPE_11__*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @IInternetProtocol_Release(i32*) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i32 @OleUninitialize(...) #1

declare dso_local i32 @RegDeleteKeyA(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

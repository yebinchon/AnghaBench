; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_CoGetContextToken.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_CoGetContextToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CO_E_NOTINITIALIZED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Expected CO_E_NOTINITIALIZED, got 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Expected 0, got 0x%lx\0A\00", align 1
@APTTYPE_CURRENT = common dso_local global i32 0, align 4
@APTTYPEQUALIFIER_NONE = common dso_local global i32 0, align 4
@APTTYPE_MAINSTA = common dso_local global i32 0, align 4
@E_POINTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Expected E_POINTER, got 0x%08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Expected S_OK, got 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Expected token != 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"got different token\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Expected 1, got %u\0A\00", align 1
@IID_IObjContext = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"Expected interface pointers to be the same\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Expected 3, got %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Expected 2, got %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Expected 0, got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CoGetContextToken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CoGetContextToken() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 -559038737, i32* %3, align 4
  %6 = call i32 @pCoGetContextToken(i32* %3)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @CO_E_NOTINITIALIZED, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %1, align 4
  %12 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, -559038737
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %3, align 4
  %17 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @APTTYPE_CURRENT, align 4
  %19 = load i32, i32* @APTTYPEQUALIFIER_NONE, align 4
  %20 = call i32 @test_apt_type(i32 %18, i32 %19)
  %21 = call i32 @CoInitialize(i32* null)
  %22 = load i32, i32* @APTTYPE_MAINSTA, align 4
  %23 = load i32, i32* @APTTYPEQUALIFIER_NONE, align 4
  %24 = call i32 @test_apt_type(i32 %22, i32 %23)
  %25 = call i32 @pCoGetContextToken(i32* null)
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @E_POINTER, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %1, align 4
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  store i32 0, i32* %3, align 4
  %32 = call i32 @pCoGetContextToken(i32* %3)
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* @S_OK, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %1, align 4
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  %41 = call i32 @pCoGetContextToken(i32* %4)
  store i32 %41, i32* %1, align 4
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* @S_OK, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %1, align 4
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i32*
  %56 = call i32 @IUnknown_AddRef(i32* %55)
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* %2, align 4
  %58 = icmp eq i32 %57, 1
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %2, align 4
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %60)
  %62 = bitcast i32** %5 to i8**
  %63 = call i32 @pCoGetObjectContext(i32* @IID_IObjContext, i8** %62)
  store i32 %63, i32* %1, align 4
  %64 = load i32, i32* %1, align 4
  %65 = load i32, i32* @S_OK, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %1, align 4
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i32*
  %74 = icmp eq i32* %70, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @IObjContext_AddRef(i32* %77)
  store i32 %78, i32* %2, align 4
  %79 = load i32, i32* %2, align 4
  %80 = icmp eq i32 %79, 3
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %2, align 4
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %82)
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @IObjContext_Release(i32* %84)
  store i32 %85, i32* %2, align 4
  %86 = load i32, i32* %2, align 4
  %87 = icmp eq i32 %86, 2
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %2, align 4
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i32*
  %94 = call i32 @IUnknown_Release(i32* %93)
  store i32 %94, i32* %2, align 4
  %95 = load i32, i32* %2, align 4
  %96 = icmp eq i32 %95, 1
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %2, align 4
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %98)
  store i32 0, i32* %3, align 4
  %100 = call i32 @pCoGetContextToken(i32* %3)
  store i32 %100, i32* %1, align 4
  %101 = load i32, i32* %1, align 4
  %102 = load i32, i32* @S_OK, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %1, align 4
  %106 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %3, align 4
  %108 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i32*
  %113 = icmp eq i32* %109, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  %116 = load i32*, i32** %5, align 8
  %117 = call i32 @IObjContext_AddRef(i32* %116)
  store i32 %117, i32* %2, align 4
  %118 = load i32, i32* %2, align 4
  %119 = icmp eq i32 %118, 2
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %2, align 4
  %122 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %121)
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @IObjContext_Release(i32* %123)
  store i32 %124, i32* %2, align 4
  %125 = load i32, i32* %2, align 4
  %126 = icmp eq i32 %125, 1
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %2, align 4
  %129 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %128)
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @IObjContext_Release(i32* %130)
  store i32 %131, i32* %2, align 4
  %132 = load i32, i32* %2, align 4
  %133 = icmp eq i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* %2, align 4
  %136 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %135)
  %137 = call i32 (...) @CoUninitialize()
  ret void
}

declare dso_local i32 @pCoGetContextToken(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @test_apt_type(i32, i32) #1

declare dso_local i32 @CoInitialize(i32*) #1

declare dso_local i32 @IUnknown_AddRef(i32*) #1

declare dso_local i32 @pCoGetObjectContext(i32*, i8**) #1

declare dso_local i32 @IObjContext_AddRef(i32*) #1

declare dso_local i32 @IObjContext_Release(i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @CoUninitialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

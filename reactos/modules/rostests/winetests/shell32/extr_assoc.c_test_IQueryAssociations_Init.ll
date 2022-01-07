; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_assoc.c_test_IQueryAssociations_Init.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_assoc.c_test_IQueryAssociations_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_QueryAssociations = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IQueryAssociations = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"failed to create object, 0x%x\0A\00", align 1
@ASSOCF_NONE = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Init failed, 0x%08x\0A\00", align 1
@httpW = common dso_local global i32* null, align 8
@badW = common dso_local global i32* null, align 8
@S_FALSE = common dso_local global i64 0, align 8
@ASSOCSTR_EXECUTABLE = common dso_local global i32 0, align 4
@ERROR_NO_ASSOCIATION = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IQueryAssociations_Init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IQueryAssociations_Init() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %5 = bitcast i32** %1 to i8*
  %6 = call i64 @CoCreateInstance(i32* @CLSID_QueryAssociations, i32* null, i32 %4, i32* @IID_IQueryAssociations, i8* %5)
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @S_OK, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %2, align 8
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = load i32, i32* @ASSOCF_NONE, align 4
  %15 = call i64 @IQueryAssociations_Init(i32* %13, i32 %14, i32* null, i32* null, i32* null)
  store i64 %15, i64* %2, align 8
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @E_INVALIDARG, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = load i32*, i32** %1, align 8
  %23 = load i32, i32* @ASSOCF_NONE, align 4
  %24 = load i32*, i32** @httpW, align 8
  %25 = call i64 @IQueryAssociations_Init(i32* %22, i32 %23, i32* %24, i32* null, i32* null)
  store i64 %25, i64* %2, align 8
  %26 = load i64, i64* %2, align 8
  %27 = load i64, i64* @S_OK, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %2, align 8
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  %32 = load i32*, i32** %1, align 8
  %33 = load i32, i32* @ASSOCF_NONE, align 4
  %34 = load i32*, i32** @badW, align 8
  %35 = call i64 @IQueryAssociations_Init(i32* %32, i32 %33, i32* %34, i32* null, i32* null)
  store i64 %35, i64* %2, align 8
  %36 = load i64, i64* %2, align 8
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %0
  %40 = load i64, i64* %2, align 8
  %41 = load i64, i64* @S_FALSE, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @broken(i32 %43)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %39, %0
  %47 = phi i1 [ true, %0 ], [ %45, %39 ]
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %2, align 8
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  store i64 0, i64* %3, align 8
  %51 = load i32*, i32** %1, align 8
  %52 = load i32, i32* @ASSOCF_NONE, align 4
  %53 = load i32, i32* @ASSOCSTR_EXECUTABLE, align 4
  %54 = call i64 @IQueryAssociations_GetString(i32* %51, i32 %52, i32 %53, i32* null, i32* null, i64* %3)
  store i64 %54, i64* %2, align 8
  %55 = load i64, i64* %2, align 8
  %56 = load i32, i32* @ERROR_NO_ASSOCIATION, align 4
  %57 = call i64 @HRESULT_FROM_WIN32(i32 %56)
  %58 = icmp eq i64 %55, %57
  br i1 %58, label %66, label %59

59:                                               ; preds = %46
  %60 = load i64, i64* %2, align 8
  %61 = load i64, i64* @E_FAIL, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @broken(i32 %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %59, %46
  %67 = phi i1 [ true, %46 ], [ %65, %59 ]
  %68 = zext i1 %67 to i32
  %69 = load i64, i64* %2, align 8
  %70 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %69)
  %71 = load i32*, i32** %1, align 8
  %72 = call i32 @IQueryAssociations_Release(i32* %71)
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IQueryAssociations_Init(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @IQueryAssociations_GetString(i32*, i32, i32, i32*, i32*, i64*) #1

declare dso_local i64 @HRESULT_FROM_WIN32(i32) #1

declare dso_local i32 @IQueryAssociations_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

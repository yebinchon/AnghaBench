; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_typelib.c_test_TypeInfo2_GetContainingTypeLib.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_typelib.c_test_TypeInfo2_GetContainingTypeLib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_TypeInfo2_GetContainingTypeLib.test = internal constant [9 x i8] c"test.tlb\00", align 1
@test_TypeInfo2_GetContainingTypeLib.testTI = internal global [13 x i8] c"testTypeInfo\00", align 1
@SYS_WIN32 = common dso_local global i32 0, align 4
@TKIND_DISPATCH = common dso_local global i32 0, align 4
@IID_ITypeInfo2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"ITypeInfo2_GetContainingTypeLib returned empty TypeLib\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"ITypeInfo2_GetContainingTypeLib returned Index = %u, expected 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_TypeInfo2_GetContainingTypeLib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_TypeInfo2_GetContainingTypeLib() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @SYS_WIN32, align 4
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to i32*
  %10 = bitcast i32** %1 to i32*
  %11 = call i32 @CreateTypeLib2(i32* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_TypeInfo2_GetContainingTypeLib.test, i64 0, i64 0), i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @ok_ole_success(i32 %12, i32 (i32*, i32**, i32*)* bitcast (i32 (i32*, i8*, i32*)* @CreateTypeLib2 to i32 (i32*, i32**, i32*)*))
  %14 = load i32*, i32** %1, align 8
  %15 = load i32, i32* @TKIND_DISPATCH, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i32*
  %18 = call i32 (i32*, i8*, i32*, ...) @ICreateTypeLib2_CreateTypeInfo(i32* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_TypeInfo2_GetContainingTypeLib.testTI, i64 0, i64 0), i32* %17, i32** %2)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @ok_ole_success(i32 %19, i32 (i32*, i32**, i32*)* bitcast (i32 (i32*, i8*, i32*, ...)* @ICreateTypeLib2_CreateTypeInfo to i32 (i32*, i32**, i32*)*))
  %21 = load i32*, i32** %2, align 8
  %22 = bitcast i32** %3 to i8**
  %23 = call i32 @ICreateTypeInfo_QueryInterface(i32* %21, i32* @IID_ITypeInfo2, i8** %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @ok_ole_success(i32 %24, i32 (i32*, i32**, i32*)* @ICreateTypeInfo2_QueryInterface)
  store i32* null, i32** %4, align 8
  store i32 888, i32* %5, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @ITypeInfo2_GetContainingTypeLib(i32* %26, i32** %4, i32* %5)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ok_ole_success(i32 %28, i32 (i32*, i32**, i32*)* @ITypeInfo2_GetContainingTypeLib)
  %30 = load i32*, i32** %4, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %0
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @ITypeLib_Release(i32* %42)
  br label %44

44:                                               ; preds = %41, %0
  store i32* null, i32** %4, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @ITypeInfo2_GetContainingTypeLib(i32* %45, i32** %4, i32* null)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @ok_ole_success(i32 %47, i32 (i32*, i32**, i32*)* @ITypeInfo2_GetContainingTypeLib)
  %49 = load i32*, i32** %4, align 8
  %50 = icmp ne i32* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %53 = load i32*, i32** %4, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @ITypeLib_Release(i32* %56)
  br label %58

58:                                               ; preds = %55, %44
  store i32 888, i32* %5, align 4
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @ITypeInfo2_GetContainingTypeLib(i32* %59, i32** null, i32* %5)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @ok_ole_success(i32 %61, i32 (i32*, i32**, i32*)* @ITypeInfo2_GetContainingTypeLib)
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %5, align 4
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @ITypeInfo2_GetContainingTypeLib(i32* %68, i32** null, i32* null)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @ok_ole_success(i32 %70, i32 (i32*, i32**, i32*)* @ITypeInfo2_GetContainingTypeLib)
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @ITypeInfo2_Release(i32* %72)
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 @ICreateTypeInfo_Release(i32* %74)
  %76 = load i32*, i32** %1, align 8
  %77 = call i32 @ICreateTypeLib2_Release(i32* %76)
  ret void
}

declare dso_local i32 @CreateTypeLib2(i32*, i8*, i32*) #1

declare dso_local i32 @ok_ole_success(i32, i32 (i32*, i32**, i32*)*) #1

declare dso_local i32 @ICreateTypeLib2_CreateTypeInfo(i32*, i8*, i32*, ...) #1

declare dso_local i32 @ICreateTypeInfo_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ICreateTypeInfo2_QueryInterface(i32*, i32**, i32*) #1

declare dso_local i32 @ITypeInfo2_GetContainingTypeLib(i32*, i32**, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @ITypeLib_Release(i32*) #1

declare dso_local i32 @ITypeInfo2_Release(i32*) #1

declare dso_local i32 @ICreateTypeInfo_Release(i32*) #1

declare dso_local i32 @ICreateTypeLib2_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

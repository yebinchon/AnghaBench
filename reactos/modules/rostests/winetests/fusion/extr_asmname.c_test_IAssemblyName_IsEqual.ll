; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/fusion/extr_asmname.c_test_IAssemblyName_IsEqual.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/fusion/extr_asmname.c_test_IAssemblyName_IsEqual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_IAssemblyName_IsEqual.wine1 = internal constant [5 x i8] c"wine\00", align 1
@test_IAssemblyName_IsEqual.wine2 = internal constant [21 x i8] c"wine,version=1.0.0.0\00", align 16
@test_IAssemblyName_IsEqual.wine3 = internal constant [37 x i8] c"wine,version=1.0.0.0,culture=neutral\00", align 16
@test_IAssemblyName_IsEqual.wine4 = internal constant [32 x i8] c"wine,version=1.0.0.0,culture=en\00", align 16
@test_IAssemblyName_IsEqual.wine5 = internal constant [53 x i8] c"wine,version=1.0.0.0,publicKeyToken=1234567890abcdef\00", align 16
@CANOF_PARSE_DISPLAY_NAME = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@ASM_CMPF_IL_ALL = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IAssemblyName_IsEqual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IAssemblyName_IsEqual() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @CANOF_PARSE_DISPLAY_NAME, align 4
  %5 = call i64 @pCreateAssemblyNameObject(i32** %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_IAssemblyName_IsEqual.wine1, i64 0, i64 0), i32 %4, i32* null)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @S_OK, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %1, align 8
  %11 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i32, i32* @CANOF_PARSE_DISPLAY_NAME, align 4
  %13 = call i64 @pCreateAssemblyNameObject(i32** %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_IAssemblyName_IsEqual.wine1, i64 0, i64 0), i32 %12, i32* null)
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* @S_OK, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %1, align 8
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @ASM_CMPF_IL_ALL, align 4
  %23 = call i64 @IAssemblyName_IsEqual(i32* %20, i32* %21, i32 %22)
  store i64 %23, i64* %1, align 8
  %24 = load i64, i64* %1, align 8
  %25 = load i64, i64* @S_OK, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %1, align 8
  %29 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @ASM_CMPF_IL_ALL, align 4
  %33 = call i64 @IAssemblyName_IsEqual(i32* %30, i32* %31, i32 %32)
  store i64 %33, i64* %1, align 8
  %34 = load i64, i64* %1, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %1, align 8
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @IAssemblyName_Release(i32* %40)
  %42 = load i32, i32* @CANOF_PARSE_DISPLAY_NAME, align 4
  %43 = call i64 @pCreateAssemblyNameObject(i32** %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @test_IAssemblyName_IsEqual.wine2, i64 0, i64 0), i32 %42, i32* null)
  store i64 %43, i64* %1, align 8
  %44 = load i64, i64* %1, align 8
  %45 = load i64, i64* @S_OK, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %1, align 8
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = load i32*, i32** %2, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @ASM_CMPF_IL_ALL, align 4
  %53 = call i64 @IAssemblyName_IsEqual(i32* %50, i32* %51, i32 %52)
  store i64 %53, i64* %1, align 8
  %54 = load i64, i64* %1, align 8
  %55 = load i64, i64* @S_OK, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %1, align 8
  %59 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %58)
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @IAssemblyName_Release(i32* %60)
  %62 = load i32, i32* @CANOF_PARSE_DISPLAY_NAME, align 4
  %63 = call i64 @pCreateAssemblyNameObject(i32** %3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @test_IAssemblyName_IsEqual.wine3, i64 0, i64 0), i32 %62, i32* null)
  store i64 %63, i64* %1, align 8
  %64 = load i64, i64* %1, align 8
  %65 = load i64, i64* @S_OK, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i64, i64* %1, align 8
  %69 = call i32 @ok(i32 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %68)
  %70 = load i32*, i32** %2, align 8
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* @ASM_CMPF_IL_ALL, align 4
  %73 = call i64 @IAssemblyName_IsEqual(i32* %70, i32* %71, i32 %72)
  store i64 %73, i64* %1, align 8
  %74 = load i64, i64* %1, align 8
  %75 = load i64, i64* @S_OK, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i64, i64* %1, align 8
  %79 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %78)
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @IAssemblyName_Release(i32* %80)
  %82 = load i32, i32* @CANOF_PARSE_DISPLAY_NAME, align 4
  %83 = call i64 @pCreateAssemblyNameObject(i32** %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_IAssemblyName_IsEqual.wine4, i64 0, i64 0), i32 %82, i32* null)
  store i64 %83, i64* %1, align 8
  %84 = load i64, i64* %1, align 8
  %85 = load i64, i64* @S_OK, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i64, i64* %1, align 8
  %89 = call i32 @ok(i32 %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %88)
  %90 = load i32*, i32** %2, align 8
  %91 = load i32*, i32** %3, align 8
  %92 = load i32, i32* @ASM_CMPF_IL_ALL, align 4
  %93 = call i64 @IAssemblyName_IsEqual(i32* %90, i32* %91, i32 %92)
  store i64 %93, i64* %1, align 8
  %94 = load i64, i64* %1, align 8
  %95 = load i64, i64* @S_FALSE, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i64, i64* %1, align 8
  %99 = call i32 @ok(i32 %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %98)
  %100 = load i32*, i32** %2, align 8
  %101 = call i32 @IAssemblyName_Release(i32* %100)
  %102 = load i32, i32* @CANOF_PARSE_DISPLAY_NAME, align 4
  %103 = call i64 @pCreateAssemblyNameObject(i32** %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_IAssemblyName_IsEqual.wine1, i64 0, i64 0), i32 %102, i32* null)
  store i64 %103, i64* %1, align 8
  %104 = load i64, i64* %1, align 8
  %105 = load i64, i64* @S_OK, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load i64, i64* %1, align 8
  %109 = call i32 @ok(i32 %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %108)
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 @IAssemblyName_Release(i32* %110)
  %112 = load i32, i32* @CANOF_PARSE_DISPLAY_NAME, align 4
  %113 = call i64 @pCreateAssemblyNameObject(i32** %3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @test_IAssemblyName_IsEqual.wine5, i64 0, i64 0), i32 %112, i32* null)
  store i64 %113, i64* %1, align 8
  %114 = load i64, i64* %1, align 8
  %115 = load i64, i64* @S_OK, align 8
  %116 = icmp eq i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i64, i64* %1, align 8
  %119 = call i32 @ok(i32 %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %118)
  %120 = load i32*, i32** %2, align 8
  %121 = load i32*, i32** %3, align 8
  %122 = load i32, i32* @ASM_CMPF_IL_ALL, align 4
  %123 = call i64 @IAssemblyName_IsEqual(i32* %120, i32* %121, i32 %122)
  store i64 %123, i64* %1, align 8
  %124 = load i64, i64* %1, align 8
  %125 = load i64, i64* @S_OK, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = load i64, i64* %1, align 8
  %129 = call i32 @ok(i32 %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %128)
  %130 = load i32*, i32** %2, align 8
  %131 = call i32 @IAssemblyName_Release(i32* %130)
  %132 = load i32*, i32** %3, align 8
  %133 = call i32 @IAssemblyName_Release(i32* %132)
  ret void
}

declare dso_local i64 @pCreateAssemblyNameObject(i32**, i8*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IAssemblyName_IsEqual(i32*, i32*, i32) #1

declare dso_local i32 @IAssemblyName_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

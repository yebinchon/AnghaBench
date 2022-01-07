; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dxdiagn/extr_container.c_test_GetChildContainer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dxdiagn/extr_container.c_test_GetChildContainer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"Unable to create the root IDxDiagContainer\0A\00", align 1
@pddc = common dso_local global i8* null, align 8
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"Expected IDxDiagContainer::GetChildContainer to return E_INVALIDARG, got 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Expected output pointer to be unchanged, got %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Expected output pointer to be NULL, got %p\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [79 x i8] c"Expected IDxDiagContainer::EnumChildContainerNames to return S_OK, got 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"IDxDiagContainer::EnumChildContainerNames failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c"Expected IDxDiagContainer::GetChildContainer to return S_OK, got 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Expected a valid output pointer, got %p\0A\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"Expected the two pointers (%p vs. %p) to be unequal\0A\00", align 1
@pddp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetChildContainer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetChildContainer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i32], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = bitcast [256 x i32]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 1024, i1 false)
  %6 = call i32 (...) @create_root_IDxDiagContainer()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = call i32 @skip(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %140

10:                                               ; preds = %0
  %11 = load i8*, i8** @pddc, align 8
  %12 = call i32 @IDxDiagContainer_GetChildContainer(i8* %11, i32* null, i8** null)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @E_INVALIDARG, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 (i32, i8*, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  store i8* inttoptr (i64 3735928559 to i8*), i8** %3, align 8
  %21 = load i8*, i8** @pddc, align 8
  %22 = call i32 @IDxDiagContainer_GetChildContainer(i8* %21, i32* null, i8** %3)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @E_INVALIDARG, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 (i32, i8*, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i8*, i8** %3, align 8
  %32 = icmp eq i8* %31, inttoptr (i64 3735928559 to i8*)
  %33 = zext i1 %32 to i32
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 (i32, i8*, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  %36 = load i8*, i8** @pddc, align 8
  %37 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %38 = call i32 @IDxDiagContainer_GetChildContainer(i8* %36, i32* %37, i8** null)
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @E_INVALIDARG, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 (i32, i8*, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  store i8* inttoptr (i64 3735928559 to i8*), i8** %3, align 8
  %47 = load i8*, i8** @pddc, align 8
  %48 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %49 = call i32 @IDxDiagContainer_GetChildContainer(i8* %47, i32* %48, i8** %3)
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* %1, align 4
  %51 = load i32, i32* @E_INVALIDARG, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 (i32, i8*, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  %58 = load i8*, i8** %3, align 8
  %59 = icmp eq i8* %58, null
  %60 = zext i1 %59 to i32
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 (i32, i8*, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  %63 = load i8*, i8** @pddc, align 8
  %64 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %65 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %66 = call i32 @ARRAY_SIZE(i32* %65)
  %67 = call i32 @IDxDiagContainer_EnumChildContainerNames(i8* %63, i32 0, i32* %64, i32 %66)
  store i32 %67, i32* %1, align 4
  %68 = load i32, i32* %1, align 4
  %69 = load i32, i32* @S_OK, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %1, align 4
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 (i32, i8*, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i8* %74)
  %76 = load i32, i32* %1, align 4
  %77 = call i64 @FAILED(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %10
  %80 = call i32 @skip(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  br label %135

81:                                               ; preds = %10
  store i8* inttoptr (i64 3735928559 to i8*), i8** %3, align 8
  %82 = load i8*, i8** @pddc, align 8
  %83 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %84 = call i32 @IDxDiagContainer_GetChildContainer(i8* %82, i32* %83, i8** %3)
  store i32 %84, i32* %1, align 4
  %85 = load i32, i32* %1, align 4
  %86 = load i32, i32* @S_OK, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %1, align 4
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  %92 = call i32 (i32, i8*, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0), i8* %91)
  %93 = load i8*, i8** %3, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %81
  %96 = load i8*, i8** %3, align 8
  %97 = icmp ne i8* %96, inttoptr (i64 3735928559 to i8*)
  br label %98

98:                                               ; preds = %95, %81
  %99 = phi i1 [ false, %81 ], [ %97, %95 ]
  %100 = zext i1 %99 to i32
  %101 = load i8*, i8** %3, align 8
  %102 = call i32 (i32, i8*, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* %101)
  %103 = load i32, i32* %1, align 4
  %104 = call i64 @SUCCEEDED(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %134

106:                                              ; preds = %98
  %107 = load i8*, i8** @pddc, align 8
  %108 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  %109 = call i32 @IDxDiagContainer_GetChildContainer(i8* %107, i32* %108, i8** %4)
  store i32 %109, i32* %1, align 4
  %110 = load i32, i32* %1, align 4
  %111 = load i32, i32* @S_OK, align 4
  %112 = icmp eq i32 %110, %111
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %1, align 4
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to i8*
  %117 = call i32 (i32, i8*, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0), i8* %116)
  %118 = load i32, i32* %1, align 4
  %119 = call i64 @SUCCEEDED(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %106
  %122 = load i8*, i8** %4, align 8
  %123 = load i8*, i8** %3, align 8
  %124 = icmp ne i8* %122, %123
  %125 = zext i1 %124 to i32
  %126 = load i8*, i8** %3, align 8
  %127 = load i8*, i8** %4, align 8
  %128 = call i32 (i32, i8*, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i8* %126, i8* %127)
  br label %129

129:                                              ; preds = %121, %106
  %130 = load i8*, i8** %4, align 8
  %131 = call i32 @IDxDiagContainer_Release(i8* %130)
  %132 = load i8*, i8** %3, align 8
  %133 = call i32 @IDxDiagContainer_Release(i8* %132)
  br label %134

134:                                              ; preds = %129, %98
  br label %135

135:                                              ; preds = %134, %79
  %136 = load i8*, i8** @pddc, align 8
  %137 = call i32 @IDxDiagContainer_Release(i8* %136)
  %138 = load i32, i32* @pddp, align 4
  %139 = call i32 @IDxDiagProvider_Release(i32 %138)
  br label %140

140:                                              ; preds = %135, %8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @create_root_IDxDiagContainer(...) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @IDxDiagContainer_GetChildContainer(i8*, i32*, i8**) #2

declare dso_local i32 @ok(i32, i8*, i8*, ...) #2

declare dso_local i32 @IDxDiagContainer_EnumChildContainerNames(i8*, i32, i32*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i64 @SUCCEEDED(i32) #2

declare dso_local i32 @IDxDiagContainer_Release(i8*) #2

declare dso_local i32 @IDxDiagProvider_Release(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

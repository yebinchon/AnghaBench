; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dxdiagn/extr_container.c_test_container_properties.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dxdiagn/extr_container.c_test_container_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property_test = type { i64, i32 }

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [72 x i8] c"Expected IDxDiagContainer::GetNumberOfProps to return S_OK, got 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Expected container property count to be zero, got %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"[%d] Expected IDxDiagContainer::GetProp to return S_OK for %s, got 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"[%d] Expected variant type %d, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s = %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.property_test*, i64)* @test_container_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_container_properties(i32* %0, %struct.property_test* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.property_test*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.property_test* %1, %struct.property_test** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %3
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @IDxDiagContainer_GetNumberOfProps(i32* %14, i64* %8)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %7, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 (i32, i8*, i32, ...) @ok(i32 %19, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %13
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %8, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 (i32, i8*, i32, ...) @ok(i32 %29, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %26, %13
  br label %101

34:                                               ; preds = %3
  %35 = call i32 @VariantInit(i32* %9)
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %97, %34
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %6, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %100

41:                                               ; preds = %36
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.property_test*, %struct.property_test** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.property_test, %struct.property_test* %43, i64 %45
  %47 = getelementptr inbounds %struct.property_test, %struct.property_test* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @IDxDiagContainer_GetProp(i32* %42, i32 %48, i32* %9)
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @S_OK, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.property_test*, %struct.property_test** %5, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.property_test, %struct.property_test* %55, i64 %57
  %59 = getelementptr inbounds %struct.property_test, %struct.property_test* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @wine_dbgstr_w(i32 %60)
  %62 = load i64, i64* %7, align 8
  %63 = call i32 (i32, i8*, i32, ...) @ok(i32 %53, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i32 %54, i64 %61, i64 %62)
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* @S_OK, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %96

67:                                               ; preds = %41
  %68 = call i64 @V_VT(i32* %9)
  %69 = load %struct.property_test*, %struct.property_test** %5, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.property_test, %struct.property_test* %69, i64 %71
  %73 = getelementptr inbounds %struct.property_test, %struct.property_test* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %68, %74
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.property_test*, %struct.property_test** %5, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.property_test, %struct.property_test* %78, i64 %80
  %82 = getelementptr inbounds %struct.property_test, %struct.property_test* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @V_VT(i32* %9)
  %85 = call i32 (i32, i8*, i32, ...) @ok(i32 %76, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %77, i64 %83, i64 %84)
  %86 = load %struct.property_test*, %struct.property_test** %5, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.property_test, %struct.property_test* %86, i64 %88
  %90 = getelementptr inbounds %struct.property_test, %struct.property_test* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @wine_dbgstr_w(i32 %91)
  %93 = call i32 @debugstr_variant(i32* %9)
  %94 = call i32 @trace(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %92, i32 %93)
  %95 = call i32 @VariantClear(i32* %9)
  br label %96

96:                                               ; preds = %67, %41
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %36

100:                                              ; preds = %36
  br label %101

101:                                              ; preds = %100, %33
  ret void
}

declare dso_local i64 @IDxDiagContainer_GetNumberOfProps(i32*, i64*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @VariantInit(i32*) #1

declare dso_local i64 @IDxDiagContainer_GetProp(i32*, i32, i32*) #1

declare dso_local i64 @wine_dbgstr_w(i32) #1

declare dso_local i64 @V_VT(i32*) #1

declare dso_local i32 @trace(i8*, i64, i32) #1

declare dso_local i32 @debugstr_variant(i32*) #1

declare dso_local i32 @VariantClear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

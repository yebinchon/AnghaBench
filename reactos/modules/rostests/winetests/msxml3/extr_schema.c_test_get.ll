; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_schema.c_test_get.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_schema.c_test_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IXMLDOMSchemaCollection2 = common dso_local global i32 0, align 4
@E_NOTIMPL = common dso_local global i64 0, align 8
@E_POINTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"uri\00", align 1
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_get() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = call i32* @create_cache_version(i32 60, i32* @IID_IXMLDOMSchemaCollection2)
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %50

8:                                                ; preds = %0
  %9 = load i32*, i32** %1, align 8
  %10 = call i64 @IXMLDOMSchemaCollection2_get(i32* %9, i32* null, i32** null)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @E_NOTIMPL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @E_POINTER, align 8
  %17 = icmp eq i64 %15, %16
  br label %18

18:                                               ; preds = %14, %8
  %19 = phi i1 [ true, %8 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32* @_bstr_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i64 @IXMLDOMSchemaCollection2_get(i32* %23, i32* %24, i32** %2)
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @E_NOTIMPL, align 8
  %28 = call i32 @EXPECT_HR(i64 %26, i64 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @IXMLDOMSchemaCollection2_Release(i32* %29)
  %31 = call i32* @create_cache_version(i32 40, i32* @IID_IXMLDOMSchemaCollection2)
  store i32* %31, i32** %1, align 8
  %32 = load i32*, i32** %1, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %18
  br label %50

35:                                               ; preds = %18
  %36 = load i32*, i32** %1, align 8
  %37 = call i64 @IXMLDOMSchemaCollection2_get(i32* %36, i32* null, i32** null)
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @E_POINTER, align 8
  %40 = call i32 @EXPECT_HR(i64 %38, i64 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call i32* @_bstr_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i64 @IXMLDOMSchemaCollection2_get(i32* %41, i32* %42, i32** %2)
  store i64 %43, i64* %3, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @S_OK, align 8
  %46 = call i32 @EXPECT_HR(i64 %44, i64 %45)
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @IXMLDOMSchemaCollection2_Release(i32* %47)
  %49 = call i32 (...) @free_bstrs()
  br label %50

50:                                               ; preds = %35, %34, %7
  ret void
}

declare dso_local i32* @create_cache_version(i32, i32*) #1

declare dso_local i64 @IXMLDOMSchemaCollection2_get(i32*, i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32* @_bstr_(i8*) #1

declare dso_local i32 @EXPECT_HR(i64, i64) #1

declare dso_local i32 @IXMLDOMSchemaCollection2_Release(i32*) #1

declare dso_local i32 @free_bstrs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

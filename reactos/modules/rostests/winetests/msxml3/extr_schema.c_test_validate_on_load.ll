; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_schema.c_test_validate_on_load.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_schema.c_test_validate_on_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IXMLDOMSchemaCollection2 = common dso_local global i32 0, align 4
@E_POINTER = common dso_local global i32 0, align 4
@VARIANT_FALSE = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@VARIANT_TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_validate_on_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_validate_on_load() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call i32* @create_cache_version(i32 40, i32* @IID_IXMLDOMSchemaCollection2)
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %28

8:                                                ; preds = %0
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @IXMLDOMSchemaCollection2_get_validateOnLoad(i32* %9, i64* null)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @E_POINTER, align 4
  %13 = call i32 @EXPECT_HR(i32 %11, i32 %12)
  %14 = load i64, i64* @VARIANT_FALSE, align 8
  store i64 %14, i64* %2, align 8
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @IXMLDOMSchemaCollection2_get_validateOnLoad(i32* %15, i64* %2)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @S_OK, align 4
  %19 = call i32 @EXPECT_HR(i32 %17, i32 %18)
  %20 = load i64, i64* %2, align 8
  %21 = load i64, i64* @VARIANT_TRUE, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %2, align 8
  %25 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @IXMLDOMSchemaCollection2_Release(i32* %26)
  br label %28

28:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32* @create_cache_version(i32, i32*) #1

declare dso_local i32 @IXMLDOMSchemaCollection2_get_validateOnLoad(i32*, i64*) #1

declare dso_local i32 @EXPECT_HR(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @IXMLDOMSchemaCollection2_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

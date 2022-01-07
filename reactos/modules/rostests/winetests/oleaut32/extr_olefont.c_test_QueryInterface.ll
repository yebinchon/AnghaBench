; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olefont.c_test_QueryInterface.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olefont.c_test_QueryInterface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IFont = common dso_local global i32 0, align 4
@E_POINTER = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"OCFI (NULL,..) returns NULL, instead of !NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"IFont_QI expected ref value 3 but instead got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"IFont_QI does return NULL, instead of a ptr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_QueryInterface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_QueryInterface() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %3, align 8
  %5 = call i32 @pOleCreateFontIndirect(i32* null, i32* @IID_IFont, i32** null)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @E_POINTER, align 4
  %8 = call i32 @EXPECT_HR(i32 %6, i32 %7)
  %9 = call i32 @pOleCreateFontIndirect(i32* null, i32* @IID_IFont, i32** %1)
  store i32 %9, i32* %2, align 4
  %10 = load i32*, i32** %1, align 8
  store i32* %10, i32** %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @S_OK, align 4
  %13 = call i32 @EXPECT_HR(i32 %11, i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %1, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @IFont_QueryInterface(i32* %18, i32* @IID_IFont, i32** %1)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @S_OK, align 4
  %22 = call i32 @EXPECT_HR(i32 %20, i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @IFont_AddRef(i32* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %33, label %27

27:                                               ; preds = %0
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 1
  %30 = zext i1 %29 to i32
  %31 = call i64 @broken(i32 %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %27, %0
  %34 = phi i1 [ true, %0 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %4, align 4
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @IFont_Release(i32* %38)
  %40 = load i32*, i32** %1, align 8
  %41 = icmp ne i32* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @IFont_Release(i32* %44)
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @IFont_Release(i32* %46)
  ret void
}

declare dso_local i32 @pOleCreateFontIndirect(i32*, i32*, i32**) #1

declare dso_local i32 @EXPECT_HR(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IFont_QueryInterface(i32*, i32*, i32**) #1

declare dso_local i32 @IFont_AddRef(i32*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @IFont_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

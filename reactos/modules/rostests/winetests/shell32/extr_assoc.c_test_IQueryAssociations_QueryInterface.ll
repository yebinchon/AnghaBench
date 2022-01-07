; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_assoc.c_test_IQueryAssociations_QueryInterface.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_assoc.c_test_IQueryAssociations_QueryInterface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_QueryAssociations = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IQueryAssociations = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"QueryInterface (IQueryAssociations) returned 0x%x\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"QueryInterface (IUnknown) returned 0x%x\0A\00", align 1
@E_POINTER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"got 0x%x (expected E_POINTER)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IQueryAssociations_QueryInterface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IQueryAssociations_QueryInterface() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %6 = bitcast i32** %1 to i8*
  %7 = call i64 @CoCreateInstance(i32* @CLSID_QueryAssociations, i32* null, i32 %5, i32* @IID_IQueryAssociations, i8* %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @S_OK, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = bitcast i32** %2 to i8**
  %16 = call i64 @IQueryAssociations_QueryInterface(i32* %14, i32* @IID_IQueryAssociations, i8** %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @SUCCEEDED(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %0
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @IQueryAssociations_Release(i32* %27)
  br label %29

29:                                               ; preds = %26, %0
  %30 = load i32*, i32** %1, align 8
  %31 = bitcast i32** %3 to i8**
  %32 = call i64 @IQueryAssociations_QueryInterface(i32* %30, i32* @IID_IUnknown, i8** %31)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @S_OK, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %37)
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @SUCCEEDED(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @IUnknown_Release(i32* %43)
  br label %45

45:                                               ; preds = %42, %29
  %46 = load i32*, i32** %1, align 8
  %47 = call i64 @IQueryAssociations_QueryInterface(i32* %46, i32* @IID_IUnknown, i8** null)
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @E_POINTER, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %52)
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @IQueryAssociations_Release(i32* %54)
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IQueryAssociations_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @IQueryAssociations_Release(i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

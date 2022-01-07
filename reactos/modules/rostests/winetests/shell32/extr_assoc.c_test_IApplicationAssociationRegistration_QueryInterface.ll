; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_assoc.c_test_IApplicationAssociationRegistration_QueryInterface.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_assoc.c_test_IApplicationAssociationRegistration_QueryInterface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IApplicationAssociationRegistration = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [68 x i8] c"QueryInterface (IApplicationAssociationRegistration) returned 0x%x\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"QueryInterface (IUnknown) returned 0x%x\0A\00", align 1
@E_POINTER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"got 0x%x (expected E_POINTER)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_IApplicationAssociationRegistration_QueryInterface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IApplicationAssociationRegistration_QueryInterface(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = bitcast i32** %3 to i8**
  %8 = call i64 @IApplicationAssociationRegistration_QueryInterface(i32* %6, i32* @IID_IApplicationAssociationRegistration, i8** %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @SUCCEEDED(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @IApplicationAssociationRegistration_Release(i32* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load i32*, i32** %2, align 8
  %23 = bitcast i32** %4 to i8**
  %24 = call i64 @IApplicationAssociationRegistration_QueryInterface(i32* %22, i32* @IID_IUnknown, i8** %23)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @SUCCEEDED(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @IUnknown_Release(i32* %35)
  br label %37

37:                                               ; preds = %34, %21
  %38 = load i32*, i32** %2, align 8
  %39 = call i64 @IApplicationAssociationRegistration_QueryInterface(i32* %38, i32* @IID_IUnknown, i8** null)
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @E_POINTER, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %44)
  ret void
}

declare dso_local i64 @IApplicationAssociationRegistration_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @IApplicationAssociationRegistration_Release(i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

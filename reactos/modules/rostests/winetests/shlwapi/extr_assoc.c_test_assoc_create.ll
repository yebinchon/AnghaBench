; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_assoc.c_test_assoc_create.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_assoc.c_test_assoc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_NULL = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Unexpected result : %08x\0A\00", align 1
@CLSID_QueryAssociations = common dso_local global i32 0, align 4
@CLASS_E_CLASSNOTAVAILABLE = common dso_local global i64 0, align 8
@E_NOTIMPL = common dso_local global i64 0, align 8
@E_NOINTERFACE = common dso_local global i64 0, align 8
@IID_IQueryAssociations = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@IID_IUnknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_assoc_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_assoc_create() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @IID_NULL, align 4
  %4 = call i64 @pAssocCreate(i32 %3, i32* @IID_NULL, i32* null)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @E_INVALIDARG, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load i32, i32* @CLSID_QueryAssociations, align 4
  %12 = bitcast i32** %2 to i32*
  %13 = call i64 @pAssocCreate(i32 %11, i32* @IID_NULL, i32* %12)
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* @CLASS_E_CLASSNOTAVAILABLE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %0
  %18 = load i64, i64* %1, align 8
  %19 = load i64, i64* @E_NOTIMPL, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %1, align 8
  %23 = load i64, i64* @E_NOINTERFACE, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %21, %17, %0
  %26 = phi i1 [ true, %17 ], [ true, %0 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %1, align 8
  %29 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @IID_NULL, align 4
  %31 = bitcast i32** %2 to i32*
  %32 = call i64 @pAssocCreate(i32 %30, i32* @IID_IQueryAssociations, i32* %31)
  store i64 %32, i64* %1, align 8
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* @CLASS_E_CLASSNOTAVAILABLE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %25
  %37 = load i64, i64* %1, align 8
  %38 = load i64, i64* @E_NOTIMPL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %1, align 8
  %42 = load i64, i64* @E_INVALIDARG, align 8
  %43 = icmp eq i64 %41, %42
  br label %44

44:                                               ; preds = %40, %36, %25
  %45 = phi i1 [ true, %36 ], [ true, %25 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %1, align 8
  %48 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* @CLSID_QueryAssociations, align 4
  %50 = bitcast i32** %2 to i32*
  %51 = call i64 @pAssocCreate(i32 %49, i32* @IID_IQueryAssociations, i32* %50)
  store i64 %51, i64* %1, align 8
  %52 = load i64, i64* %1, align 8
  %53 = load i64, i64* @S_OK, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %44
  %56 = load i64, i64* %1, align 8
  %57 = load i64, i64* @E_NOTIMPL, align 8
  %58 = icmp eq i64 %56, %57
  br label %59

59:                                               ; preds = %55, %44
  %60 = phi i1 [ true, %44 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %1, align 8
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %62)
  %64 = load i64, i64* %1, align 8
  %65 = load i64, i64* @S_OK, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @IQueryAssociations_Release(i32* %68)
  br label %70

70:                                               ; preds = %67, %59
  %71 = load i32, i32* @CLSID_QueryAssociations, align 4
  %72 = bitcast i32** %2 to i32*
  %73 = call i64 @pAssocCreate(i32 %71, i32* @IID_IUnknown, i32* %72)
  store i64 %73, i64* %1, align 8
  %74 = load i64, i64* %1, align 8
  %75 = load i64, i64* @S_OK, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %70
  %78 = load i64, i64* %1, align 8
  %79 = load i64, i64* @E_NOTIMPL, align 8
  %80 = icmp eq i64 %78, %79
  br label %81

81:                                               ; preds = %77, %70
  %82 = phi i1 [ true, %70 ], [ %80, %77 ]
  %83 = zext i1 %82 to i32
  %84 = load i64, i64* %1, align 8
  %85 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %84)
  %86 = load i64, i64* %1, align 8
  %87 = load i64, i64* @S_OK, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i32*, i32** %2, align 8
  %91 = call i32 @IQueryAssociations_Release(i32* %90)
  br label %92

92:                                               ; preds = %89, %81
  ret void
}

declare dso_local i64 @pAssocCreate(i32, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @IQueryAssociations_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

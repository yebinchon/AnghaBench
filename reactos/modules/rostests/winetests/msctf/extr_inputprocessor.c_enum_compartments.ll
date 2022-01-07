; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_enum_compartments.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_enum_compartments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@CP_ACP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"found %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Did not find compartment\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Found compartment that should be absent\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64)* @enum_compartments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enum_compartments(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [50 x i32], align 16
  %13 = alloca [50 x i32], align 16
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @ITfCompartmentMgr_EnumCompartments(i32* %16, i32** %9)
  %18 = call i64 @SUCCEEDED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %54, %20
  %22 = load i32*, i32** %9, align 8
  %23 = call i64 @IEnumGUID_Next(i32* %22, i32 1, i32* %11, i32* %10)
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %21
  %27 = getelementptr inbounds [50 x i32], [50 x i32]* %12, i64 0, i64 0
  %28 = getelementptr inbounds [50 x i32], [50 x i32]* %12, i64 0, i64 0
  %29 = call i32 @ARRAY_SIZE(i32* %28)
  %30 = call i32 @StringFromGUID2(i32* %11, i32* %27, i32 %29)
  %31 = load i32, i32* @CP_ACP, align 4
  %32 = getelementptr inbounds [50 x i32], [50 x i32]* %12, i64 0, i64 0
  %33 = getelementptr inbounds [50 x i32], [50 x i32]* %13, i64 0, i64 0
  %34 = call i32 @WideCharToMultiByte(i32 %31, i32 0, i32* %32, i32 -1, i32* %33, i32 200, i32 0, i32 0)
  %35 = getelementptr inbounds [50 x i32], [50 x i32]* %13, i64 0, i64 0
  %36 = call i32 @trace(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %35)
  %37 = load i64, i64* %5, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %26
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @IsEqualGUID(i64 %40, i32* %11)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %39, %26
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i64, i64* %6, align 8
  %50 = call i64 @IsEqualGUID(i64 %49, i32* %11)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %52, %48, %45
  br label %21

55:                                               ; preds = %21
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @IEnumGUID_Release(i32* %56)
  br label %58

58:                                               ; preds = %55, %3
  %59 = load i64, i64* %5, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i64, i64* %6, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %67, %64
  ret void
}

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @ITfCompartmentMgr_EnumCompartments(i32*, i32**) #1

declare dso_local i64 @IEnumGUID_Next(i32*, i32, i32*, i32*) #1

declare dso_local i32 @StringFromGUID2(i32*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @trace(i8*, i32*) #1

declare dso_local i64 @IsEqualGUID(i64, i32*) #1

declare dso_local i32 @IEnumGUID_Release(i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

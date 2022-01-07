; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_propstore.c_test_getat.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_propstore.c_test_getat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Failed with %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Propcount %d should be greater than zero\0A\00", align 1
@DEVPKEY_Device_FriendlyName = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DEVPKEY_Device_DeviceDesc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"DEVPKEY_Device_FriendlyName not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"DEVPKEY_Device_DeviceDesc not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_getat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getat(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [128 x i8], align 16
  store i32* %0, i32** %2, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %8, align 4
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 127
  store i8 0, i8* %12, align 1
  %13 = load i32*, i32** %2, align 8
  %14 = call i64 @IPropertyStore_GetCount(i32* %13, i64* %4)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %3, align 8
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i64, i64* %4, align 8
  %22 = icmp sgt i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %4, align 8
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  store i64 0, i64* %5, align 8
  br label %26

26:                                               ; preds = %54, %1
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %26
  %31 = load i32*, i32** %2, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @IPropertyStore_GetAt(i32* %31, i64 %32, i32* %6)
  store i64 %33, i64* %3, align 8
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %3, align 8
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @DEVPKEY_Device_FriendlyName, align 4
  %42 = call i64 @IsEqualPropertyKey(i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = load i32, i32* @TRUE, align 4
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %44, %30
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @DEVPKEY_Device_DeviceDesc, align 4
  %49 = call i64 @IsEqualPropertyKey(i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %51, %46
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %5, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %5, align 8
  br label %26

57:                                               ; preds = %26
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i64 @broken(i32 %64)
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %60, %57
  %68 = phi i1 [ true, %57 ], [ %66, %60 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* %8, align 4
  %72 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i64 @IPropertyStore_GetCount(i32*, i64*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IPropertyStore_GetAt(i32*, i64, i32*) #1

declare dso_local i64 @IsEqualPropertyKey(i32, i32) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

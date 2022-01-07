; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_safearray.c_test_VectorCreateLockDestroy.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_safearray.c_test_VectorCreateLockDestroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VT_UI1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"SACV with 0 elements failed.\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"SafeArrayDestroy failed with hres %x\0A\00", align 1
@VT_EMPTY = common dso_local global i64 0, align 8
@VT_CLSID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"VARTYPE %d (@%d elements) failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"VARTYPE %d (@%d elements) succeeded!\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"VARTYPE %d (@%d elements) cDims %d, not 1\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"VARTYPE %d (@%d elements) cbElements is %d, expected %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Lock VARTYPE %d (@%d elements) failed; hres 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"Unlock VARTYPE %d (@%d elements) failed; hres 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"destroy VARTYPE %d (@%d elements) failed; hres 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_VectorCreateLockDestroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_VectorCreateLockDestroy() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = load i64, i64* @VT_UI1, align 8
  %7 = call i32* @pSafeArrayCreateVector(i64 %6, i32 0, i32 0)
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @SafeArrayDestroy(i32* %12)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @S_OK, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %2, align 4
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  store i32 1, i32* %4, align 4
  br label %20

20:                                               ; preds = %115, %0
  %21 = load i32, i32* %4, align 4
  %22 = icmp sle i32 %21, 101
  br i1 %22, label %23, label %118

23:                                               ; preds = %20
  %24 = load i64, i64* @VT_EMPTY, align 8
  store i64 %24, i64* %3, align 8
  br label %25

25:                                               ; preds = %111, %23
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @VT_CLSID, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %114

29:                                               ; preds = %25
  %30 = load i64, i64* %3, align 8
  %31 = call i64 @SAFEARRAY_GetVTSize(i64 %30)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32* @pSafeArrayCreateVector(i64 %32, i32 0, i32 %33)
  store i32* %34, i32** %1, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = load i32*, i32** %1, align 8
  %39 = icmp ne i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %41, i32 %42)
  br label %51

44:                                               ; preds = %29
  %45 = load i32*, i32** %1, align 8
  %46 = icmp eq i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %48, i32 %49)
  br label %51

51:                                               ; preds = %44, %37
  %52 = load i32*, i32** %1, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %110

54:                                               ; preds = %51
  %55 = load i32*, i32** %1, align 8
  %56 = call i32 @SafeArrayGetDim(i32* %55)
  %57 = icmp eq i32 %56, 1
  %58 = zext i1 %57 to i32
  %59 = load i64, i64* %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32*, i32** %1, align 8
  %62 = call i32 @SafeArrayGetDim(i32* %61)
  %63 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 %59, i32 %60, i32 %62)
  %64 = load i32*, i32** %1, align 8
  %65 = call i64 @SafeArrayGetElemsize(i32* %64)
  %66 = load i64, i64* %5, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i64, i64* %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load i32*, i32** %1, align 8
  %72 = call i64 @SafeArrayGetElemsize(i32* %71)
  %73 = load i64, i64* %5, align 8
  %74 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i64 %69, i32 %70, i64 %72, i64 %73)
  %75 = load i32*, i32** %1, align 8
  %76 = call i32 @SafeArrayLock(i32* %75)
  store i32 %76, i32* %2, align 4
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* @S_OK, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i64, i64* %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %2, align 4
  %84 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i64 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %2, align 4
  %86 = load i32, i32* @S_OK, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %54
  %89 = load i32*, i32** %1, align 8
  %90 = call i32 @SafeArrayUnlock(i32* %89)
  store i32 %90, i32* %2, align 4
  %91 = load i32, i32* %2, align 4
  %92 = load i32, i32* @S_OK, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i64, i64* %3, align 8
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* %2, align 4
  %98 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i64 %95, i32 %96, i32 %97)
  %99 = load i32*, i32** %1, align 8
  %100 = call i32 @SafeArrayDestroy(i32* %99)
  store i32 %100, i32* %2, align 4
  %101 = load i32, i32* %2, align 4
  %102 = load i32, i32* @S_OK, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = load i64, i64* %3, align 8
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* %2, align 4
  %108 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i64 %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %88, %54
  br label %110

110:                                              ; preds = %109, %51
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %3, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %3, align 8
  br label %25

114:                                              ; preds = %25
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, 10
  store i32 %117, i32* %4, align 4
  br label %20

118:                                              ; preds = %20
  ret void
}

declare dso_local i32* @pSafeArrayCreateVector(i64, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SafeArrayDestroy(i32*) #1

declare dso_local i64 @SAFEARRAY_GetVTSize(i64) #1

declare dso_local i32 @SafeArrayGetDim(i32*) #1

declare dso_local i64 @SafeArrayGetElemsize(i32*) #1

declare dso_local i32 @SafeArrayLock(i32*) #1

declare dso_local i32 @SafeArrayUnlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

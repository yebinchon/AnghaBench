; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_data.c_get_module_version.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_data.c_get_module_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@VS_VERSION_INFO = common dso_local global i32 0, align 4
@RT_VERSION = common dso_local global i32 0, align 4
@LMEM_FIXED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i32] [i32 92, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_module_version(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @VS_VERSION_INFO, align 4
  %13 = call i32 @MAKEINTRESOURCE(i32 %12)
  %14 = load i32, i32* @RT_VERSION, align 4
  %15 = call i64 @FindResource(i32 %11, i32 %13, i32 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i32, i32* %2, align 4
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @SizeofResource(i32 %16, i64 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %71

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %71

24:                                               ; preds = %21
  %25 = load i32, i32* %2, align 4
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @LoadResource(i32 %25, i64 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @LockResource(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @LMEM_FIXED, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @LocalAlloc(i32 %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @CopyMemory(i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @FreeResource(i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = bitcast %struct.TYPE_2__** %6 to i32*
  %41 = call i64 @VerQueryValueW(i32 %39, i8* bitcast ([2 x i32]* @.str to i8*), i32* %40, i32* %7)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %24
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @HIWORD(i32 %46)
  %48 = shl i32 %47, 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @LOWORD(i32 %51)
  %53 = or i32 %48, %52
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %43
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @HIWORD(i32 %59)
  %61 = shl i32 %60, 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @LOWORD(i32 %64)
  %66 = or i32 %61, %65
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %56, %43
  br label %68

68:                                               ; preds = %67, %24
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @LocalFree(i32 %69)
  br label %71

71:                                               ; preds = %68, %21, %1
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @FindResource(i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCE(i32) #1

declare dso_local i32 @SizeofResource(i32, i64) #1

declare dso_local i32 @LoadResource(i32, i64) #1

declare dso_local i32 @LockResource(i32) #1

declare dso_local i32 @LocalAlloc(i32, i32) #1

declare dso_local i32 @CopyMemory(i32, i32, i32) #1

declare dso_local i32 @FreeResource(i32) #1

declare dso_local i64 @VerQueryValueW(i32, i8*, i32*, i32*) #1

declare dso_local i32 @HIWORD(i32) #1

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @LocalFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

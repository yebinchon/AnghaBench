; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_to_safearray.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_to_safearray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array = type { i32, i64 }

@VT_BSTR = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @to_safearray(%struct.array* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.array*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.array* %0, %struct.array** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @get_type_size(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @to_vartype(i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load %struct.array*, %struct.array** %4, align 8
  %17 = icmp ne %struct.array* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.array*, %struct.array** %4, align 8
  %21 = getelementptr inbounds %struct.array, %struct.array* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32* @SafeArrayCreateVector(i64 %19, i32 0, i32 %22)
  store i32* %23, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18, %2
  store i32* null, i32** %3, align 8
  br label %83

26:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %78, %26
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.array*, %struct.array** %4, align 8
  %30 = getelementptr inbounds %struct.array, %struct.array* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %81

33:                                               ; preds = %27
  %34 = load %struct.array*, %struct.array** %4, align 8
  %35 = getelementptr inbounds %struct.array, %struct.array* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %37, i64 %41
  store i8* %42, i8** %10, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @VT_BSTR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %33
  %47 = load i8*, i8** %10, align 8
  %48 = bitcast i8* %47 to i32**
  %49 = load i32*, i32** %48, align 8
  %50 = call i8* @SysAllocString(i32* %49)
  store i8* %50, i8** %11, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load i32*, i32** %6, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = call i64 @SafeArrayPutElement(i32* %54, i32* %9, i8* %55)
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %53, %46
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @SysFreeString(i8* %60)
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @SafeArrayDestroy(i32* %62)
  store i32* null, i32** %3, align 8
  br label %83

64:                                               ; preds = %53
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @SysFreeString(i8* %65)
  br label %77

67:                                               ; preds = %33
  %68 = load i32*, i32** %6, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = call i64 @SafeArrayPutElement(i32* %68, i32* %9, i8* %69)
  %71 = load i64, i64* @S_OK, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @SafeArrayDestroy(i32* %74)
  store i32* null, i32** %3, align 8
  br label %83

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %64
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %27

81:                                               ; preds = %27
  %82 = load i32*, i32** %6, align 8
  store i32* %82, i32** %3, align 8
  br label %83

83:                                               ; preds = %81, %73, %59, %25
  %84 = load i32*, i32** %3, align 8
  ret i32* %84
}

declare dso_local i32 @get_type_size(i32) #1

declare dso_local i64 @to_vartype(i32) #1

declare dso_local i32* @SafeArrayCreateVector(i64, i32, i32) #1

declare dso_local i8* @SysAllocString(i32*) #1

declare dso_local i64 @SafeArrayPutElement(i32*, i32*, i8*) #1

declare dso_local i32 @SysFreeString(i8*) #1

declare dso_local i32 @SafeArrayDestroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

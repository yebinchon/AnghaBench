; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_safearray.c_SAFEARRAY_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_safearray.c_SAFEARRAY_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }

@FADF_BSTR = common dso_local global i32 0, align 4
@FADF_UNKNOWN = common dso_local global i32 0, align 4
@FADF_DISPATCH = common dso_local global i32 0, align 4
@FADF_VARIANT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32, i32, i32*, i64)* @SAFEARRAY_Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @SAFEARRAY_Create(i32 %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %95

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @SafeArrayAllocDescriptorEx(i32 %16, i32 %17, %struct.TYPE_6__** %10)
  %19 = call i64 @SUCCEEDED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %93

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %47 [
    i32 131, label %23
    i32 129, label %29
    i32 130, label %35
    i32 128, label %41
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* @FADF_BSTR, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %47

29:                                               ; preds = %21
  %30 = load i32, i32* @FADF_UNKNOWN, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %47

35:                                               ; preds = %21
  %36 = load i32, i32* @FADF_DISPATCH, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %47

41:                                               ; preds = %21
  %42 = load i32, i32* @FADF_VARIANT, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %21, %41, %35, %29, %23
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %69, %47
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %48
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = zext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = getelementptr inbounds i32, i32* %62, i64 -1
  %64 = load i32, i32* %11, align 4
  %65 = zext i32 %64 to i64
  %66 = sub i64 0, %65
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = call i32 @memcpy(i64 %58, i32* %67, i32 4)
  br label %69

69:                                               ; preds = %52
  %70 = load i32, i32* %11, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %48

72:                                               ; preds = %48
  %73 = load i64, i64* %9, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i64, i64* %9, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %75, %72
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %86 = call i32 @SafeArrayAllocData(%struct.TYPE_6__* %85)
  %87 = call i64 @FAILED(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84, %79
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %91 = call i32 @SafeArrayDestroyDescriptor(%struct.TYPE_6__* %90)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  br label %92

92:                                               ; preds = %89, %84
  br label %93

93:                                               ; preds = %92, %15
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %94, %struct.TYPE_6__** %5, align 8
  br label %95

95:                                               ; preds = %93, %14
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %96
}

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @SafeArrayAllocDescriptorEx(i32, i32, %struct.TYPE_6__**) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @SafeArrayAllocData(%struct.TYPE_6__*) #1

declare dso_local i32 @SafeArrayDestroyDescriptor(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

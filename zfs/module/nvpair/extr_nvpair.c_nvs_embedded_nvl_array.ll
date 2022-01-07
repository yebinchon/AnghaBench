; ModuleID = '/home/carl/AnghaBench/zfs/module/nvpair/extr_nvpair.c_nvs_embedded_nvl_array.c'
source_filename = "/home/carl/AnghaBench/zfs/module/nvpair/extr_nvpair.c_nvs_embedded_nvl_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i64*)* @nvs_embedded_nvl_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvs_embedded_nvl_array(%struct.TYPE_5__* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @NVP_NELEM(i32* %15)
  store i64 %16, i64* %8, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32** @EMBEDDED_NVL_ARRAY(i32* %17)
  store i32** %18, i32*** %9, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %112 [
    i32 129, label %22
    i32 130, label %44
    i32 128, label %80
  ]

22:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %40, %22
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %8, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = load i32**, i32*** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @nvs_embedded(%struct.TYPE_5__* %29, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @EFAULT, align 4
  store i32 %38, i32* %4, align 4
  br label %115

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %23

43:                                               ; preds = %23
  br label %114

44:                                               ; preds = %3
  %45 = load i64, i64* %8, align 8
  %46 = mul i64 %45, 8
  store i64 %46, i64* %11, align 8
  %47 = load i32**, i32*** %9, align 8
  %48 = ptrtoint i32** %47 to i64
  %49 = load i64, i64* %11, align 8
  %50 = add i64 %48, %49
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %12, align 8
  %52 = load i32**, i32*** %9, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @bzero(i32** %52, i64 %53)
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %76, %44
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %8, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %55
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @nvs_embedded(%struct.TYPE_5__* %61, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @nvpair_free(i32* %66)
  %68 = load i32, i32* @EFAULT, align 4
  store i32 %68, i32* %4, align 4
  br label %115

69:                                               ; preds = %60
  %70 = load i32*, i32** %12, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %12, align 8
  %72 = load i32**, i32*** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  store i32* %70, i32** %75, align 8
  br label %76

76:                                               ; preds = %69
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %55

79:                                               ; preds = %55
  br label %114

80:                                               ; preds = %3
  store i64 0, i64* %13, align 8
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %106, %80
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %8, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %109

86:                                               ; preds = %81
  store i64 0, i64* %14, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = load i32**, i32*** %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @nvs_operation(%struct.TYPE_5__* %87, i32* %92, i64* %14)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i32, i32* @EINVAL, align 4
  store i32 %96, i32* %4, align 4
  br label %115

97:                                               ; preds = %86
  %98 = load i64, i64* %14, align 8
  %99 = load i64, i64* %13, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* %13, align 8
  %101 = load i64, i64* @INT32_MAX, align 8
  %102 = icmp ugt i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* @EINVAL, align 4
  store i32 %104, i32* %4, align 4
  br label %115

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %81

109:                                              ; preds = %81
  %110 = load i64, i64* %13, align 8
  %111 = load i64*, i64** %7, align 8
  store i64 %110, i64* %111, align 8
  br label %114

112:                                              ; preds = %3
  %113 = load i32, i32* @EINVAL, align 4
  store i32 %113, i32* %4, align 4
  br label %115

114:                                              ; preds = %109, %79, %43
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %114, %112, %103, %95, %65, %37
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i64 @NVP_NELEM(i32*) #1

declare dso_local i32** @EMBEDDED_NVL_ARRAY(i32*) #1

declare dso_local i32 @nvs_embedded(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @bzero(i32**, i64) #1

declare dso_local i32 @nvpair_free(i32*) #1

declare dso_local i32 @nvs_operation(%struct.TYPE_5__*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

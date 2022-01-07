; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_rw.c_OffsetToCluster.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_rw.c_OffsetToCluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"OffsetToCluster is called with FirstCluster = 0!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OffsetToCluster(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = call i32 @DbgPrint(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @FALSE, align 4
  %20 = call i32 @ASSERT(i32 %19)
  br label %21

21:                                               ; preds = %17, %5
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %29, %33
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %34, %38
  %40 = add nsw i32 %28, %39
  %41 = load i32*, i32** %10, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %42, i32* %6, align 4
  br label %101

43:                                               ; preds = %21
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %12, align 4
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %43
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %67, %47
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %50, %54
  %56 = icmp slt i32 %49, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %48
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @GetNextClusterExtend(%struct.TYPE_7__* %58, i32 %59, i32* %12)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @NT_SUCCESS(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %6, align 4
  br label %101

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %48

70:                                               ; preds = %48
  %71 = load i32, i32* %12, align 4
  %72 = load i32*, i32** %10, align 8
  store i32 %71, i32* %72, align 4
  br label %99

73:                                               ; preds = %43
  store i32 0, i32* %13, align 4
  br label %74

74:                                               ; preds = %93, %73
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %76, %80
  %82 = icmp slt i32 %75, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %74
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @GetNextCluster(%struct.TYPE_7__* %84, i32 %85, i32* %12)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @NT_SUCCESS(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %6, align 4
  br label %101

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  br label %74

96:                                               ; preds = %74
  %97 = load i32, i32* %12, align 4
  %98 = load i32*, i32** %10, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %70
  %100 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %99, %90, %64, %24
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @DbgPrint(i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @GetNextClusterExtend(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @GetNextCluster(%struct.TYPE_7__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

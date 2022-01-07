; ModuleID = '/home/carl/AnghaBench/redis/src/extr_evict.c_getMaxmemoryState.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_evict.c_getMaxmemoryState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@C_OK = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getMaxmemoryState(i64* %0, i64* %1, i64* %2, float* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store float* %3, float** %9, align 8
  %15 = call i64 (...) @zmalloc_used_memory()
  store i64 %15, i64* %10, align 8
  %16 = load i64*, i64** %6, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i64, i64* %10, align 8
  %20 = load i64*, i64** %6, align 8
  store i64 %19, i64* %20, align 8
  br label %21

21:                                               ; preds = %18, %4
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %27 = icmp ule i64 %25, %26
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ true, %21 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load float*, float** %9, align 8
  %35 = icmp ne float* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @C_OK, align 4
  store i32 %37, i32* %5, align 4
  br label %94

38:                                               ; preds = %33, %28
  %39 = load i64, i64* %10, align 8
  store i64 %39, i64* %11, align 8
  %40 = call i64 (...) @freeMemoryGetNotCountedMemory()
  store i64 %40, i64* %14, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %14, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %14, align 8
  %47 = sub i64 %45, %46
  br label %49

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi i64 [ %47, %44 ], [ 0, %48 ]
  store i64 %50, i64* %11, align 8
  %51 = load float*, float** %9, align 8
  %52 = icmp ne float* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = load float*, float** %9, align 8
  store float 0.000000e+00, float* %57, align 4
  br label %65

58:                                               ; preds = %53
  %59 = load i64, i64* %11, align 8
  %60 = uitofp i64 %59 to float
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %62 = uitofp i64 %61 to float
  %63 = fdiv float %60, %62
  %64 = load float*, float** %9, align 8
  store float %63, float* %64, align 4
  br label %65

65:                                               ; preds = %58, %56
  br label %66

66:                                               ; preds = %65, %49
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @C_OK, align 4
  store i32 %70, i32* %5, align 4
  br label %94

71:                                               ; preds = %66
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %74 = icmp ule i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @C_OK, align 4
  store i32 %76, i32* %5, align 4
  br label %94

77:                                               ; preds = %71
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %80 = sub i64 %78, %79
  store i64 %80, i64* %12, align 8
  %81 = load i64*, i64** %7, align 8
  %82 = icmp ne i64* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i64, i64* %11, align 8
  %85 = load i64*, i64** %7, align 8
  store i64 %84, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %77
  %87 = load i64*, i64** %8, align 8
  %88 = icmp ne i64* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8
  %91 = load i64*, i64** %8, align 8
  store i64 %90, i64* %91, align 8
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* @C_ERR, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %92, %75, %69, %36
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i64 @zmalloc_used_memory(...) #1

declare dso_local i64 @freeMemoryGetNotCountedMemory(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_timsort.h_libxml_domnode_tim_sort.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_timsort.h_libxml_domnode_tim_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i64 }

@TIM_SORT_STACK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TIM_SORT(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load i32, i32* @TIM_SORT_STACK_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ule i64 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %12, align 4
  br label %78

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = icmp ult i64 %21, 64
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32*, i32** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @BINARY_INSERTION_SORT(i32* %24, i64 %25)
  store i32 1, i32* %12, align 4
  br label %78

27:                                               ; preds = %20
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @compute_minrun(i64 %28)
  store i64 %29, i64* %5, align 8
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %7, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @PUSH_NEXT(i32* %34, i64 %35, %struct.TYPE_4__* %36, i64 %37, i32* %16, i64* %10, i64* %11)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %27
  store i32 1, i32* %12, align 4
  br label %78

41:                                               ; preds = %27
  %42 = load i32*, i32** %3, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @PUSH_NEXT(i32* %42, i64 %43, %struct.TYPE_4__* %44, i64 %45, i32* %16, i64* %10, i64* %11)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  store i32 1, i32* %12, align 4
  br label %78

49:                                               ; preds = %41
  %50 = load i32*, i32** %3, align 8
  %51 = load i64, i64* %4, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @PUSH_NEXT(i32* %50, i64 %51, %struct.TYPE_4__* %52, i64 %53, i32* %16, i64* %10, i64* %11)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  store i32 1, i32* %12, align 4
  br label %78

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %77, %63, %57
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @CHECK_INVARIANT(i32* %16, i64 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = load i32*, i32** %3, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %67 = load i64, i64* %4, align 8
  %68 = call i64 @TIM_SORT_COLLAPSE(i32* %64, i32* %16, i64 %65, %struct.TYPE_4__* %66, i64 %67)
  store i64 %68, i64* %10, align 8
  br label %58

69:                                               ; preds = %59
  %70 = load i32*, i32** %3, align 8
  %71 = load i64, i64* %4, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @PUSH_NEXT(i32* %70, i64 %71, %struct.TYPE_4__* %72, i64 %73, i32* %16, i64* %10, i64* %11)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %69
  store i32 1, i32* %12, align 4
  br label %78

77:                                               ; preds = %69
  br label %58

78:                                               ; preds = %76, %56, %48, %40, %23, %19
  %79 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %79)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BINARY_INSERTION_SORT(i32*, i64) #2

declare dso_local i64 @compute_minrun(i64) #2

declare dso_local i32 @PUSH_NEXT(i32*, i64, %struct.TYPE_4__*, i64, i32*, i64*, i64*) #2

declare dso_local i32 @CHECK_INVARIANT(i32*, i64) #2

declare dso_local i64 @TIM_SORT_COLLAPSE(i32*, i32*, i64, %struct.TYPE_4__*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

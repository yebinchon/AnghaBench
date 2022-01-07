; ModuleID = '/home/carl/AnghaBench/redis/utils/hashtable/extr_rehashing.c_stressGetKeys.c'
source_filename = "/home/carl/AnghaBench/redis/utils/hashtable/extr_rehashing.c_stressGetKeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sortPointers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Requested, returned, duplicated: %d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stressGetKeys(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @dictSize(i32* %15)
  %17 = sext i32 %16 to i64
  %18 = mul i64 8, %17
  %19 = trunc i64 %18 to i32
  %20 = call i32** @zmalloc(i32 %19)
  store i32** %20, i32*** %10, align 8
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %88, %4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %91

25:                                               ; preds = %21
  %26 = call i32 (...) @rand()
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @dictSize(i32* %27)
  %29 = add nsw i32 %28, 1
  %30 = srem i32 %26, %29
  store i32 %30, i32* %11, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32**, i32*** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @dictGetSomeKeys(i32* %31, i32** %32, i32 %33)
  store i32 %34, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %35 = load i32**, i32*** %10, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @sortPointers, align 4
  %38 = call i32 @qsort(i32** %35, i32 %36, i32 8, i32 %37)
  %39 = load i32, i32* %12, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %68

41:                                               ; preds = %25
  store i32 0, i32* %14, align 4
  br label %42

42:                                               ; preds = %64, %41
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %12, align 4
  %45 = sub nsw i32 %44, 1
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %42
  %48 = load i32**, i32*** %10, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i32**, i32*** %10, align 8
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %53, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %52, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %47
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %60, %47
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %14, align 4
  br label %42

67:                                               ; preds = %42
  br label %68

68:                                               ; preds = %67, %25
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i32, i32* %13, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %87

79:                                               ; preds = %72, %68
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %79, %75
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %21

91:                                               ; preds = %21
  %92 = load i32**, i32*** %10, align 8
  %93 = call i32 @zfree(i32** %92)
  ret void
}

declare dso_local i32** @zmalloc(i32) #1

declare dso_local i32 @dictSize(i32*) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @dictGetSomeKeys(i32*, i32**, i32) #1

declare dso_local i32 @qsort(i32**, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @zfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

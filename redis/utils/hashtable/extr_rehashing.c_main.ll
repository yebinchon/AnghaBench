; ModuleID = '/home/carl/AnghaBench/redis/utils/hashtable/extr_rehashing.c_main.c'
source_filename = "/home/carl/AnghaBench/redis/utils/hashtable/extr_rehashing.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dictTypeTest = common dso_local global i32 0, align 4
@MAX1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"Size: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Stress testing dictGetSomeKeys\0A\00", align 1
@MAX2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"dictGetSomeKey, %d perfect runs, %d approximated runs\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"TEST PASSED!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = call i32* @dictCreate(i32* @dictTypeTest, i32* null)
  store i32* %6, i32** %2, align 8
  %7 = call i32 @time(i32* null)
  %8 = call i32 @srand(i32 %7)
  store i64 0, i64* %3, align 8
  br label %9

9:                                                ; preds = %20, %0
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @MAX1, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load i32*, i32** %2, align 8
  %15 = load i64, i64* %3, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @dictAdd(i32* %14, i8* %16, i32* null)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @show(i32* %18)
  br label %20

20:                                               ; preds = %13
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %3, align 8
  br label %9

23:                                               ; preds = %9
  %24 = load i32*, i32** %2, align 8
  %25 = call i64 @dictSize(i32* %24)
  %26 = trunc i64 %25 to i32
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i64 0, i64* %3, align 8
  br label %28

28:                                               ; preds = %41, %23
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @MAX1, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i32*, i32** %2, align 8
  %34 = load i64, i64* %3, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @dictDelete(i32* %33, i8* %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @dictResize(i32* %37)
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @show(i32* %39)
  br label %41

41:                                               ; preds = %32
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %3, align 8
  br label %28

44:                                               ; preds = %28
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @dictRelease(i32* %45)
  %47 = call i32* @dictCreate(i32* @dictTypeTest, i32* null)
  store i32* %47, i32** %2, align 8
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i64 0, i64* %3, align 8
  br label %49

49:                                               ; preds = %60, %44
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* @MAX2, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load i32*, i32** %2, align 8
  %55 = load i64, i64* %3, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @dictAdd(i32* %54, i8* %56, i32* null)
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @stressGetKeys(i32* %58, i32 100, i32* %4, i32* %5)
  br label %60

60:                                               ; preds = %53
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %3, align 8
  br label %49

63:                                               ; preds = %49
  store i64 0, i64* %3, align 8
  br label %64

64:                                               ; preds = %77, %63
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* @MAX2, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load i32*, i32** %2, align 8
  %70 = load i64, i64* %3, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @dictDelete(i32* %69, i8* %71)
  %73 = load i32*, i32** %2, align 8
  %74 = call i32 @dictResize(i32* %73)
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @stressGetKeys(i32* %75, i32 100, i32* %4, i32* %5)
  br label %77

77:                                               ; preds = %68
  %78 = load i64, i64* %3, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %3, align 8
  br label %64

80:                                               ; preds = %64
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i32*, i32** %2, align 8
  %85 = call i32 @dictRelease(i32* %84)
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32* @dictCreate(i32*, i32*) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @dictAdd(i32*, i8*, i32*) #1

declare dso_local i32 @show(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @dictSize(i32*) #1

declare dso_local i32 @dictDelete(i32*, i8*) #1

declare dso_local i32 @dictResize(i32*) #1

declare dso_local i32 @dictRelease(i32*) #1

declare dso_local i32 @stressGetKeys(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

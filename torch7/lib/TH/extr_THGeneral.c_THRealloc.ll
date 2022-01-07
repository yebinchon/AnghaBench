; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/extr_THGeneral.c_THRealloc.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/extr_THGeneral.c_THRealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c"$ Torch: invalid memory size -- maybe an overflow?\00", align 1
@torchGCData = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"$ Torch: not enough memory: you tried to reallocate %dGB. Buy new RAM!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @THRealloc(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call i8* @THAlloc(i32 %11)
  store i8* %12, i8** %3, align 8
  br label %54

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @THFree(i8* %17)
  store i8* null, i8** %3, align 8
  br label %54

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 (i8*, ...) @THError(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @getAllocSize(i8* %25)
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i8* @realloc(i8* %28, i32 %29)
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %24
  br i1 true, label %34, label %40

34:                                               ; preds = %33
  %35 = load i32, i32* @torchGCData, align 4
  %36 = call i32 @torchGCFunction(i32 %35)
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i8* @realloc(i8* %37, i32 %38)
  store i8* %39, i8** %7, align 8
  br label %40

40:                                               ; preds = %34, %33, %24
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = sdiv i32 %44, 1073741824
  %46 = call i32 (i8*, ...) @THError(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32, i32* %6, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @getAllocSize(i8* %49)
  %51 = add nsw i32 %48, %50
  %52 = call i32 @THHeapUpdate(i32 %51)
  %53 = load i8*, i8** %7, align 8
  store i8* %53, i8** %3, align 8
  br label %54

54:                                               ; preds = %47, %16, %10
  %55 = load i8*, i8** %3, align 8
  ret i8* %55
}

declare dso_local i8* @THAlloc(i32) #1

declare dso_local i32 @THFree(i8*) #1

declare dso_local i32 @THError(i8*, ...) #1

declare dso_local i32 @getAllocSize(i8*) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @torchGCFunction(i32) #1

declare dso_local i32 @THHeapUpdate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

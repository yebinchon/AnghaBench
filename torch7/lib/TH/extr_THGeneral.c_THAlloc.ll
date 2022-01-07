; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/extr_THGeneral.c_THAlloc.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/extr_THGeneral.c_THAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c"$ Torch: invalid memory size -- maybe an overflow?\00", align 1
@torchGCData = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"$ Torch: not enough memory: you tried to allocate %dGB. Buy new RAM!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @THAlloc(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 (i8*, ...) @THError(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i8* null, i8** %2, align 8
  br label %33

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = call i8* @THAllocInternal(i32 %14)
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  br i1 true, label %19, label %24

19:                                               ; preds = %18
  %20 = load i32, i32* @torchGCData, align 4
  %21 = call i32 @torchGCFunction(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i8* @THAllocInternal(i32 %22)
  store i8* %23, i8** %4, align 8
  br label %24

24:                                               ; preds = %19, %18, %13
  %25 = load i8*, i8** %4, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = sdiv i32 %28, 1073741824
  %30 = call i32 (i8*, ...) @THError(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i8*, i8** %4, align 8
  store i8* %32, i8** %2, align 8
  br label %33

33:                                               ; preds = %31, %12
  %34 = load i8*, i8** %2, align 8
  ret i8* %34
}

declare dso_local i32 @THError(i8*, ...) #1

declare dso_local i8* @THAllocInternal(i32) #1

declare dso_local i32 @torchGCFunction(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

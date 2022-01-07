; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/advapi32/eventlog/extr_EvtLogTest.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/advapi32/eventlog/extr_EvtLogTest.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [91 x i32] [i32 10, i32 69, i32 118, i32 101, i32 110, i32 116, i32 76, i32 111, i32 103, i32 32, i32 65, i32 80, i32 73, i32 32, i32 105, i32 110, i32 116, i32 101, i32 114, i32 97, i32 99, i32 116, i32 105, i32 118, i32 101, i32 32, i32 116, i32 101, i32 115, i32 116, i32 101, i32 114, i32 32, i32 102, i32 111, i32 114, i32 32, i32 82, i32 101, i32 97, i32 99, i32 116, i32 79, i32 83, i32 10, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 10, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [149 x i32] [i32 87, i32 104, i32 97, i32 116, i32 32, i32 100, i32 111, i32 32, i32 121, i32 111, i32 117, i32 32, i32 119, i32 97, i32 110, i32 116, i32 32, i32 116, i32 111, i32 32, i32 100, i32 111, i32 58, i32 10, i32 49, i32 41, i32 32, i32 84, i32 101, i32 115, i32 116, i32 32, i32 101, i32 118, i32 101, i32 110, i32 116, i32 115, i32 32, i32 103, i32 101, i32 110, i32 101, i32 114, i32 97, i32 116, i32 105, i32 111, i32 110, i32 46, i32 10, i32 50, i32 41, i32 32, i32 84, i32 101, i32 115, i32 116, i32 32, i32 99, i32 117, i32 115, i32 116, i32 111, i32 109, i32 105, i32 122, i32 101, i32 100, i32 32, i32 101, i32 118, i32 101, i32 110, i32 116, i32 32, i32 112, i32 114, i32 111, i32 118, i32 105, i32 100, i32 101, i32 114, i32 46, i32 10, i32 10, i32 48, i32 41, i32 32, i32 81, i32 117, i32 105, i32 116, i32 32, i32 116, i32 104, i32 101, i32 32, i32 112, i32 114, i32 111, i32 103, i32 114, i32 97, i32 109, i32 46, i32 10, i32 40, i32 69, i32 110, i32 116, i32 101, i32 114, i32 32, i32 116, i32 104, i32 101, i32 32, i32 114, i32 105, i32 103, i32 104, i32 116, i32 32, i32 110, i32 117, i32 109, i32 98, i32 101, i32 114, i32 44, i32 32, i32 111, i32 114, i32 32, i32 48, i32 32, i32 116, i32 111, i32 32, i32 113, i32 117, i32 105, i32 116, i32 41, i32 58, i32 32, i32 0], align 4
@.str.2 = private unnamed_addr constant [4 x i32] [i32 37, i32 108, i32 117, i32 0], align 4
@.str.3 = private unnamed_addr constant [3 x i32] [i32 10, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [5 x i32] [i32 10, i32 10, i32 10, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [26 x i32] [i32 80, i32 114, i32 101, i32 115, i32 115, i32 32, i32 97, i32 110, i32 121, i32 32, i32 107, i32 101, i32 121, i32 32, i32 116, i32 111, i32 32, i32 113, i32 117, i32 105, i32 116, i32 46, i32 46, i32 46, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 @wprintf(i8* bitcast ([91 x i32]* @.str to i8*))
  br label %7

7:                                                ; preds = %31, %2
  br label %8

8:                                                ; preds = %21, %7
  %9 = call i32 @wprintf(i8* bitcast ([149 x i32]* @.str.1 to i8*))
  %10 = call i32 @wscanf(i8* bitcast ([4 x i32]* @.str.2 to i8*), i32* %5)
  %11 = call i32 @wprintf(i8* bitcast ([3 x i32]* @.str.3 to i8*))
  br label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 2
  br label %21

21:                                               ; preds = %18, %15, %12
  %22 = phi i1 [ false, %15 ], [ false, %12 ], [ %20, %18 ]
  br i1 %22, label %8, label %23

23:                                               ; preds = %21
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %30 [
    i32 0, label %25
    i32 1, label %26
    i32 2, label %28
  ]

25:                                               ; preds = %23
  br label %33

26:                                               ; preds = %23
  %27 = call i32 (...) @TestEventsGeneration()
  br label %31

28:                                               ; preds = %23
  %29 = call i32 (...) @TestMyEventProvider()
  br label %31

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %28, %26
  %32 = call i32 @wprintf(i8* bitcast ([5 x i32]* @.str.4 to i8*))
  br label %7

33:                                               ; preds = %25
  %34 = call i32 @wprintf(i8* bitcast ([26 x i32]* @.str.5 to i8*))
  %35 = call i32 (...) @_getch()
  ret i32 0
}

declare dso_local i32 @wprintf(i8*) #1

declare dso_local i32 @wscanf(i8*, i32*) #1

declare dso_local i32 @TestEventsGeneration(...) #1

declare dso_local i32 @TestMyEventProvider(...) #1

declare dso_local i32 @_getch(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

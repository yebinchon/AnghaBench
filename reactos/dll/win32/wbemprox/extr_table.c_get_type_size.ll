; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_table.c_get_type_size.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_table.c_get_type_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CIM_FLAG_ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"unhandled type %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_type_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @CIM_FLAG_ARRAY, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 8, i32* %2, align 4
  br label %21

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %17 [
    i32 138, label %11
    i32 133, label %12
    i32 128, label %12
    i32 136, label %13
    i32 131, label %13
    i32 135, label %14
    i32 130, label %14
    i32 134, label %15
    i32 129, label %15
    i32 137, label %16
    i32 132, label %16
  ]

11:                                               ; preds = %9
  store i32 4, i32* %2, align 4
  br label %21

12:                                               ; preds = %9, %9
  store i32 4, i32* %2, align 4
  br label %21

13:                                               ; preds = %9, %9
  store i32 4, i32* %2, align 4
  br label %21

14:                                               ; preds = %9, %9
  store i32 4, i32* %2, align 4
  br label %21

15:                                               ; preds = %9, %9
  store i32 4, i32* %2, align 4
  br label %21

16:                                               ; preds = %9, %9
  store i32 8, i32* %2, align 4
  br label %21

17:                                               ; preds = %9
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %17
  store i32 4, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %16, %15, %14, %13, %12, %11, %8
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

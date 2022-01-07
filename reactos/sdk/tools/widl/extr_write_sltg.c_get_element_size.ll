; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_get_element_size.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_get_element_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pointer_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"get_element_size: unrecognized vt %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @get_element_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_element_size(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @get_type_vt(i32* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %23 [
    i32 146, label %8
    i32 136, label %8
    i32 142, label %9
    i32 132, label %9
    i32 135, label %10
    i32 145, label %10
    i32 154, label %10
    i32 144, label %11
    i32 134, label %11
    i32 138, label %11
    i32 148, label %11
    i32 147, label %11
    i32 137, label %12
    i32 143, label %12
    i32 133, label %12
    i32 152, label %12
    i32 151, label %12
    i32 150, label %13
    i32 139, label %14
    i32 131, label %14
    i32 149, label %14
    i32 153, label %14
    i32 141, label %14
    i32 140, label %14
    i32 128, label %16
    i32 129, label %17
    i32 130, label %22
  ]

8:                                                ; preds = %1, %1
  store i32 1, i32* %2, align 4
  br label %27

9:                                                ; preds = %1, %1
  store i32 4, i32* %2, align 4
  br label %27

10:                                               ; preds = %1, %1, %1
  store i32 2, i32* %2, align 4
  br label %27

11:                                               ; preds = %1, %1, %1, %1, %1
  store i32 4, i32* %2, align 4
  br label %27

12:                                               ; preds = %1, %1, %1, %1, %1
  store i32 8, i32* %2, align 4
  br label %27

13:                                               ; preds = %1
  store i32 16, i32* %2, align 4
  br label %27

14:                                               ; preds = %1, %1, %1, %1, %1, %1
  %15 = load i32, i32* @pointer_size, align 4
  store i32 %15, i32* %2, align 4
  br label %27

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

17:                                               ; preds = %1
  %18 = load i32, i32* @pointer_size, align 4
  %19 = icmp eq i32 %18, 8
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 24, i32 16
  store i32 %21, i32* %2, align 4
  br label %27

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %22, %17, %16, %14, %13, %12, %11, %10, %9, %8
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @get_type_vt(i32*) #1

declare dso_local i32 @error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

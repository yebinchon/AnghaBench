; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_usrmarshal.c_get_type_size.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_usrmarshal.c_get_type_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VT_ARRAY = common dso_local global i32 0, align 4
@VT_BYREF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"unhandled VT %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_type_size(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @VT_ARRAY, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 4, i32* %3, align 4
  br label %35

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @VT_BYREF, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  switch i32 %15, label %32 [
    i32 146, label %16
    i32 138, label %16
    i32 143, label %17
    i32 134, label %17
    i32 142, label %18
    i32 133, label %18
    i32 141, label %19
    i32 132, label %19
    i32 144, label %19
    i32 139, label %20
    i32 130, label %20
    i32 140, label %21
    i32 131, label %21
    i32 137, label %22
    i32 136, label %23
    i32 152, label %24
    i32 145, label %25
    i32 149, label %26
    i32 150, label %27
    i32 148, label %28
    i32 151, label %29
    i32 128, label %30
    i32 129, label %31
    i32 147, label %31
    i32 135, label %31
  ]

16:                                               ; preds = %11, %11
  store i32 0, i32* %3, align 4
  br label %35

17:                                               ; preds = %11, %11
  store i32 4, i32* %3, align 4
  br label %35

18:                                               ; preds = %11, %11
  store i32 4, i32* %3, align 4
  br label %35

19:                                               ; preds = %11, %11, %11
  store i32 4, i32* %3, align 4
  br label %35

20:                                               ; preds = %11, %11
  store i32 4, i32* %3, align 4
  br label %35

21:                                               ; preds = %11, %11
  store i32 4, i32* %3, align 4
  br label %35

22:                                               ; preds = %11
  store i32 4, i32* %3, align 4
  br label %35

23:                                               ; preds = %11
  store i32 4, i32* %3, align 4
  br label %35

24:                                               ; preds = %11
  store i32 4, i32* %3, align 4
  br label %35

25:                                               ; preds = %11
  store i32 4, i32* %3, align 4
  br label %35

26:                                               ; preds = %11
  store i32 4, i32* %3, align 4
  br label %35

27:                                               ; preds = %11
  store i32 4, i32* %3, align 4
  br label %35

28:                                               ; preds = %11
  store i32 4, i32* %3, align 4
  br label %35

29:                                               ; preds = %11
  store i32 4, i32* %3, align 4
  br label %35

30:                                               ; preds = %11
  store i32 4, i32* %3, align 4
  br label %35

31:                                               ; preds = %11, %11, %11
  store i32 0, i32* %3, align 4
  br label %35

32:                                               ; preds = %11
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @FIXME(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %10
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

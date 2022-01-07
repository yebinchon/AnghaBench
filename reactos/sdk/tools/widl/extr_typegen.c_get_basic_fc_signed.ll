; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_get_basic_fc_signed.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_get_basic_fc_signed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FC_SMALL = common dso_local global i8 0, align 1
@FC_SHORT = common dso_local global i8 0, align 1
@FC_LONG = common dso_local global i8 0, align 1
@FC_HYPER = common dso_local global i8 0, align 1
@FC_INT3264 = common dso_local global i8 0, align 1
@FC_BYTE = common dso_local global i8 0, align 1
@FC_CHAR = common dso_local global i8 0, align 1
@FC_WCHAR = common dso_local global i8 0, align 1
@FC_FLOAT = common dso_local global i8 0, align 1
@FC_DOUBLE = common dso_local global i8 0, align 1
@FC_ERROR_STATUS_T = common dso_local global i8 0, align 1
@FC_BIND_PRIMITIVE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32*)* @get_basic_fc_signed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @get_basic_fc_signed(i32* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i32 @type_basic_get_type(i32* %4)
  switch i32 %5, label %36 [
    i32 130, label %6
    i32 134, label %8
    i32 133, label %10
    i32 131, label %12
    i32 135, label %14
    i32 132, label %16
    i32 129, label %18
    i32 142, label %20
    i32 141, label %22
    i32 128, label %24
    i32 136, label %26
    i32 138, label %28
    i32 140, label %30
    i32 139, label %32
    i32 137, label %34
  ]

6:                                                ; preds = %1
  %7 = load i8, i8* @FC_SMALL, align 1
  store i8 %7, i8* %2, align 1
  br label %37

8:                                                ; preds = %1
  %9 = load i8, i8* @FC_SHORT, align 1
  store i8 %9, i8* %2, align 1
  br label %37

10:                                               ; preds = %1
  %11 = load i8, i8* @FC_LONG, align 1
  store i8 %11, i8* %2, align 1
  br label %37

12:                                               ; preds = %1
  %13 = load i8, i8* @FC_HYPER, align 1
  store i8 %13, i8* %2, align 1
  br label %37

14:                                               ; preds = %1
  %15 = load i8, i8* @FC_LONG, align 1
  store i8 %15, i8* %2, align 1
  br label %37

16:                                               ; preds = %1
  %17 = load i8, i8* @FC_INT3264, align 1
  store i8 %17, i8* %2, align 1
  br label %37

18:                                               ; preds = %1
  %19 = load i8, i8* @FC_LONG, align 1
  store i8 %19, i8* %2, align 1
  br label %37

20:                                               ; preds = %1
  %21 = load i8, i8* @FC_BYTE, align 1
  store i8 %21, i8* %2, align 1
  br label %37

22:                                               ; preds = %1
  %23 = load i8, i8* @FC_CHAR, align 1
  store i8 %23, i8* %2, align 1
  br label %37

24:                                               ; preds = %1
  %25 = load i8, i8* @FC_WCHAR, align 1
  store i8 %25, i8* %2, align 1
  br label %37

26:                                               ; preds = %1
  %27 = load i8, i8* @FC_HYPER, align 1
  store i8 %27, i8* %2, align 1
  br label %37

28:                                               ; preds = %1
  %29 = load i8, i8* @FC_FLOAT, align 1
  store i8 %29, i8* %2, align 1
  br label %37

30:                                               ; preds = %1
  %31 = load i8, i8* @FC_DOUBLE, align 1
  store i8 %31, i8* %2, align 1
  br label %37

32:                                               ; preds = %1
  %33 = load i8, i8* @FC_ERROR_STATUS_T, align 1
  store i8 %33, i8* %2, align 1
  br label %37

34:                                               ; preds = %1
  %35 = load i8, i8* @FC_BIND_PRIMITIVE, align 1
  store i8 %35, i8* %2, align 1
  br label %37

36:                                               ; preds = %1
  store i8 0, i8* %2, align 1
  br label %37

37:                                               ; preds = %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6
  %38 = load i8, i8* %2, align 1
  ret i8 %38
}

declare dso_local i32 @type_basic_get_type(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

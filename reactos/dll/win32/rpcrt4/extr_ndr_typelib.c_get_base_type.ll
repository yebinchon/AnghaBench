; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_get_base_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_get_base_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FC_SMALL = common dso_local global i8 0, align 1
@FC_SHORT = common dso_local global i8 0, align 1
@FC_LONG = common dso_local global i8 0, align 1
@FC_HYPER = common dso_local global i8 0, align 1
@FC_USMALL = common dso_local global i8 0, align 1
@FC_USHORT = common dso_local global i8 0, align 1
@FC_ULONG = common dso_local global i8 0, align 1
@FC_FLOAT = common dso_local global i8 0, align 1
@FC_DOUBLE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32)* @get_base_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @get_base_type(i32 %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %23 [
    i32 139, label %5
    i32 143, label %7
    i32 138, label %7
    i32 135, label %9
    i32 141, label %9
    i32 140, label %9
    i32 137, label %9
    i32 136, label %11
    i32 129, label %11
    i32 132, label %13
    i32 131, label %15
    i32 128, label %17
    i32 130, label %17
    i32 134, label %19
    i32 142, label %21
    i32 133, label %21
  ]

5:                                                ; preds = %1
  %6 = load i8, i8* @FC_SMALL, align 1
  store i8 %6, i8* %2, align 1
  br label %24

7:                                                ; preds = %1, %1
  %8 = load i8, i8* @FC_SHORT, align 1
  store i8 %8, i8* %2, align 1
  br label %24

9:                                                ; preds = %1, %1, %1, %1
  %10 = load i8, i8* @FC_LONG, align 1
  store i8 %10, i8* %2, align 1
  br label %24

11:                                               ; preds = %1, %1
  %12 = load i8, i8* @FC_HYPER, align 1
  store i8 %12, i8* %2, align 1
  br label %24

13:                                               ; preds = %1
  %14 = load i8, i8* @FC_USMALL, align 1
  store i8 %14, i8* %2, align 1
  br label %24

15:                                               ; preds = %1
  %16 = load i8, i8* @FC_USHORT, align 1
  store i8 %16, i8* %2, align 1
  br label %24

17:                                               ; preds = %1, %1
  %18 = load i8, i8* @FC_ULONG, align 1
  store i8 %18, i8* %2, align 1
  br label %24

19:                                               ; preds = %1
  %20 = load i8, i8* @FC_FLOAT, align 1
  store i8 %20, i8* %2, align 1
  br label %24

21:                                               ; preds = %1, %1
  %22 = load i8, i8* @FC_DOUBLE, align 1
  store i8 %22, i8* %2, align 1
  br label %24

23:                                               ; preds = %1
  store i8 0, i8* %2, align 1
  br label %24

24:                                               ; preds = %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %25 = load i8, i8* %2, align 1
  ret i8 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_to_cimtype.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_to_cimtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CIM_BOOLEAN = common dso_local global i32 0, align 4
@CIM_STRING = common dso_local global i32 0, align 4
@CIM_SINT8 = common dso_local global i32 0, align 4
@CIM_UINT8 = common dso_local global i32 0, align 4
@CIM_SINT16 = common dso_local global i32 0, align 4
@CIM_UINT16 = common dso_local global i32 0, align 4
@CIM_SINT32 = common dso_local global i32 0, align 4
@CIM_UINT32 = common dso_local global i32 0, align 4
@CIM_SINT64 = common dso_local global i32 0, align 4
@CIM_UINT64 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"unhandled type %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @to_cimtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @to_cimtype(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %25 [
    i32 137, label %5
    i32 136, label %7
    i32 135, label %9
    i32 131, label %11
    i32 134, label %13
    i32 130, label %15
    i32 133, label %17
    i32 129, label %19
    i32 132, label %21
    i32 128, label %23
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @CIM_BOOLEAN, align 4
  store i32 %6, i32* %2, align 4
  br label %29

7:                                                ; preds = %1
  %8 = load i32, i32* @CIM_STRING, align 4
  store i32 %8, i32* %2, align 4
  br label %29

9:                                                ; preds = %1
  %10 = load i32, i32* @CIM_SINT8, align 4
  store i32 %10, i32* %2, align 4
  br label %29

11:                                               ; preds = %1
  %12 = load i32, i32* @CIM_UINT8, align 4
  store i32 %12, i32* %2, align 4
  br label %29

13:                                               ; preds = %1
  %14 = load i32, i32* @CIM_SINT16, align 4
  store i32 %14, i32* %2, align 4
  br label %29

15:                                               ; preds = %1
  %16 = load i32, i32* @CIM_UINT16, align 4
  store i32 %16, i32* %2, align 4
  br label %29

17:                                               ; preds = %1
  %18 = load i32, i32* @CIM_SINT32, align 4
  store i32 %18, i32* %2, align 4
  br label %29

19:                                               ; preds = %1
  %20 = load i32, i32* @CIM_UINT32, align 4
  store i32 %20, i32* %2, align 4
  br label %29

21:                                               ; preds = %1
  %22 = load i32, i32* @CIM_SINT64, align 4
  store i32 %22, i32* %2, align 4
  br label %29

23:                                               ; preds = %1
  %24 = load i32, i32* @CIM_UINT64, align 4
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

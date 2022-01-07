; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/nfs/extr_nfs41_debug.c_print_caching_level.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/nfs/extr_nfs41_debug.c_print_caching_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"enable_caching: DISABLE_CACHING %wZ\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"enable_caching: ENABLE_READ_CACHING %wZ\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"enable_caching: ENABLE_WRITE_CACHING %wZ\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"enable_caching: ENABLE_READWRITE_CACHING %wZ\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_caching_level(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %24

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %24 [
    i32 0, label %12
    i32 1, label %15
    i32 2, label %18
    i32 3, label %21
  ]

12:                                               ; preds = %10
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @DbgP(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %24

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @DbgP(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  br label %24

18:                                               ; preds = %10
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @DbgP(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  br label %24

21:                                               ; preds = %10
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @DbgP(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %9, %10, %21, %18, %15, %12
  ret void
}

declare dso_local i32 @DbgP(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

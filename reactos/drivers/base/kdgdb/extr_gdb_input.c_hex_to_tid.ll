; ModuleID = '/home/carl/AnghaBench/reactos/drivers/base/kdgdb/extr_gdb_input.c_hex_to_tid.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/base/kdgdb/extr_gdb_input.c_hex_to_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @hex_to_tid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hex_to_tid(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %21, %1
  %7 = load i8*, i8** %3, align 8
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %3, align 8
  %13 = load i8, i8* %11, align 1
  %14 = sext i8 %13 to i32
  %15 = call signext i8 @hex_value(i32 %14)
  store i8 %15, i8* %5, align 1
  %16 = load i8, i8* %5, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %30

21:                                               ; preds = %10
  %22 = load i32, i32* %4, align 4
  %23 = shl i32 %22, 4
  store i32 %23, i32* %4, align 4
  %24 = load i8, i8* %5, align 1
  %25 = sext i8 %24 to i32
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %6

28:                                               ; preds = %6
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %19
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local signext i8 @hex_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

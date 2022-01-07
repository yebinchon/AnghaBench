; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_format-table.c_table_data_size.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_format-table.c_table_data_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Uh? Unexpected cell type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @table_data_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @table_data_size(i32 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %22 [
    i32 149, label %7
    i32 138, label %8
    i32 151, label %13
    i32 135, label %14
    i32 133, label %14
    i32 134, label %14
    i32 137, label %14
    i32 136, label %14
    i32 139, label %15
    i32 143, label %15
    i32 129, label %15
    i32 150, label %15
    i32 144, label %16
    i32 130, label %16
    i32 145, label %17
    i32 131, label %17
    i32 142, label %18
    i32 128, label %18
    i32 146, label %19
    i32 132, label %19
    i32 140, label %19
    i32 148, label %19
    i32 141, label %20
    i32 147, label %21
  ]

7:                                                ; preds = %2
  store i64 0, i64* %3, align 8
  br label %24

8:                                                ; preds = %2
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %3, align 8
  br label %24

13:                                               ; preds = %2
  store i64 4, i64* %3, align 8
  br label %24

14:                                               ; preds = %2, %2, %2, %2, %2
  store i64 4, i64* %3, align 8
  br label %24

15:                                               ; preds = %2, %2, %2, %2
  store i64 4, i64* %3, align 8
  br label %24

16:                                               ; preds = %2, %2
  store i64 4, i64* %3, align 8
  br label %24

17:                                               ; preds = %2, %2
  store i64 4, i64* %3, align 8
  br label %24

18:                                               ; preds = %2, %2
  store i64 4, i64* %3, align 8
  br label %24

19:                                               ; preds = %2, %2, %2, %2
  store i64 4, i64* %3, align 8
  br label %24

20:                                               ; preds = %2
  store i64 4, i64* %3, align 8
  br label %24

21:                                               ; preds = %2
  store i64 4, i64* %3, align 8
  br label %24

22:                                               ; preds = %2
  %23 = call i32 @assert_not_reached(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %7, %8, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22
  %25 = load i64, i64* %3, align 8
  ret i64 %25
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @assert_not_reached(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

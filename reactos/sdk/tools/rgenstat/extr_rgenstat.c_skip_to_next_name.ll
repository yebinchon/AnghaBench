; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/rgenstat/extr_rgenstat.c_skip_to_next_name.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/rgenstat/extr_rgenstat.c_skip_to_next_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@file_pointer = common dso_local global i64 0, align 8
@file_size = common dso_local global i64 0, align 8
@file_buffer = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @skip_to_next_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skip_to_next_name(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  br label %4

4:                                                ; preds = %20, %1
  %5 = load i64, i64* @file_pointer, align 8
  %6 = load i64, i64* @file_size, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  %9 = load i8*, i8** @file_buffer, align 8
  %10 = load i64, i64* @file_pointer, align 8
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 40
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load i64, i64* @file_pointer, align 8
  %17 = sub i64 %16, 1
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @get_previous_identifier(i64 %17, i8* %18)
  store i32 %19, i32* %2, align 4
  br label %24

20:                                               ; preds = %8
  %21 = load i64, i64* @file_pointer, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* @file_pointer, align 8
  br label %4

23:                                               ; preds = %4
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %15
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @get_previous_identifier(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

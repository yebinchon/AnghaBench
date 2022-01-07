; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/rgenstat/extr_rgenstat.c_skip_comments.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/rgenstat/extr_rgenstat.c_skip_comments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@file_pointer = common dso_local global i64 0, align 8
@file_size = common dso_local global i64 0, align 8
@file_buffer = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @skip_comments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skip_comments() #0 {
  br label %1

1:                                                ; preds = %29, %0
  %2 = load i64, i64* @file_pointer, align 8
  %3 = load i64, i64* @file_size, align 8
  %4 = icmp ult i64 %2, %3
  br i1 %4, label %5, label %32

5:                                                ; preds = %1
  %6 = load i8*, i8** @file_buffer, align 8
  %7 = load i64, i64* @file_pointer, align 8
  %8 = getelementptr inbounds i8, i8* %6, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 42
  br i1 %11, label %12, label %29

12:                                               ; preds = %5
  %13 = load i64, i64* @file_pointer, align 8
  %14 = add i64 %13, 1
  %15 = load i64, i64* @file_size, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load i8*, i8** @file_buffer, align 8
  %19 = load i64, i64* @file_pointer, align 8
  %20 = add i64 %19, 1
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 47
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = call i32 (...) @skip_line()
  br label %32

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27, %12
  br label %29

29:                                               ; preds = %28, %5
  %30 = load i64, i64* @file_pointer, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* @file_pointer, align 8
  br label %1

32:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @skip_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

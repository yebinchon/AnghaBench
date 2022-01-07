; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/regtests2xml/extr_regtests2xml.c_skip_line.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/regtests2xml/extr_regtests2xml.c_skip_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@file_pointer = common dso_local global i64 0, align 8
@file_size = common dso_local global i64 0, align 8
@file_buffer = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @skip_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skip_line() #0 {
  br label %1

1:                                                ; preds = %15, %0
  %2 = load i64, i64* @file_pointer, align 8
  %3 = load i64, i64* @file_size, align 8
  %4 = icmp ult i64 %2, %3
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load i8*, i8** @file_buffer, align 8
  %7 = load i64, i64* @file_pointer, align 8
  %8 = getelementptr inbounds i8, i8* %6, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = call i64 @is_eol_char(i8 signext %9)
  %11 = icmp ne i64 %10, 0
  %12 = xor i1 %11, true
  br label %13

13:                                               ; preds = %5, %1
  %14 = phi i1 [ false, %1 ], [ %12, %5 ]
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = load i64, i64* @file_pointer, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* @file_pointer, align 8
  br label %1

18:                                               ; preds = %13
  %19 = load i64, i64* @file_pointer, align 8
  %20 = load i64, i64* @file_size, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = load i8*, i8** @file_buffer, align 8
  %24 = load i64, i64* @file_pointer, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @is_eol_char(i8 signext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %22
  %30 = load i64, i64* @file_pointer, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* @file_pointer, align 8
  %32 = load i64, i64* @file_pointer, align 8
  %33 = load i64, i64* @file_size, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load i8*, i8** @file_buffer, align 8
  %37 = load i64, i64* @file_pointer, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i64, i64* @file_pointer, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* @file_pointer, align 8
  br label %45

45:                                               ; preds = %42, %35, %29
  br label %46

46:                                               ; preds = %45, %22, %18
  ret void
}

declare dso_local i64 @is_eol_char(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

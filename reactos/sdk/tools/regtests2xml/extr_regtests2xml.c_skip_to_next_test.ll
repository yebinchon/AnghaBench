; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/regtests2xml/extr_regtests2xml.c_skip_to_next_test.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/regtests2xml/extr_regtests2xml.c_skip_to_next_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@skip_to_next_test.test_marker = internal global [12 x i8] c"ROSREGTEST:\00", align 1
@file_pointer = common dso_local global i64 0, align 8
@file_size = common dso_local global i64 0, align 8
@file_buffer = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @skip_to_next_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skip_to_next_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %51, %0
  %4 = load i64, i64* @file_pointer, align 8
  %5 = load i64, i64* @file_size, align 8
  %6 = icmp ult i64 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = load i32, i32* %1, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i1 [ false, %3 ], [ %10, %7 ]
  br i1 %12, label %13, label %52

13:                                               ; preds = %11
  %14 = call i32 (...) @skip_whitespace()
  store i32 1, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %13, %41
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @skip_to_next_test.test_marker, i64 0, i64 0))
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %46

20:                                               ; preds = %15
  %21 = load i8*, i8** @file_buffer, align 8
  %22 = load i64, i64* @file_pointer, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = call i64 @is_eol_char(i8 signext %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, i32* %1, align 4
  br label %46

28:                                               ; preds = %20
  %29 = load i8*, i8** @file_buffer, align 8
  %30 = load i64, i64* @file_pointer, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [12 x i8], [12 x i8]* @skip_to_next_test.test_marker, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %33, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  store i32 0, i32* %1, align 4
  br label %46

41:                                               ; preds = %28
  %42 = load i64, i64* @file_pointer, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* @file_pointer, align 8
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %15

46:                                               ; preds = %40, %27, %19
  %47 = load i32, i32* %1, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = call i32 (...) @skip_line()
  br label %51

51:                                               ; preds = %49, %46
  br label %3

52:                                               ; preds = %11
  %53 = load i32, i32* %1, align 4
  ret i32 %53
}

declare dso_local i32 @skip_whitespace(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @is_eol_char(i8 signext) #1

declare dso_local i32 @skip_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

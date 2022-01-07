; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/regtests2xml/extr_regtests2xml.c_skip_whitespace.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/regtests2xml/extr_regtests2xml.c_skip_whitespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@file_pointer = common dso_local global i64 0, align 8
@file_size = common dso_local global i64 0, align 8
@file_buffer = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @skip_whitespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skip_whitespace() #0 {
  br label %1

1:                                                ; preds = %21, %0
  %2 = load i64, i64* @file_pointer, align 8
  %3 = load i64, i64* @file_size, align 8
  %4 = icmp ult i64 %2, %3
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = load i32*, i32** @file_buffer, align 8
  %7 = load i64, i64* @file_pointer, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @is_eol_char(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %5
  %13 = load i32*, i32** @file_buffer, align 8
  %14 = load i64, i64* @file_pointer, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @is_whitespace(i32 %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %12, %5, %1
  %20 = phi i1 [ false, %5 ], [ false, %1 ], [ %18, %12 ]
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = load i64, i64* @file_pointer, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* @file_pointer, align 8
  br label %1

24:                                               ; preds = %19
  ret void
}

declare dso_local i32 @is_eol_char(i32) #1

declare dso_local i64 @is_whitespace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

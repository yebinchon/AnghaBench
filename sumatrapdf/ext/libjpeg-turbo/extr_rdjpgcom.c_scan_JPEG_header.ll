; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_rdjpgcom.c_scan_JPEG_header.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_rdjpgcom.c_scan_JPEG_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_SOI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Expected SOI marker first\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"APP12 contains:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @scan_JPEG_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_JPEG_header(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = call i64 (...) @first_marker()
  %8 = load i64, i64* @M_SOI, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @ERREXIT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %2
  br label %13

13:                                               ; preds = %44, %12
  %14 = call i32 (...) @next_marker()
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %42 [
    i32 141, label %16
    i32 140, label %16
    i32 134, label %16
    i32 133, label %16
    i32 132, label %16
    i32 131, label %16
    i32 130, label %16
    i32 129, label %16
    i32 139, label %16
    i32 138, label %16
    i32 137, label %16
    i32 136, label %16
    i32 135, label %16
    i32 128, label %25
    i32 142, label %27
    i32 143, label %29
    i32 144, label %32
  ]

16:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @process_SOFn(i32 %20)
  br label %24

22:                                               ; preds = %16
  %23 = call i32 (...) @skip_variable()
  br label %24

24:                                               ; preds = %22, %19
  br label %44

25:                                               ; preds = %13
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %45

27:                                               ; preds = %13
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %45

29:                                               ; preds = %13
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @process_COM(i32 %30)
  br label %44

32:                                               ; preds = %13
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @process_COM(i32 %37)
  br label %41

39:                                               ; preds = %32
  %40 = call i32 (...) @skip_variable()
  br label %41

41:                                               ; preds = %39, %35
  br label %44

42:                                               ; preds = %13
  %43 = call i32 (...) @skip_variable()
  br label %44

44:                                               ; preds = %42, %41, %29, %24
  br label %13

45:                                               ; preds = %27, %25
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @first_marker(...) #1

declare dso_local i32 @ERREXIT(i8*) #1

declare dso_local i32 @next_marker(...) #1

declare dso_local i32 @process_SOFn(i32) #1

declare dso_local i32 @skip_variable(...) #1

declare dso_local i32 @process_COM(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

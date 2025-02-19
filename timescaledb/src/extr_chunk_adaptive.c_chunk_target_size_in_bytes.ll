; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_adaptive.c_chunk_target_size_in_bytes.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_adaptive.c_chunk_target_size_in_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"estimate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @chunk_target_size_in_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @chunk_target_size_in_bytes(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i8* @text_to_cstring(i32* %6)
  store i8* %7, i8** %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @pg_strcasecmp(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @pg_strcasecmp(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %1
  store i64 0, i64* %2, align 8
  br label %31

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @pg_strcasecmp(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i64 (...) @calculate_initial_chunk_target_size()
  store i64 %21, i64* %5, align 8
  br label %25

22:                                               ; preds = %16
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @convert_text_memory_amount_to_bytes(i8* %23)
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %22, %20
  %26 = load i64, i64* %5, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i64 0, i64* %5, align 8
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i64, i64* %5, align 8
  store i64 %30, i64* %2, align 8
  br label %31

31:                                               ; preds = %29, %15
  %32 = load i64, i64* %2, align 8
  ret i64 %32
}

declare dso_local i8* @text_to_cstring(i32*) #1

declare dso_local i64 @pg_strcasecmp(i8*, i8*) #1

declare dso_local i64 @calculate_initial_chunk_target_size(...) #1

declare dso_local i64 @convert_text_memory_amount_to_bytes(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

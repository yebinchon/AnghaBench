; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/cmd/extr_batch.c_run_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/cmd/extr_batch.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"test.out\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"test.err\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i64)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_test(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i8* @convert_input_data(i8* %13, i64 %14, i64* %12)
  store i8* %15, i8** %10, align 8
  %16 = load i64, i64* %12, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i8*, i8** %10, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %4
  br label %43

22:                                               ; preds = %18
  %23 = load i8*, i8** %10, align 8
  %24 = load i64, i64* %12, align 8
  %25 = call i32 @run_cmd(i8* %23, i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %43

28:                                               ; preds = %22
  %29 = call i64 @map_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %9)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @test_output(i8* %33, i64 %34, i8* %35, i64 %36)
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @UnmapViewOfFile(i8* %38)
  br label %40

40:                                               ; preds = %32, %28
  %41 = call i32 @DeleteFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 @DeleteFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %27, %21
  %44 = call i32 (...) @GetProcessHeap()
  %45 = load i8*, i8** %10, align 8
  %46 = ptrtoint i8* %45 to i32
  %47 = call i32 @HeapFree(i32 %44, i32 0, i32 %46)
  ret void
}

declare dso_local i8* @convert_input_data(i8*, i64, i64*) #1

declare dso_local i32 @run_cmd(i8*, i64) #1

declare dso_local i64 @map_file(i8*, i8**) #1

declare dso_local i32 @test_output(i8*, i64, i8*, i64) #1

declare dso_local i32 @UnmapViewOfFile(i8*) #1

declare dso_local i32 @DeleteFileA(i8*) #1

declare dso_local i32 @HeapFree(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

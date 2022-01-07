; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-date.c_test_should_pass.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-date.c_test_should_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_TIMESTAMP_MAX = common dso_local global i32 0, align 4
@FORMAT_TIMESTAMP_RELATIVE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Test: %s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\22%s\22 \E2\86\92 \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"round-trip failed: \22%s\22 \E2\86\92 \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_should_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_should_pass(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i32, i32* @FORMAT_TIMESTAMP_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @FORMAT_TIMESTAMP_RELATIVE_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 (i8*, i8*, ...) @log_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i8*, i8** %2, align 8
  %20 = call i64 @parse_timestamp(i8* %19, i64* %3)
  %21 = icmp sge i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert_se(i32 %22)
  %24 = trunc i64 %11 to i32
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @format_timestamp_us(i8* %13, i32 %24, i64 %25)
  %27 = call i32 @assert_se(i32 %26)
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 (i8*, i8*, ...) @log_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %28, i8* %13)
  %30 = call i64 @parse_timestamp(i8* %13, i64* %4)
  %31 = icmp sge i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert_se(i32 %32)
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %3, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %1
  %38 = load i32, i32* @FORMAT_TIMESTAMP_MAX, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %8, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %9, align 8
  %42 = trunc i64 %39 to i32
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @format_timestamp_us(i8* %41, i32 %42, i64 %43)
  %45 = call i32 @log_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %13, i32 %44)
  %46 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %46)
  br label %47

47:                                               ; preds = %37, %1
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* %3, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert_se(i32 %51)
  %53 = trunc i64 %15 to i32
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @format_timestamp_relative(i8* %16, i32 %53, i64 %54)
  %56 = call i32 @assert_se(i32 %55)
  %57 = call i8* @strna(i8* %16)
  %58 = call i32 (i8*, i8*, ...) @log_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  %59 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %59)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @log_info(i8*, i8*, ...) #2

declare dso_local i32 @assert_se(i32) #2

declare dso_local i64 @parse_timestamp(i8*, i64*) #2

declare dso_local i32 @format_timestamp_us(i8*, i32, i64) #2

declare dso_local i32 @log_error(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @format_timestamp_relative(i8*, i32, i64) #2

declare dso_local i8* @strna(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/scrcpy/app/tests/extr_test_strutil.c_test_utf8_truncate.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/tests/extr_test_strutil.c_test_utf8_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"a\C3\89b\C3\94c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_utf8_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_utf8_truncate() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = call i32 @strlen(i8* %3)
  %5 = icmp eq i32 %4, 7
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load i8*, i8** %1, align 8
  %9 = call i64 @utf8_truncation_index(i8* %8, i32 1)
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = icmp eq i64 %10, 1
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i8*, i8** %1, align 8
  %15 = call i64 @utf8_truncation_index(i8* %14, i32 2)
  store i64 %15, i64* %2, align 8
  %16 = load i64, i64* %2, align 8
  %17 = icmp eq i64 %16, 1
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i8*, i8** %1, align 8
  %21 = call i64 @utf8_truncation_index(i8* %20, i32 3)
  store i64 %21, i64* %2, align 8
  %22 = load i64, i64* %2, align 8
  %23 = icmp eq i64 %22, 3
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i8*, i8** %1, align 8
  %27 = call i64 @utf8_truncation_index(i8* %26, i32 4)
  store i64 %27, i64* %2, align 8
  %28 = load i64, i64* %2, align 8
  %29 = icmp eq i64 %28, 4
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i8*, i8** %1, align 8
  %33 = call i64 @utf8_truncation_index(i8* %32, i32 5)
  store i64 %33, i64* %2, align 8
  %34 = load i64, i64* %2, align 8
  %35 = icmp eq i64 %34, 4
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i8*, i8** %1, align 8
  %39 = call i64 @utf8_truncation_index(i8* %38, i32 6)
  store i64 %39, i64* %2, align 8
  %40 = load i64, i64* %2, align 8
  %41 = icmp eq i64 %40, 6
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i8*, i8** %1, align 8
  %45 = call i64 @utf8_truncation_index(i8* %44, i32 7)
  store i64 %45, i64* %2, align 8
  %46 = load i64, i64* %2, align 8
  %47 = icmp eq i64 %46, 7
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i8*, i8** %1, align 8
  %51 = call i64 @utf8_truncation_index(i8* %50, i32 8)
  store i64 %51, i64* %2, align 8
  %52 = load i64, i64* %2, align 8
  %53 = icmp eq i64 %52, 7
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @utf8_truncation_index(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-io-util.c_test_sparse_write_one.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-io-util.c_test_sparse_write_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_SET = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i64)* @test_sparse_write_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_sparse_write_one(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %7, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %8, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @SEEK_SET, align 4
  %14 = call i64 @lseek(i32 %12, i32 0, i32 %13)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert_se(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @ftruncate(i32 %18, i64 0)
  %20 = icmp sge i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert_se(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @sparse_write(i32 %23, i8* %24, i64 %25, i32 4)
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert_se(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @SEEK_CUR, align 4
  %33 = call i64 @lseek(i32 %31, i32 0, i32 %32)
  %34 = load i64, i64* %6, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert_se(i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @ftruncate(i32 %38, i64 %39)
  %41 = icmp sge i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert_se(i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @SEEK_SET, align 4
  %46 = call i64 @lseek(i32 %44, i32 0, i32 %45)
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert_se(i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @read(i32 %50, i8* %11, i64 %51)
  %53 = load i64, i64* %6, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert_se(i32 %55)
  %57 = load i8*, i8** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i64 @memcmp(i8* %57, i8* %11, i64 %58)
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert_se(i32 %61)
  %63 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %63)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert_se(i32) #2

declare dso_local i64 @lseek(i32, i32, i32) #2

declare dso_local i64 @ftruncate(i32, i64) #2

declare dso_local i64 @sparse_write(i32, i8*, i64, i32) #2

declare dso_local i64 @read(i32, i8*, i64) #2

declare dso_local i64 @memcmp(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

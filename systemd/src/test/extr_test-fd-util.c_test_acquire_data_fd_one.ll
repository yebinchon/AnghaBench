; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-fd-util.c_test_acquire_data_fd_one.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-fd-util.c_test_acquire_data_fd_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_acquire_data_fd_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_acquire_data_fd_one(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [200697 x i8], align 16
  %4 = alloca [200697 x i8], align 16
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @acquire_data_fd(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3, i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sge i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert_se(i32 %10)
  %12 = getelementptr inbounds [200697 x i8], [200697 x i8]* %4, i64 0, i64 0
  %13 = call i32 @zero(i8* %12)
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds [200697 x i8], [200697 x i8]* %4, i64 0, i64 0
  %16 = call i32 @read(i32 %14, i8* %15, i32 200697)
  %17 = icmp eq i32 %16, 3
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert_se(i32 %18)
  %20 = getelementptr inbounds [200697 x i8], [200697 x i8]* %4, i64 0, i64 0
  %21 = call i32 @streq(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @assert_se(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @safe_close(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @acquire_data_fd(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp sge i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert_se(i32 %29)
  %31 = getelementptr inbounds [200697 x i8], [200697 x i8]* %4, i64 0, i64 0
  %32 = call i32 @zero(i8* %31)
  %33 = load i32, i32* %5, align 4
  %34 = getelementptr inbounds [200697 x i8], [200697 x i8]* %4, i64 0, i64 0
  %35 = call i32 @read(i32 %33, i8* %34, i32 200697)
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert_se(i32 %37)
  %39 = getelementptr inbounds [200697 x i8], [200697 x i8]* %4, i64 0, i64 0
  %40 = call i32 @streq(i8* %39, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %41 = call i32 @assert_se(i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @safe_close(i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = getelementptr inbounds [200697 x i8], [200697 x i8]* %3, i64 0, i64 0
  %45 = call i32 @random_bytes(i8* %44, i32 200697)
  %46 = getelementptr inbounds [200697 x i8], [200697 x i8]* %3, i64 0, i64 0
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @acquire_data_fd(i8* %46, i32 200697, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp sge i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert_se(i32 %51)
  %53 = getelementptr inbounds [200697 x i8], [200697 x i8]* %4, i64 0, i64 0
  %54 = call i32 @zero(i8* %53)
  %55 = load i32, i32* %5, align 4
  %56 = getelementptr inbounds [200697 x i8], [200697 x i8]* %4, i64 0, i64 0
  %57 = call i32 @read(i32 %55, i8* %56, i32 200697)
  %58 = sext i32 %57 to i64
  %59 = icmp eq i64 %58, 200697
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert_se(i32 %60)
  %62 = getelementptr inbounds [200697 x i8], [200697 x i8]* %4, i64 0, i64 0
  %63 = getelementptr inbounds [200697 x i8], [200697 x i8]* %3, i64 0, i64 0
  %64 = call i64 @memcmp(i8* %62, i8* %63, i32 200697)
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert_se(i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @safe_close(i32 %68)
  store i32 %69, i32* %5, align 4
  ret void
}

declare dso_local i32 @acquire_data_fd(i8*, i32, i32) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @zero(i8*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @streq(i8*, i8*) #1

declare dso_local i32 @safe_close(i32) #1

declare dso_local i32 @random_bytes(i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

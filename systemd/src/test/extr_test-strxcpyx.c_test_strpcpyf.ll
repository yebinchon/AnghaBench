; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-strxcpyx.c_test_strpcpyf.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-strxcpyx.c_test_strpcpyf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"space left: %zu. \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"foo%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"space left: 25. foobar\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"00 left: %i. \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"00 left: 99\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_strpcpyf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_strpcpyf() #0 {
  %1 = alloca [25 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds [25 x i8], [25 x i8]* %1, i64 0, i64 0
  store i8* %4, i8** %2, align 8
  store i64 25, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = trunc i64 %5 to i32
  %7 = load i64, i64* %3, align 8
  %8 = call i64 (i8**, i32, i8*, ...) @strpcpyf(i8** %2, i32 %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = trunc i64 %9 to i32
  %11 = call i64 (i8**, i32, i8*, ...) @strpcpyf(i8** %2, i32 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i64 %11, i64* %3, align 8
  %12 = getelementptr inbounds [25 x i8], [25 x i8]* %1, i64 0, i64 0
  %13 = call i32 @streq(i8* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %14 = call i32 @assert_se(i32 %13)
  %15 = load i64, i64* %3, align 8
  %16 = icmp eq i64 %15, 3
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert_se(i32 %17)
  %19 = getelementptr inbounds [25 x i8], [25 x i8]* %1, i64 0, i64 0
  store i8* %19, i8** %2, align 8
  %20 = call i64 (i8**, i32, i8*, ...) @strpcpyf(i8** %2, i32 12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 999)
  store i64 %20, i64* %3, align 8
  %21 = getelementptr inbounds [25 x i8], [25 x i8]* %1, i64 0, i64 0
  %22 = call i32 @streq(i8* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %23 = call i32 @assert_se(i32 %22)
  %24 = load i64, i64* %3, align 8
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert_se(i32 %26)
  %28 = getelementptr inbounds [25 x i8], [25 x i8]* %1, i64 0, i64 12
  %29 = load i8, i8* %28, align 4
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 50
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert_se(i32 %32)
  ret void
}

declare dso_local i64 @strpcpyf(i8**, i32, i8*, ...) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @streq(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

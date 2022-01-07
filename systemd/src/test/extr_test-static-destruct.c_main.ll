; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-static-destruct.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-static-destruct.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"hallo\00", align 1
@memory = common dso_local global i32 0, align 4
@foo = common dso_local global i32 0, align 4
@bar = common dso_local global i32 0, align 4
@baz = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* @LOG_INFO, align 4
  %7 = call i32 @test_setup_logging(i32 %6)
  %8 = call i32 @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* @memory, align 4
  %9 = call i32 @assert_se(i32 %8)
  %10 = load i32, i32* @foo, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* @bar, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @baz, align 4
  %17 = icmp eq i32 %16, 0
  br label %18

18:                                               ; preds = %15, %12, %2
  %19 = phi i1 [ false, %12 ], [ false, %2 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert_se(i32 %20)
  %22 = call i32 (...) @static_destruct()
  %23 = load i32, i32* @foo, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load i32, i32* @bar, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @baz, align 4
  %30 = icmp eq i32 %29, 3
  br label %31

31:                                               ; preds = %28, %25, %18
  %32 = phi i1 [ false, %25 ], [ false, %18 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert_se(i32 %33)
  %35 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %35
}

declare dso_local i32 @test_setup_logging(i32) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @static_destruct(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

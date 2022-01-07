; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/udp/extr_..lwip_check.h_create_suite.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/udp/extr_..lwip_check.h_create_suite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"Core\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i64, i32*, i32*)* @create_suite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_suite(i8* %0, i32* %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32* @suite_create(i8* %14)
  store i32* %15, i32** %12, align 8
  store i64 0, i64* %11, align 8
  br label %16

16:                                               ; preds = %42, %5
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = call i32* @tcase_create(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %21, i32** %13, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24, %20
  %28 = load i32*, i32** %13, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @tcase_add_checked_fixture(i32* %28, i32* %29, i32* %30)
  br label %32

32:                                               ; preds = %27, %24
  %33 = load i32*, i32** %13, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @tcase_add_test(i32* %33, i32 %37)
  %39 = load i32*, i32** %12, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @suite_add_tcase(i32* %39, i32* %40)
  br label %42

42:                                               ; preds = %32
  %43 = load i64, i64* %11, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %11, align 8
  br label %16

45:                                               ; preds = %16
  %46 = load i32*, i32** %12, align 8
  ret i32* %46
}

declare dso_local i32* @suite_create(i8*) #1

declare dso_local i32* @tcase_create(i8*) #1

declare dso_local i32 @tcase_add_checked_fixture(i32*, i32*, i32*) #1

declare dso_local i32 @tcase_add_test(i32*, i32) #1

declare dso_local i32 @suite_add_tcase(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

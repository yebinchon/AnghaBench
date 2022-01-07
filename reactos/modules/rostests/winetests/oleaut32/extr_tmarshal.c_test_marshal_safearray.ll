; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_tmarshal.c_test_marshal_safearray.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_tmarshal.c_test_marshal_safearray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"Got hr %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @test_marshal_safearray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_marshal_safearray(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = call i32* @make_safearray(i32 3)
  store i32* %11, i32** %5, align 8
  %12 = call i32* @make_safearray(i32 5)
  store i32* %12, i32** %7, align 8
  store i32* %12, i32** %6, align 8
  %13 = call i32* @make_safearray(i32 7)
  store i32* %13, i32** %8, align 8
  %14 = call i32* @make_safearray(i32 9)
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @IWidget_safearray(i32* %15, i32* %16, i32** %6, i32** %8, i32** %9)
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @check_safearray(i32* %24, i32 3)
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @check_safearray(i32* %26, i32 4)
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @check_safearray(i32* %28, i32 5)
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @check_safearray(i32* %30, i32 7)
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @check_safearray(i32* %32, i32 6)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @SafeArrayDestroy(i32* %34)
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @SafeArrayDestroy(i32* %36)
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @SafeArrayDestroy(i32* %38)
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @SafeArrayDestroy(i32* %40)
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @SafeArrayDestroy(i32* %42)
  ret void
}

declare dso_local i32* @make_safearray(i32) #1

declare dso_local i64 @IWidget_safearray(i32*, i32*, i32**, i32**, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @check_safearray(i32*, i32) #1

declare dso_local i32 @SafeArrayDestroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

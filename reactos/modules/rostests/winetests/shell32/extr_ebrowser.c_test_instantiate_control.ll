; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_ebrowser.c_test_instantiate_control.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_ebrowser.c_test_instantiate_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@REGDB_E_CLASSNOTREG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Got (0x%08x)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_instantiate_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_instantiate_control() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = call i64 @ebrowser_instantiate(i32** %2)
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @S_OK, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @REGDB_E_CLASSNOTREG, align 8
  %11 = icmp eq i64 %9, %10
  br label %12

12:                                               ; preds = %8, %0
  %13 = phi i1 [ true, %0 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @FAILED(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %1, align 4
  br label %26

22:                                               ; preds = %12
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @IExplorerBrowser_Release(i32* %23)
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %1, align 4
  br label %26

26:                                               ; preds = %22, %20
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i64 @ebrowser_instantiate(i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @IExplorerBrowser_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

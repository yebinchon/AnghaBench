; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_button.c_create_button.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_button.c_create_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WS_CHILD = common dso_local global i32 0, align 4
@BS_NOTIFY = common dso_local global i32 0, align 4
@ID_BUTTON = common dso_local global i64 0, align 8
@WC_BUTTONA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to create a button, 0x%08x, %p\0A\00", align 1
@button_subclass_proc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32*)* @create_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_button(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, i32* @WS_CHILD, align 4
  %11 = load i32, i32* @BS_NOTIFY, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i64, i64* @ID_BUTTON, align 8
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %9, %2
  %17 = load i32, i32* @WC_BUTTONA, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32* @CreateWindowExA(i32 0, i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %18, i32 0, i32 0, i32 50, i32 14, i32* %19, i64 %20, i32 0, i32* null)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %3, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @button_subclass_proc, align 4
  %30 = call i32 @pSetWindowSubclass(i32* %28, i32 %29, i32 0, i32 0)
  %31 = load i32*, i32** %6, align 8
  ret i32* %31
}

declare dso_local i32* @CreateWindowExA(i32, i32, i8*, i32, i32, i32, i32, i32, i32*, i64, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, i32*) #1

declare dso_local i32 @pSetWindowSubclass(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

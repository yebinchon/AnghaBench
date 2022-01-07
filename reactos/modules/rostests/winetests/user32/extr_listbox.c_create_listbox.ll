; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_listbox.c_create_listbox.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_listbox.c_create_listbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"LISTBOX\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"TestList\00", align 1
@LBS_STANDARD = common dso_local global i32 0, align 4
@LBS_SORT = common dso_local global i32 0, align 4
@LB_ADDSTRING = common dso_local global i32 0, align 4
@strings = common dso_local global i64* null, align 8
@REDRAW = common dso_local global i32 0, align 4
@SW_SHOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64)* @create_listbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_listbox(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %6, align 4
  br label %10

10:                                               ; preds = %9, %2
  %11 = load i32, i32* @LBS_STANDARD, align 4
  %12 = load i32, i32* @LBS_SORT, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %14, %15
  %17 = load i64, i64* %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @CreateWindowA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 0, i32 0, i32 100, i32 100, i64 %17, i32 %18, i32* null, i32 0)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @assert(i64 %20)
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* @LB_ADDSTRING, align 4
  %24 = load i64*, i64** @strings, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @SendMessageA(i64 %22, i32 %23, i32 0, i32 %27)
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* @LB_ADDSTRING, align 4
  %31 = load i64*, i64** @strings, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @SendMessageA(i64 %29, i32 %30, i32 0, i32 %34)
  %36 = load i64, i64* %5, align 8
  %37 = load i32, i32* @LB_ADDSTRING, align 4
  %38 = load i64*, i64** @strings, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 2
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @SendMessageA(i64 %36, i32 %37, i32 0, i32 %41)
  %43 = load i64, i64* %5, align 8
  %44 = load i32, i32* @LB_ADDSTRING, align 4
  %45 = load i64*, i64** @strings, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 3
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @SendMessageA(i64 %43, i32 %44, i32 0, i32 %48)
  %50 = load i32, i32* @REDRAW, align 4
  %51 = load i64, i64* %5, align 8
  ret i64 %51
}

declare dso_local i64 @CreateWindowA(i8*, i8*, i32, i32, i32, i32, i32, i64, i32, i32*, i32) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i32 @SendMessageA(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

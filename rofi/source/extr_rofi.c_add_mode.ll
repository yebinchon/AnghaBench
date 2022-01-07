; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_rofi.c_add_mode.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_rofi.c_add_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_modi = common dso_local global i32 0, align 4
@modi = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @add_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_mode(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @num_modi, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32**, i32*** @modi, align 8
  %8 = load i32, i32* @num_modi, align 4
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = mul i64 8, %10
  %12 = trunc i64 %11 to i32
  %13 = call i64 @g_realloc(i32** %7, i32 %12)
  %14 = inttoptr i64 %13 to i32**
  store i32** %14, i32*** @modi, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32* @rofi_collect_modi_search(i8* %15)
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load i32*, i32** %4, align 8
  %21 = load i32**, i32*** @modi, align 8
  %22 = load i32, i32* @num_modi, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  store i32* %20, i32** %24, align 8
  %25 = load i32, i32* @num_modi, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @num_modi, align 4
  br label %48

27:                                               ; preds = %1
  %28 = load i8*, i8** %2, align 8
  %29 = call i64 @script_switcher_is_valid(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load i8*, i8** %2, align 8
  %33 = call i32* @script_switcher_parse_setup(i8* %32)
  store i32* %33, i32** %5, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @rofi_collect_modi_add(i32* %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load i32**, i32*** @modi, align 8
  %41 = load i32, i32* @num_modi, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  store i32* %39, i32** %43, align 8
  %44 = load i32, i32* @num_modi, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @num_modi, align 4
  br label %46

46:                                               ; preds = %36, %31
  br label %47

47:                                               ; preds = %46, %27
  br label %48

48:                                               ; preds = %47, %19
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @num_modi, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %52
  %56 = phi i32 [ -1, %52 ], [ %54, %53 ]
  ret i32 %56
}

declare dso_local i64 @g_realloc(i32**, i32) #1

declare dso_local i32* @rofi_collect_modi_search(i8*) #1

declare dso_local i64 @script_switcher_is_valid(i8*) #1

declare dso_local i32* @script_switcher_parse_setup(i8*) #1

declare dso_local i32 @rofi_collect_modi_add(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

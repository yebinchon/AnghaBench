; ModuleID = '/home/carl/AnghaBench/tig/src/extr_keys.c_get_keybinding.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_keys.c_get_keybinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keymap = type { i32 }
%struct.key = type { i32 }

@generic_keymap = common dso_local global %struct.keymap* null, align 8
@REQ_UNKNOWN = common dso_local global i32 0, align 4
@REQ_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_keybinding(%struct.keymap* %0, %struct.key* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.keymap*, align 8
  %6 = alloca %struct.key*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.keymap* %0, %struct.keymap** %5, align 8
  store %struct.key* %1, %struct.key** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.keymap*, %struct.keymap** %5, align 8
  %13 = load %struct.key*, %struct.key** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @get_keybinding_in_keymap(%struct.keymap* %12, %struct.key* %13, i64 %14, i32* %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.keymap*, %struct.keymap** %5, align 8
  %18 = call i32 @is_search_keymap(%struct.keymap* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %46, label %20

20:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  %21 = load %struct.keymap*, %struct.keymap** @generic_keymap, align 8
  %22 = load %struct.key*, %struct.key** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @get_keybinding_in_keymap(%struct.keymap* %21, %struct.key* %22, i64 %23, i32* %10)
  store i32 %24, i32* %11, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %20
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @REQ_UNKNOWN, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %31, %27
  %35 = load i32, i32* %10, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %34, %31, %20
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @REQ_UNKNOWN, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %43, %39
  br label %46

46:                                               ; preds = %45, %4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @REQ_NONE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @REQ_UNKNOWN, align 4
  br label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  ret i32 %55
}

declare dso_local i32 @get_keybinding_in_keymap(%struct.keymap*, %struct.key*, i64, i32*) #1

declare dso_local i32 @is_search_keymap(%struct.keymap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

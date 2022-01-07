; ModuleID = '/home/carl/AnghaBench/tig/src/extr_keys.c_get_keybinding_in_keymap.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_keys.c_get_keybinding_in_keymap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keymap = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, i64 }
%struct.key = type { i32 }

@REQ_UNKNOWN = common dso_local global i32 0, align 4
@REQ_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.keymap*, %struct.key*, i64, i32*)* @get_keybinding_in_keymap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_keybinding_in_keymap(%struct.keymap* %0, %struct.key* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.keymap*, align 8
  %6 = alloca %struct.key*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.keymap* %0, %struct.keymap** %5, align 8
  store %struct.key* %1, %struct.key** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* @REQ_UNKNOWN, align 4
  store i32 %11, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %70, %4
  %13 = load i64, i64* %10, align 8
  %14 = load %struct.keymap*, %struct.keymap** %5, align 8
  %15 = getelementptr inbounds %struct.keymap, %struct.keymap* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %73

18:                                               ; preds = %12
  %19 = load %struct.keymap*, %struct.keymap** %5, align 8
  %20 = getelementptr inbounds %struct.keymap, %struct.keymap* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %20, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %21, i64 %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load %struct.key*, %struct.key** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @keybinding_matches(%struct.TYPE_2__* %24, %struct.key* %25, i64 %26, i32* null)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %69

29:                                               ; preds = %18
  %30 = load i32*, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load %struct.keymap*, %struct.keymap** %5, align 8
  %34 = getelementptr inbounds %struct.keymap, %struct.keymap* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %35, i64 %36
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @REQ_NONE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %43, %32, %29
  %48 = load %struct.keymap*, %struct.keymap** %5, align 8
  %49 = getelementptr inbounds %struct.keymap, %struct.keymap* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %49, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %50, i64 %51
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %47
  %59 = load %struct.keymap*, %struct.keymap** %5, align 8
  %60 = getelementptr inbounds %struct.keymap, %struct.keymap* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %61, i64 %62
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %58, %47
  br label %69

69:                                               ; preds = %68, %18
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %10, align 8
  br label %12

73:                                               ; preds = %12
  %74 = load i32, i32* %9, align 4
  ret i32 %74
}

declare dso_local i64 @keybinding_matches(%struct.TYPE_2__*, %struct.key*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

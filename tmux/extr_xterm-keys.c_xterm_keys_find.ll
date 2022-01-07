; ModuleID = '/home/carl/AnghaBench/tmux/extr_xterm-keys.c_xterm_keys_find.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_xterm-keys.c_xterm_keys_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xterm_keys_entry = type { i32, i32 }

@xterm_keys_table = common dso_local global %struct.xterm_keys_entry* null, align 8
@KEYC_XTERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xterm_keys_find(i8* %0, i64 %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.xterm_keys_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %11, align 8
  br label %14

14:                                               ; preds = %47, %4
  %15 = load i64, i64* %11, align 8
  %16 = load %struct.xterm_keys_entry*, %struct.xterm_keys_entry** @xterm_keys_table, align 8
  %17 = call i64 @nitems(%struct.xterm_keys_entry* %16)
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %14
  %20 = load %struct.xterm_keys_entry*, %struct.xterm_keys_entry** @xterm_keys_table, align 8
  %21 = load i64, i64* %11, align 8
  %22 = getelementptr inbounds %struct.xterm_keys_entry, %struct.xterm_keys_entry* %20, i64 %21
  store %struct.xterm_keys_entry* %22, %struct.xterm_keys_entry** %10, align 8
  %23 = load %struct.xterm_keys_entry*, %struct.xterm_keys_entry** %10, align 8
  %24 = getelementptr inbounds %struct.xterm_keys_entry, %struct.xterm_keys_entry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64*, i64** %8, align 8
  %29 = call i32 @xterm_keys_match(i32 %25, i8* %26, i64 %27, i64* %28, i32* %13)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %47

33:                                               ; preds = %19
  %34 = load i32, i32* %12, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.xterm_keys_entry*, %struct.xterm_keys_entry** %10, align 8
  %38 = getelementptr inbounds %struct.xterm_keys_entry, %struct.xterm_keys_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %13, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @KEYC_XTERM, align 4
  %43 = or i32 %41, %42
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %36, %33
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %5, align 4
  br label %51

47:                                               ; preds = %32
  %48 = load i64, i64* %11, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %11, align 8
  br label %14

50:                                               ; preds = %14
  store i32 -1, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %45
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i64 @nitems(%struct.xterm_keys_entry*) #1

declare dso_local i32 @xterm_keys_match(i32, i8*, i64, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tmux/extr_options.c_options_match_get.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_options.c_options_match_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_entry = type { i32 }
%struct.options = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.options_entry* @options_match_get(%struct.options* %0, i8* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.options_entry*, align 8
  %7 = alloca %struct.options*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.options_entry*, align 8
  store %struct.options* %0, %struct.options** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = call i8* @options_match(i8* %14, i32* %15, i32* %16)
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store %struct.options_entry* null, %struct.options_entry** %6, align 8
  br label %37

21:                                               ; preds = %5
  %22 = load i32*, i32** %11, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.options*, %struct.options** %7, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = call %struct.options_entry* @options_get_only(%struct.options* %26, i8* %27)
  store %struct.options_entry* %28, %struct.options_entry** %13, align 8
  br label %33

29:                                               ; preds = %21
  %30 = load %struct.options*, %struct.options** %7, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = call %struct.options_entry* @options_get(%struct.options* %30, i8* %31)
  store %struct.options_entry* %32, %struct.options_entry** %13, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load %struct.options_entry*, %struct.options_entry** %13, align 8
  store %struct.options_entry* %36, %struct.options_entry** %6, align 8
  br label %37

37:                                               ; preds = %33, %20
  %38 = load %struct.options_entry*, %struct.options_entry** %6, align 8
  ret %struct.options_entry* %38
}

declare dso_local i8* @options_match(i8*, i32*, i32*) #1

declare dso_local %struct.options_entry* @options_get_only(%struct.options*, i8*) #1

declare dso_local %struct.options_entry* @options_get(%struct.options*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

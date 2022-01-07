; ModuleID = '/home/carl/AnghaBench/tig/src/extr_prompt.c_read_prompt_handler.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_prompt.c_read_prompt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input = type { i32 }
%struct.key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.incremental_input = type { i32 (%struct.input*, %struct.key*)*, i64 }

@INPUT_SKIP = common dso_local global i32 0, align 4
@INPUT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input*, %struct.key*)* @read_prompt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_prompt_handler(%struct.input* %0, %struct.key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.input*, align 8
  %5 = alloca %struct.key*, align 8
  %6 = alloca %struct.incremental_input*, align 8
  store %struct.input* %0, %struct.input** %4, align 8
  store %struct.key* %1, %struct.key** %5, align 8
  %7 = load %struct.input*, %struct.input** %4, align 8
  %8 = bitcast %struct.input* %7 to %struct.incremental_input*
  store %struct.incremental_input* %8, %struct.incremental_input** %6, align 8
  %9 = load %struct.incremental_input*, %struct.incremental_input** %6, align 8
  %10 = getelementptr inbounds %struct.incremental_input, %struct.incremental_input* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.key*, %struct.key** %5, align 8
  %15 = getelementptr inbounds %struct.key, %struct.key* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load %struct.input*, %struct.input** %4, align 8
  %21 = load %struct.key*, %struct.key** %5, align 8
  %22 = call i32 @prompt_default_handler(%struct.input* %20, %struct.key* %21)
  store i32 %22, i32* %3, align 4
  br label %44

23:                                               ; preds = %13, %2
  %24 = load %struct.key*, %struct.key** %5, align 8
  %25 = call i32 @key_to_unicode(%struct.key* %24)
  %26 = call i32 @unicode_width(i32 %25, i32 8)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @INPUT_SKIP, align 4
  store i32 %29, i32* %3, align 4
  br label %44

30:                                               ; preds = %23
  %31 = load %struct.incremental_input*, %struct.incremental_input** %6, align 8
  %32 = getelementptr inbounds %struct.incremental_input, %struct.incremental_input* %31, i32 0, i32 0
  %33 = load i32 (%struct.input*, %struct.key*)*, i32 (%struct.input*, %struct.key*)** %32, align 8
  %34 = icmp ne i32 (%struct.input*, %struct.key*)* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @INPUT_OK, align 4
  store i32 %36, i32* %3, align 4
  br label %44

37:                                               ; preds = %30
  %38 = load %struct.incremental_input*, %struct.incremental_input** %6, align 8
  %39 = getelementptr inbounds %struct.incremental_input, %struct.incremental_input* %38, i32 0, i32 0
  %40 = load i32 (%struct.input*, %struct.key*)*, i32 (%struct.input*, %struct.key*)** %39, align 8
  %41 = load %struct.input*, %struct.input** %4, align 8
  %42 = load %struct.key*, %struct.key** %5, align 8
  %43 = call i32 %40(%struct.input* %41, %struct.key* %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %37, %35, %28, %19
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @prompt_default_handler(%struct.input*, %struct.key*) #1

declare dso_local i32 @unicode_width(i32, i32) #1

declare dso_local i32 @key_to_unicode(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

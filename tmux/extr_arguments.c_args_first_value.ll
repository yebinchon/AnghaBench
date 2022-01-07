; ModuleID = '/home/carl/AnghaBench/tmux/extr_arguments.c_args_first_value.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_arguments.c_args_first_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.args = type { i32 }
%struct.args_value = type { i8* }
%struct.args_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @args_first_value(%struct.args* %0, i32 %1, %struct.args_value** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.args_value**, align 8
  %8 = alloca %struct.args_entry*, align 8
  store %struct.args* %0, %struct.args** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.args_value** %2, %struct.args_value*** %7, align 8
  %9 = load %struct.args*, %struct.args** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.args_entry* @args_find(%struct.args* %9, i32 %10)
  store %struct.args_entry* %11, %struct.args_entry** %8, align 8
  %12 = icmp eq %struct.args_entry* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %28

14:                                               ; preds = %3
  %15 = load %struct.args_entry*, %struct.args_entry** %8, align 8
  %16 = getelementptr inbounds %struct.args_entry, %struct.args_entry* %15, i32 0, i32 0
  %17 = call %struct.args_value* @TAILQ_FIRST(i32* %16)
  %18 = load %struct.args_value**, %struct.args_value*** %7, align 8
  store %struct.args_value* %17, %struct.args_value** %18, align 8
  %19 = load %struct.args_value**, %struct.args_value*** %7, align 8
  %20 = load %struct.args_value*, %struct.args_value** %19, align 8
  %21 = icmp eq %struct.args_value* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i8* null, i8** %4, align 8
  br label %28

23:                                               ; preds = %14
  %24 = load %struct.args_value**, %struct.args_value*** %7, align 8
  %25 = load %struct.args_value*, %struct.args_value** %24, align 8
  %26 = getelementptr inbounds %struct.args_value, %struct.args_value* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %4, align 8
  br label %28

28:                                               ; preds = %23, %22, %13
  %29 = load i8*, i8** %4, align 8
  ret i8* %29
}

declare dso_local %struct.args_entry* @args_find(%struct.args*, i32) #1

declare dso_local %struct.args_value* @TAILQ_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tmux/extr_options.c_options_add.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_options.c_options_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_entry = type { i32, %struct.options* }
%struct.options = type { i32 }

@options_tree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.options_entry* (%struct.options*, i8*)* @options_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.options_entry* @options_add(%struct.options* %0, i8* %1) #0 {
  %3 = alloca %struct.options*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.options_entry*, align 8
  store %struct.options* %0, %struct.options** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.options*, %struct.options** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.options_entry* @options_get_only(%struct.options* %6, i8* %7)
  store %struct.options_entry* %8, %struct.options_entry** %5, align 8
  %9 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  %10 = icmp ne %struct.options_entry* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  %13 = call i32 @options_remove(%struct.options_entry* %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = call %struct.options_entry* @xcalloc(i32 1, i32 16)
  store %struct.options_entry* %15, %struct.options_entry** %5, align 8
  %16 = load %struct.options*, %struct.options** %3, align 8
  %17 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  %18 = getelementptr inbounds %struct.options_entry, %struct.options_entry* %17, i32 0, i32 1
  store %struct.options* %16, %struct.options** %18, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @xstrdup(i8* %19)
  %21 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  %22 = getelementptr inbounds %struct.options_entry, %struct.options_entry* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @options_tree, align 4
  %24 = load %struct.options*, %struct.options** %3, align 8
  %25 = getelementptr inbounds %struct.options, %struct.options* %24, i32 0, i32 0
  %26 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  %27 = call i32 @RB_INSERT(i32 %23, i32* %25, %struct.options_entry* %26)
  %28 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  ret %struct.options_entry* %28
}

declare dso_local %struct.options_entry* @options_get_only(%struct.options*, i8*) #1

declare dso_local i32 @options_remove(%struct.options_entry*) #1

declare dso_local %struct.options_entry* @xcalloc(i32, i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.options_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

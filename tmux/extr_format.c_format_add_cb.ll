; ModuleID = '/home/carl/AnghaBench/tmux/extr_format.c_format_add_cb.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format.c_format_add_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_tree = type { i32 }
%struct.format_entry = type { %struct.format_entry*, i64, i32, %struct.format_entry* }

@format_entry_tree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.format_tree*, i8*, i32)* @format_add_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_add_cb(%struct.format_tree* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.format_tree*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.format_entry*, align 8
  %8 = alloca %struct.format_entry*, align 8
  store %struct.format_tree* %0, %struct.format_tree** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call %struct.format_entry* @xmalloc(i32 32)
  store %struct.format_entry* %9, %struct.format_entry** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.format_entry* @xstrdup(i8* %10)
  %12 = load %struct.format_entry*, %struct.format_entry** %7, align 8
  %13 = getelementptr inbounds %struct.format_entry, %struct.format_entry* %12, i32 0, i32 3
  store %struct.format_entry* %11, %struct.format_entry** %13, align 8
  %14 = load i32, i32* @format_entry_tree, align 4
  %15 = load %struct.format_tree*, %struct.format_tree** %4, align 8
  %16 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %15, i32 0, i32 0
  %17 = load %struct.format_entry*, %struct.format_entry** %7, align 8
  %18 = call %struct.format_entry* @RB_INSERT(i32 %14, i32* %16, %struct.format_entry* %17)
  store %struct.format_entry* %18, %struct.format_entry** %8, align 8
  %19 = load %struct.format_entry*, %struct.format_entry** %8, align 8
  %20 = icmp ne %struct.format_entry* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %3
  %22 = load %struct.format_entry*, %struct.format_entry** %7, align 8
  %23 = getelementptr inbounds %struct.format_entry, %struct.format_entry* %22, i32 0, i32 3
  %24 = load %struct.format_entry*, %struct.format_entry** %23, align 8
  %25 = call i32 @free(%struct.format_entry* %24)
  %26 = load %struct.format_entry*, %struct.format_entry** %7, align 8
  %27 = call i32 @free(%struct.format_entry* %26)
  %28 = load %struct.format_entry*, %struct.format_entry** %8, align 8
  %29 = getelementptr inbounds %struct.format_entry, %struct.format_entry* %28, i32 0, i32 0
  %30 = load %struct.format_entry*, %struct.format_entry** %29, align 8
  %31 = call i32 @free(%struct.format_entry* %30)
  %32 = load %struct.format_entry*, %struct.format_entry** %8, align 8
  store %struct.format_entry* %32, %struct.format_entry** %7, align 8
  br label %33

33:                                               ; preds = %21, %3
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.format_entry*, %struct.format_entry** %7, align 8
  %36 = getelementptr inbounds %struct.format_entry, %struct.format_entry* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.format_entry*, %struct.format_entry** %7, align 8
  %38 = getelementptr inbounds %struct.format_entry, %struct.format_entry* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.format_entry*, %struct.format_entry** %7, align 8
  %40 = getelementptr inbounds %struct.format_entry, %struct.format_entry* %39, i32 0, i32 0
  store %struct.format_entry* null, %struct.format_entry** %40, align 8
  ret void
}

declare dso_local %struct.format_entry* @xmalloc(i32) #1

declare dso_local %struct.format_entry* @xstrdup(i8*) #1

declare dso_local %struct.format_entry* @RB_INSERT(i32, i32*, %struct.format_entry*) #1

declare dso_local i32 @free(%struct.format_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

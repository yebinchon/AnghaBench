; ModuleID = '/home/carl/AnghaBench/tmux/extr_paste.c_paste_get_top.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_paste.c_paste_get_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.paste_buffer = type { i8* }

@paste_time_tree = common dso_local global i32 0, align 4
@paste_by_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.paste_buffer* @paste_get_top(i8** %0) #0 {
  %2 = alloca %struct.paste_buffer*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca %struct.paste_buffer*, align 8
  store i8** %0, i8*** %3, align 8
  %5 = load i32, i32* @paste_time_tree, align 4
  %6 = call %struct.paste_buffer* @RB_MIN(i32 %5, i32* @paste_by_time)
  store %struct.paste_buffer* %6, %struct.paste_buffer** %4, align 8
  %7 = load %struct.paste_buffer*, %struct.paste_buffer** %4, align 8
  %8 = icmp eq %struct.paste_buffer* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.paste_buffer* null, %struct.paste_buffer** %2, align 8
  br label %20

10:                                               ; preds = %1
  %11 = load i8**, i8*** %3, align 8
  %12 = icmp ne i8** %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load %struct.paste_buffer*, %struct.paste_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.paste_buffer, %struct.paste_buffer* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i8**, i8*** %3, align 8
  store i8* %16, i8** %17, align 8
  br label %18

18:                                               ; preds = %13, %10
  %19 = load %struct.paste_buffer*, %struct.paste_buffer** %4, align 8
  store %struct.paste_buffer* %19, %struct.paste_buffer** %2, align 8
  br label %20

20:                                               ; preds = %18, %9
  %21 = load %struct.paste_buffer*, %struct.paste_buffer** %2, align 8
  ret %struct.paste_buffer* %21
}

declare dso_local %struct.paste_buffer* @RB_MIN(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tmux/extr_paste.c_paste_get_name.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_paste.c_paste_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.paste_buffer = type { i8* }

@paste_name_tree = common dso_local global i32 0, align 4
@paste_by_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.paste_buffer* @paste_get_name(i8* %0) #0 {
  %2 = alloca %struct.paste_buffer*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.paste_buffer, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  store %struct.paste_buffer* null, %struct.paste_buffer** %2, align 8
  br label %18

13:                                               ; preds = %7
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds %struct.paste_buffer, %struct.paste_buffer* %4, i32 0, i32 0
  store i8* %14, i8** %15, align 8
  %16 = load i32, i32* @paste_name_tree, align 4
  %17 = call %struct.paste_buffer* @RB_FIND(i32 %16, i32* @paste_by_name, %struct.paste_buffer* %4)
  store %struct.paste_buffer* %17, %struct.paste_buffer** %2, align 8
  br label %18

18:                                               ; preds = %13, %12
  %19 = load %struct.paste_buffer*, %struct.paste_buffer** %2, align 8
  ret %struct.paste_buffer* %19
}

declare dso_local %struct.paste_buffer* @RB_FIND(i32, i32*, %struct.paste_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

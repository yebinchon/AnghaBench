; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_free_footnote_list.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_free_footnote_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.footnote_list = type { %struct.footnote_item* }
%struct.footnote_item = type { i32, %struct.footnote_item* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.footnote_list*, i32)* @free_footnote_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_footnote_list(%struct.footnote_list* %0, i32 %1) #0 {
  %3 = alloca %struct.footnote_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.footnote_item*, align 8
  %6 = alloca %struct.footnote_item*, align 8
  store %struct.footnote_list* %0, %struct.footnote_list** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.footnote_list*, %struct.footnote_list** %3, align 8
  %8 = getelementptr inbounds %struct.footnote_list, %struct.footnote_list* %7, i32 0, i32 0
  %9 = load %struct.footnote_item*, %struct.footnote_item** %8, align 8
  store %struct.footnote_item* %9, %struct.footnote_item** %5, align 8
  br label %10

10:                                               ; preds = %24, %2
  %11 = load %struct.footnote_item*, %struct.footnote_item** %5, align 8
  %12 = icmp ne %struct.footnote_item* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load %struct.footnote_item*, %struct.footnote_item** %5, align 8
  %15 = getelementptr inbounds %struct.footnote_item, %struct.footnote_item* %14, i32 0, i32 1
  %16 = load %struct.footnote_item*, %struct.footnote_item** %15, align 8
  store %struct.footnote_item* %16, %struct.footnote_item** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.footnote_item*, %struct.footnote_item** %5, align 8
  %21 = getelementptr inbounds %struct.footnote_item, %struct.footnote_item* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @free_footnote_ref(i32 %22)
  br label %24

24:                                               ; preds = %19, %13
  %25 = load %struct.footnote_item*, %struct.footnote_item** %5, align 8
  %26 = call i32 @free(%struct.footnote_item* %25)
  %27 = load %struct.footnote_item*, %struct.footnote_item** %6, align 8
  store %struct.footnote_item* %27, %struct.footnote_item** %5, align 8
  br label %10

28:                                               ; preds = %10
  ret void
}

declare dso_local i32 @free_footnote_ref(i32) #1

declare dso_local i32 @free(%struct.footnote_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

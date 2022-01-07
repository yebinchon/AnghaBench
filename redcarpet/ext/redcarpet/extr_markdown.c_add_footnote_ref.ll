; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_add_footnote_ref.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_add_footnote_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.footnote_list = type { i32, %struct.footnote_item*, %struct.footnote_item* }
%struct.footnote_item = type { %struct.footnote_item*, %struct.footnote_ref* }
%struct.footnote_ref = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.footnote_list*, %struct.footnote_ref*)* @add_footnote_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_footnote_ref(%struct.footnote_list* %0, %struct.footnote_ref* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.footnote_list*, align 8
  %5 = alloca %struct.footnote_ref*, align 8
  %6 = alloca %struct.footnote_item*, align 8
  store %struct.footnote_list* %0, %struct.footnote_list** %4, align 8
  store %struct.footnote_ref* %1, %struct.footnote_ref** %5, align 8
  %7 = call %struct.footnote_item* @calloc(i32 1, i32 16)
  store %struct.footnote_item* %7, %struct.footnote_item** %6, align 8
  %8 = load %struct.footnote_item*, %struct.footnote_item** %6, align 8
  %9 = icmp ne %struct.footnote_item* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

11:                                               ; preds = %2
  %12 = load %struct.footnote_ref*, %struct.footnote_ref** %5, align 8
  %13 = load %struct.footnote_item*, %struct.footnote_item** %6, align 8
  %14 = getelementptr inbounds %struct.footnote_item, %struct.footnote_item* %13, i32 0, i32 1
  store %struct.footnote_ref* %12, %struct.footnote_ref** %14, align 8
  %15 = load %struct.footnote_list*, %struct.footnote_list** %4, align 8
  %16 = getelementptr inbounds %struct.footnote_list, %struct.footnote_list* %15, i32 0, i32 2
  %17 = load %struct.footnote_item*, %struct.footnote_item** %16, align 8
  %18 = icmp eq %struct.footnote_item* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load %struct.footnote_item*, %struct.footnote_item** %6, align 8
  %21 = load %struct.footnote_list*, %struct.footnote_list** %4, align 8
  %22 = getelementptr inbounds %struct.footnote_list, %struct.footnote_list* %21, i32 0, i32 1
  store %struct.footnote_item* %20, %struct.footnote_item** %22, align 8
  %23 = load %struct.footnote_list*, %struct.footnote_list** %4, align 8
  %24 = getelementptr inbounds %struct.footnote_list, %struct.footnote_list* %23, i32 0, i32 2
  store %struct.footnote_item* %20, %struct.footnote_item** %24, align 8
  br label %34

25:                                               ; preds = %11
  %26 = load %struct.footnote_item*, %struct.footnote_item** %6, align 8
  %27 = load %struct.footnote_list*, %struct.footnote_list** %4, align 8
  %28 = getelementptr inbounds %struct.footnote_list, %struct.footnote_list* %27, i32 0, i32 1
  %29 = load %struct.footnote_item*, %struct.footnote_item** %28, align 8
  %30 = getelementptr inbounds %struct.footnote_item, %struct.footnote_item* %29, i32 0, i32 0
  store %struct.footnote_item* %26, %struct.footnote_item** %30, align 8
  %31 = load %struct.footnote_item*, %struct.footnote_item** %6, align 8
  %32 = load %struct.footnote_list*, %struct.footnote_list** %4, align 8
  %33 = getelementptr inbounds %struct.footnote_list, %struct.footnote_list* %32, i32 0, i32 1
  store %struct.footnote_item* %31, %struct.footnote_item** %33, align 8
  br label %34

34:                                               ; preds = %25, %19
  %35 = load %struct.footnote_list*, %struct.footnote_list** %4, align 8
  %36 = getelementptr inbounds %struct.footnote_list, %struct.footnote_list* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %10
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.footnote_item* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

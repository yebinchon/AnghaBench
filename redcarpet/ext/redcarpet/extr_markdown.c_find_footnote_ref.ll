; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_find_footnote_ref.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_find_footnote_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.footnote_ref = type { i32 }
%struct.footnote_list = type { %struct.footnote_item* }
%struct.footnote_item = type { %struct.footnote_item*, %struct.footnote_ref* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.footnote_ref* (%struct.footnote_list*, i32*, i64)* @find_footnote_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.footnote_ref* @find_footnote_ref(%struct.footnote_list* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.footnote_ref*, align 8
  %5 = alloca %struct.footnote_list*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.footnote_item*, align 8
  store %struct.footnote_list* %0, %struct.footnote_list** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @hash_link_ref(i32* %10, i64 %11)
  store i32 %12, i32* %8, align 4
  store %struct.footnote_item* null, %struct.footnote_item** %9, align 8
  %13 = load %struct.footnote_list*, %struct.footnote_list** %5, align 8
  %14 = getelementptr inbounds %struct.footnote_list, %struct.footnote_list* %13, i32 0, i32 0
  %15 = load %struct.footnote_item*, %struct.footnote_item** %14, align 8
  store %struct.footnote_item* %15, %struct.footnote_item** %9, align 8
  br label %16

16:                                               ; preds = %31, %3
  %17 = load %struct.footnote_item*, %struct.footnote_item** %9, align 8
  %18 = icmp ne %struct.footnote_item* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load %struct.footnote_item*, %struct.footnote_item** %9, align 8
  %21 = getelementptr inbounds %struct.footnote_item, %struct.footnote_item* %20, i32 0, i32 1
  %22 = load %struct.footnote_ref*, %struct.footnote_ref** %21, align 8
  %23 = getelementptr inbounds %struct.footnote_ref, %struct.footnote_ref* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.footnote_item*, %struct.footnote_item** %9, align 8
  %29 = getelementptr inbounds %struct.footnote_item, %struct.footnote_item* %28, i32 0, i32 1
  %30 = load %struct.footnote_ref*, %struct.footnote_ref** %29, align 8
  store %struct.footnote_ref* %30, %struct.footnote_ref** %4, align 8
  br label %36

31:                                               ; preds = %19
  %32 = load %struct.footnote_item*, %struct.footnote_item** %9, align 8
  %33 = getelementptr inbounds %struct.footnote_item, %struct.footnote_item* %32, i32 0, i32 0
  %34 = load %struct.footnote_item*, %struct.footnote_item** %33, align 8
  store %struct.footnote_item* %34, %struct.footnote_item** %9, align 8
  br label %16

35:                                               ; preds = %16
  store %struct.footnote_ref* null, %struct.footnote_ref** %4, align 8
  br label %36

36:                                               ; preds = %35, %27
  %37 = load %struct.footnote_ref*, %struct.footnote_ref** %4, align 8
  ret %struct.footnote_ref* %37
}

declare dso_local i32 @hash_link_ref(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

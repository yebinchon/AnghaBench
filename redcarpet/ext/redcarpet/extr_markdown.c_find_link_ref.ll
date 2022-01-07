; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_find_link_ref.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_find_link_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_ref = type { i32, %struct.link_ref* }

@REF_TABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.link_ref* (%struct.link_ref**, i32*, i64)* @find_link_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.link_ref* @find_link_ref(%struct.link_ref** %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.link_ref*, align 8
  %5 = alloca %struct.link_ref**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.link_ref*, align 8
  store %struct.link_ref** %0, %struct.link_ref*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @hash_link_ref(i32* %10, i64 %11)
  store i32 %12, i32* %8, align 4
  store %struct.link_ref* null, %struct.link_ref** %9, align 8
  %13 = load %struct.link_ref**, %struct.link_ref*** %5, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @REF_TABLE_SIZE, align 4
  %16 = urem i32 %14, %15
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.link_ref*, %struct.link_ref** %13, i64 %17
  %19 = load %struct.link_ref*, %struct.link_ref** %18, align 8
  store %struct.link_ref* %19, %struct.link_ref** %9, align 8
  br label %20

20:                                               ; preds = %31, %3
  %21 = load %struct.link_ref*, %struct.link_ref** %9, align 8
  %22 = icmp ne %struct.link_ref* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load %struct.link_ref*, %struct.link_ref** %9, align 8
  %25 = getelementptr inbounds %struct.link_ref, %struct.link_ref* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load %struct.link_ref*, %struct.link_ref** %9, align 8
  store %struct.link_ref* %30, %struct.link_ref** %4, align 8
  br label %36

31:                                               ; preds = %23
  %32 = load %struct.link_ref*, %struct.link_ref** %9, align 8
  %33 = getelementptr inbounds %struct.link_ref, %struct.link_ref* %32, i32 0, i32 1
  %34 = load %struct.link_ref*, %struct.link_ref** %33, align 8
  store %struct.link_ref* %34, %struct.link_ref** %9, align 8
  br label %20

35:                                               ; preds = %20
  store %struct.link_ref* null, %struct.link_ref** %4, align 8
  br label %36

36:                                               ; preds = %35, %29
  %37 = load %struct.link_ref*, %struct.link_ref** %4, align 8
  ret %struct.link_ref* %37
}

declare dso_local i32 @hash_link_ref(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

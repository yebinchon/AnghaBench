; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_add_link_ref.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_add_link_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_ref = type { i64, %struct.link_ref* }

@REF_TABLE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.link_ref* (%struct.link_ref**, i32*, i64)* @add_link_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.link_ref* @add_link_ref(%struct.link_ref** %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.link_ref*, align 8
  %5 = alloca %struct.link_ref**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.link_ref*, align 8
  store %struct.link_ref** %0, %struct.link_ref*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = call %struct.link_ref* @calloc(i32 1, i32 16)
  store %struct.link_ref* %9, %struct.link_ref** %8, align 8
  %10 = load %struct.link_ref*, %struct.link_ref** %8, align 8
  %11 = icmp ne %struct.link_ref* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store %struct.link_ref* null, %struct.link_ref** %4, align 8
  br label %38

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i64 @hash_link_ref(i32* %14, i64 %15)
  %17 = load %struct.link_ref*, %struct.link_ref** %8, align 8
  %18 = getelementptr inbounds %struct.link_ref, %struct.link_ref* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.link_ref**, %struct.link_ref*** %5, align 8
  %20 = load %struct.link_ref*, %struct.link_ref** %8, align 8
  %21 = getelementptr inbounds %struct.link_ref, %struct.link_ref* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @REF_TABLE_SIZE, align 8
  %24 = urem i64 %22, %23
  %25 = getelementptr inbounds %struct.link_ref*, %struct.link_ref** %19, i64 %24
  %26 = load %struct.link_ref*, %struct.link_ref** %25, align 8
  %27 = load %struct.link_ref*, %struct.link_ref** %8, align 8
  %28 = getelementptr inbounds %struct.link_ref, %struct.link_ref* %27, i32 0, i32 1
  store %struct.link_ref* %26, %struct.link_ref** %28, align 8
  %29 = load %struct.link_ref*, %struct.link_ref** %8, align 8
  %30 = load %struct.link_ref**, %struct.link_ref*** %5, align 8
  %31 = load %struct.link_ref*, %struct.link_ref** %8, align 8
  %32 = getelementptr inbounds %struct.link_ref, %struct.link_ref* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @REF_TABLE_SIZE, align 8
  %35 = urem i64 %33, %34
  %36 = getelementptr inbounds %struct.link_ref*, %struct.link_ref** %30, i64 %35
  store %struct.link_ref* %29, %struct.link_ref** %36, align 8
  %37 = load %struct.link_ref*, %struct.link_ref** %8, align 8
  store %struct.link_ref* %37, %struct.link_ref** %4, align 8
  br label %38

38:                                               ; preds = %13, %12
  %39 = load %struct.link_ref*, %struct.link_ref** %4, align 8
  ret %struct.link_ref* %39
}

declare dso_local %struct.link_ref* @calloc(i32, i32) #1

declare dso_local i64 @hash_link_ref(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

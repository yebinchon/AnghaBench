; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_free_link_refs.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_free_link_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_ref = type { i32, i32, %struct.link_ref* }

@REF_TABLE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_ref**)* @free_link_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_link_refs(%struct.link_ref** %0) #0 {
  %2 = alloca %struct.link_ref**, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.link_ref*, align 8
  %5 = alloca %struct.link_ref*, align 8
  store %struct.link_ref** %0, %struct.link_ref*** %2, align 8
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %34, %1
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @REF_TABLE_SIZE, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %6
  %11 = load %struct.link_ref**, %struct.link_ref*** %2, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds %struct.link_ref*, %struct.link_ref** %11, i64 %12
  %14 = load %struct.link_ref*, %struct.link_ref** %13, align 8
  store %struct.link_ref* %14, %struct.link_ref** %4, align 8
  br label %15

15:                                               ; preds = %18, %10
  %16 = load %struct.link_ref*, %struct.link_ref** %4, align 8
  %17 = icmp ne %struct.link_ref* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load %struct.link_ref*, %struct.link_ref** %4, align 8
  %20 = getelementptr inbounds %struct.link_ref, %struct.link_ref* %19, i32 0, i32 2
  %21 = load %struct.link_ref*, %struct.link_ref** %20, align 8
  store %struct.link_ref* %21, %struct.link_ref** %5, align 8
  %22 = load %struct.link_ref*, %struct.link_ref** %4, align 8
  %23 = getelementptr inbounds %struct.link_ref, %struct.link_ref* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bufrelease(i32 %24)
  %26 = load %struct.link_ref*, %struct.link_ref** %4, align 8
  %27 = getelementptr inbounds %struct.link_ref, %struct.link_ref* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @bufrelease(i32 %28)
  %30 = load %struct.link_ref*, %struct.link_ref** %4, align 8
  %31 = call i32 @free(%struct.link_ref* %30)
  %32 = load %struct.link_ref*, %struct.link_ref** %5, align 8
  store %struct.link_ref* %32, %struct.link_ref** %4, align 8
  br label %15

33:                                               ; preds = %15
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %3, align 8
  br label %6

37:                                               ; preds = %6
  ret void
}

declare dso_local i32 @bufrelease(i32) #1

declare dso_local i32 @free(%struct.link_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_timer.c_timer_add_trigger_dependencies.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_timer.c_timer_add_trigger_dependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@UNIT_TRIGGERS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c".service\00", align 1
@UNIT_BEFORE = common dso_local global i32 0, align 4
@UNIT_DEPENDENCY_IMPLICIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @timer_add_trigger_dependencies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timer_add_trigger_dependencies(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @assert(i32* %6)
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.TYPE_4__* @UNIT(i32* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @UNIT_TRIGGERS, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @hashmap_isempty(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call %struct.TYPE_4__* @UNIT(i32* %19)
  %21 = call i32 @unit_load_related_unit(%struct.TYPE_4__* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32** %4)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %34

26:                                               ; preds = %18
  %27 = load i32*, i32** %3, align 8
  %28 = call %struct.TYPE_4__* @UNIT(i32* %27)
  %29 = load i32, i32* @UNIT_BEFORE, align 4
  %30 = load i64, i64* @UNIT_TRIGGERS, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @UNIT_DEPENDENCY_IMPLICIT, align 4
  %33 = call i32 @unit_add_two_dependencies(%struct.TYPE_4__* %28, i32 %29, i64 %30, i32* %31, i32 1, i32 %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %26, %24, %17
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @hashmap_isempty(i32) #1

declare dso_local %struct.TYPE_4__* @UNIT(i32*) #1

declare dso_local i32 @unit_load_related_unit(%struct.TYPE_4__*, i8*, i32**) #1

declare dso_local i32 @unit_add_two_dependencies(%struct.TYPE_4__*, i32, i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_slice.c_slice_add_default_dependencies.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_slice.c_slice_add_default_dependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@UNIT_BEFORE = common dso_local global i32 0, align 4
@UNIT_CONFLICTS = common dso_local global i32 0, align 4
@SPECIAL_SHUTDOWN_TARGET = common dso_local global i32 0, align 4
@UNIT_DEPENDENCY_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @slice_add_default_dependencies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slice_add_default_dependencies(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @assert(i32* %5)
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.TYPE_3__* @UNIT(i32* %7)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call %struct.TYPE_3__* @UNIT(i32* %14)
  %16 = load i32, i32* @UNIT_BEFORE, align 4
  %17 = load i32, i32* @UNIT_CONFLICTS, align 4
  %18 = load i32, i32* @SPECIAL_SHUTDOWN_TARGET, align 4
  %19 = load i32, i32* @UNIT_DEPENDENCY_DEFAULT, align 4
  %20 = call i32 @unit_add_two_dependencies_by_name(%struct.TYPE_3__* %15, i32 %16, i32 %17, i32 %18, i32 1, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %23, %12
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @assert(i32*) #1

declare dso_local %struct.TYPE_3__* @UNIT(i32*) #1

declare dso_local i32 @unit_add_two_dependencies_by_name(%struct.TYPE_3__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

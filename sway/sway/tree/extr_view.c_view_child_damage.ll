; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_child_damage.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_child_damage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view_child = type { %struct.TYPE_6__*, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 (%struct.sway_view_child*, i32*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_view_child*, i32)* @view_child_damage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @view_child_damage(%struct.sway_view_child* %0, i32 %1) #0 {
  %3 = alloca %struct.sway_view_child*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sway_view_child* %0, %struct.sway_view_child** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sway_view_child*, %struct.sway_view_child** %3, align 8
  %8 = icmp ne %struct.sway_view_child* %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load %struct.sway_view_child*, %struct.sway_view_child** %3, align 8
  %11 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load %struct.sway_view_child*, %struct.sway_view_child** %3, align 8
  %16 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.sway_view_child*, %struct.sway_view_child** %3, align 8
  %21 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19, %14, %9, %2
  br label %60

27:                                               ; preds = %19
  %28 = load %struct.sway_view_child*, %struct.sway_view_child** %3, align 8
  %29 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32 (%struct.sway_view_child*, i32*, i32*)*, i32 (%struct.sway_view_child*, i32*, i32*)** %31, align 8
  %33 = load %struct.sway_view_child*, %struct.sway_view_child** %3, align 8
  %34 = call i32 %32(%struct.sway_view_child* %33, i32* %5, i32* %6)
  %35 = load %struct.sway_view_child*, %struct.sway_view_child** %3, align 8
  %36 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.sway_view_child*, %struct.sway_view_child** %3, align 8
  %39 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = load %struct.sway_view_child*, %struct.sway_view_child** %3, align 8
  %49 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @desktop_damage_surface(i32 %37, i64 %47, i64 %57, i32 %58)
  br label %60

60:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @desktop_damage_surface(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

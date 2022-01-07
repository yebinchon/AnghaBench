; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_input.c_check_bindings.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_input.c_check_bindings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.swaybar_binding** }
%struct.swaybar_binding = type { i64, i32 }

@WL_POINTER_BUTTON_STATE_RELEASED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swaybar*, i64, i64)* @check_bindings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_bindings(%struct.swaybar* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.swaybar*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.swaybar_binding*, align 8
  store %struct.swaybar* %0, %struct.swaybar** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @WL_POINTER_BUTTON_STATE_RELEASED, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %53, %3
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.swaybar*, %struct.swaybar** %5, align 8
  %18 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %16, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %15
  %26 = load %struct.swaybar*, %struct.swaybar** %5, align 8
  %27 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load %struct.swaybar_binding**, %struct.swaybar_binding*** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.swaybar_binding*, %struct.swaybar_binding** %32, i64 %34
  %36 = load %struct.swaybar_binding*, %struct.swaybar_binding** %35, align 8
  store %struct.swaybar_binding* %36, %struct.swaybar_binding** %10, align 8
  %37 = load %struct.swaybar_binding*, %struct.swaybar_binding** %10, align 8
  %38 = getelementptr inbounds %struct.swaybar_binding, %struct.swaybar_binding* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %25
  %43 = load %struct.swaybar_binding*, %struct.swaybar_binding** %10, align 8
  %44 = getelementptr inbounds %struct.swaybar_binding, %struct.swaybar_binding* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.swaybar*, %struct.swaybar** %5, align 8
  %50 = load %struct.swaybar_binding*, %struct.swaybar_binding** %10, align 8
  %51 = call i32 @ipc_execute_binding(%struct.swaybar* %49, %struct.swaybar_binding* %50)
  store i32 1, i32* %4, align 4
  br label %57

52:                                               ; preds = %42, %25
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %15

56:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %48
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @ipc_execute_binding(%struct.swaybar*, %struct.swaybar_binding*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

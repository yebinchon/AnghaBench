; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_determine_bar_visibility.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_determine_bar_visibility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.bar_config** }
%struct.bar_config = type { i32, i32, i32, i32 }

@config = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @determine_bar_visibility to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @determine_bar_visibility(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bar_config*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %65, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %7, %12
  br i1 %13, label %14, label %68

14:                                               ; preds = %6
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.bar_config**, %struct.bar_config*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.bar_config*, %struct.bar_config** %19, i64 %21
  %23 = load %struct.bar_config*, %struct.bar_config** %22, align 8
  store %struct.bar_config* %23, %struct.bar_config** %4, align 8
  %24 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %25 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  br label %65

29:                                               ; preds = %14
  %30 = load i32, i32* %2, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %33 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %31, %34
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %5, align 4
  %38 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %39 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %29
  %44 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %45 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %43
  %49 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %50 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %53 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @strcmp(i32 %51, i32 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %48, %43
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %60 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %62 = call i32 @ipc_event_bar_state_update(%struct.bar_config* %61)
  br label %63

63:                                               ; preds = %57, %48
  br label %64

64:                                               ; preds = %63, %29
  br label %65

65:                                               ; preds = %64, %28
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %6

68:                                               ; preds = %6
  ret void
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @ipc_event_bar_state_update(%struct.bar_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_tox_old_code.h_tox_callback_group_namelist_change.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_tox_old_code.h_tox_callback_group_namelist_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tox_callback_group_namelist_change(%struct.TYPE_7__* %0, void (%struct.TYPE_7__*, i32, i32, i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca void (%struct.TYPE_7__*, i32, i32, i32, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store void (%struct.TYPE_7__*, i32, i32, i32, i8*)* %1, void (%struct.TYPE_7__*, i32, i32, i32, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %7, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load void (%struct.TYPE_7__*, i32, i32, i32, i8*)*, void (%struct.TYPE_7__*, i32, i32, i32, i8*)** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @g_callback_group_namelistchange(i32 %11, void (%struct.TYPE_7__*, i32, i32, i32, i8*)* %12, i8* %13)
  ret void
}

declare dso_local i32 @g_callback_group_namelistchange(i32, void (%struct.TYPE_7__*, i32, i32, i32, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

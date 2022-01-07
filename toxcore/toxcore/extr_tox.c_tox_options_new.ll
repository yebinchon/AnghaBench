; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_tox.c_tox_options_new.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_tox.c_tox_options_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Tox_Options = type { i32 }

@TOX_ERR_OPTIONS_NEW_OK = common dso_local global i32 0, align 4
@TOX_ERR_OPTIONS_NEW_MALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Tox_Options* @tox_options_new(i32* %0) #0 {
  %2 = alloca %struct.Tox_Options*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.Tox_Options*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call %struct.Tox_Options* @calloc(i32 4, i32 1)
  store %struct.Tox_Options* %5, %struct.Tox_Options** %4, align 8
  %6 = load %struct.Tox_Options*, %struct.Tox_Options** %4, align 8
  %7 = icmp ne %struct.Tox_Options* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.Tox_Options*, %struct.Tox_Options** %4, align 8
  %10 = call i32 @tox_options_default(%struct.Tox_Options* %9)
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @TOX_ERR_OPTIONS_NEW_OK, align 4
  %13 = call i32 @SET_ERROR_PARAMETER(i32* %11, i32 %12)
  %14 = load %struct.Tox_Options*, %struct.Tox_Options** %4, align 8
  store %struct.Tox_Options* %14, %struct.Tox_Options** %2, align 8
  br label %19

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @TOX_ERR_OPTIONS_NEW_MALLOC, align 4
  %18 = call i32 @SET_ERROR_PARAMETER(i32* %16, i32 %17)
  store %struct.Tox_Options* null, %struct.Tox_Options** %2, align 8
  br label %19

19:                                               ; preds = %15, %8
  %20 = load %struct.Tox_Options*, %struct.Tox_Options** %2, align 8
  ret %struct.Tox_Options* %20
}

declare dso_local %struct.Tox_Options* @calloc(i32, i32) #1

declare dso_local i32 @tox_options_default(%struct.Tox_Options*) #1

declare dso_local i32 @SET_ERROR_PARAMETER(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

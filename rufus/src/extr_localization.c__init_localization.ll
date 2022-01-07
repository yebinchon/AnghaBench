; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_localization.c__init_localization.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_localization.c__init_localization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@loc_dlg = common dso_local global %struct.TYPE_3__* null, align 8
@locale_list = common dso_local global i32 0, align 4
@LOC_HTAB_SIZE = common dso_local global i32 0, align 4
@htab_loc = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@localization_initialized = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_init_localization(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %15, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @loc_dlg, align 8
  %7 = call i64 @ARRAYSIZE(%struct.TYPE_3__* %6)
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @loc_dlg, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call i32 @list_init(i32* %13)
  br label %15

15:                                               ; preds = %9
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %3, align 8
  br label %4

18:                                               ; preds = %4
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = call i32 @list_init(i32* @locale_list)
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i32, i32* @LOC_HTAB_SIZE, align 4
  %25 = call i32 @htab_create(i32 %24, i32* @htab_loc)
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* @localization_initialized, align 4
  ret void
}

declare dso_local i64 @ARRAYSIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @htab_create(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

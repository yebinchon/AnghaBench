; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_update_view_menu.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_update_view_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@Globals = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@ID_VIEW_SORT_NAME = common dso_local global i32 0, align 4
@SORT_NAME = common dso_local global i64 0, align 8
@MF_CHECKED = common dso_local global i32 0, align 4
@MF_UNCHECKED = common dso_local global i32 0, align 4
@ID_VIEW_SORT_TYPE = common dso_local global i32 0, align 4
@SORT_EXT = common dso_local global i64 0, align 8
@ID_VIEW_SORT_SIZE = common dso_local global i32 0, align 4
@SORT_SIZE = common dso_local global i64 0, align 8
@ID_VIEW_SORT_DATE = common dso_local global i32 0, align 4
@SORT_DATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @update_view_menu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_view_menu(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Globals, i32 0, i32 0), align 4
  %4 = load i32, i32* @ID_VIEW_SORT_NAME, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SORT_NAME, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @MF_CHECKED, align 4
  br label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @MF_UNCHECKED, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  %16 = call i32 @CheckMenuItem(i32 %3, i32 %4, i32 %15)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Globals, i32 0, i32 0), align 4
  %18 = load i32, i32* @ID_VIEW_SORT_TYPE, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SORT_EXT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* @MF_CHECKED, align 4
  br label %28

26:                                               ; preds = %14
  %27 = load i32, i32* @MF_UNCHECKED, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = call i32 @CheckMenuItem(i32 %17, i32 %18, i32 %29)
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Globals, i32 0, i32 0), align 4
  %32 = load i32, i32* @ID_VIEW_SORT_SIZE, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SORT_SIZE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @MF_CHECKED, align 4
  br label %42

40:                                               ; preds = %28
  %41 = load i32, i32* @MF_UNCHECKED, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = call i32 @CheckMenuItem(i32 %31, i32 %32, i32 %43)
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Globals, i32 0, i32 0), align 4
  %46 = load i32, i32* @ID_VIEW_SORT_DATE, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SORT_DATE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* @MF_CHECKED, align 4
  br label %56

54:                                               ; preds = %42
  %55 = load i32, i32* @MF_UNCHECKED, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = call i32 @CheckMenuItem(i32 %45, i32 %46, i32 %57)
  ret void
}

declare dso_local i32 @CheckMenuItem(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

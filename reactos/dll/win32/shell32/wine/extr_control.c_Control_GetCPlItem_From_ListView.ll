; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_control.c_Control_GetCPlItem_From_ListView.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_control.c_Control_GetCPlItem_From_ListView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64, i32 }

@LVM_GETNEXTITEM = common dso_local global i32 0, align 4
@LVNI_FOCUSED = common dso_local global i32 0, align 4
@LVNI_SELECTED = common dso_local global i32 0, align 4
@LVIF_PARAM = common dso_local global i32 0, align 4
@LVM_GETITEMW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*)* @Control_GetCPlItem_From_ListView to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Control_GetCPlItem_From_ListView(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @LVM_GETNEXTITEM, align 4
  %10 = load i32, i32* @LVNI_FOCUSED, align 4
  %11 = load i32, i32* @LVNI_SELECTED, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @SendMessageW(i32 %8, i32 %9, i32 -1, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %33

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* @LVIF_PARAM, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i32 %19, i32* %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @LVM_GETITEMW, align 4
  %25 = ptrtoint %struct.TYPE_4__* %4 to i32
  %26 = call i32 @SendMessageW(i32 %23, i32 %24, i32 0, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %2, align 8
  br label %34

32:                                               ; preds = %16
  br label %33

33:                                               ; preds = %32, %1
  store i32* null, i32** %2, align 8
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i32*, i32** %2, align 8
  ret i32* %35
}

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

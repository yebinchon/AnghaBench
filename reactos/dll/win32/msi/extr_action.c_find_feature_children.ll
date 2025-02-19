; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_find_feature_children.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_find_feature_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @find_feature_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_feature_children(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @MSI_RecordGetString(i32* %11, i32 1)
  %13 = call %struct.TYPE_5__* @msi_get_loaded_feature(i32* %10, i32 %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %8, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %17, i32* %3, align 4
  br label %40

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %24, i32* %3, align 4
  br label %40

25:                                               ; preds = %18
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_5__* @msi_get_loaded_feature(i32* %26, i32 %29)
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %7, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %34, i32* %3, align 4
  br label %40

35:                                               ; preds = %25
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = call i32 @add_feature_child(%struct.TYPE_5__* %36, %struct.TYPE_5__* %37)
  %39 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %33, %23, %16
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.TYPE_5__* @msi_get_loaded_feature(i32*, i32) #1

declare dso_local i32 @MSI_RecordGetString(i32*, i32) #1

declare dso_local i32 @add_feature_child(%struct.TYPE_5__*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

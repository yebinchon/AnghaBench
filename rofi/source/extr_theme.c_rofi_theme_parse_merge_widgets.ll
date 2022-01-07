; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_theme.c_rofi_theme_parse_merge_widgets.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_theme.c_rofi_theme_parse_merge_widgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_8__**, i32, i32 }

@rofi_theme = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rofi_theme_parse_merge_widgets(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = icmp ne %struct.TYPE_8__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @g_assert(i32 %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @g_assert(i32 %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rofi_theme, align 8
  %17 = icmp eq %struct.TYPE_8__* %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @g_strcmp0(i32 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @rofi_theme_widget_add_properties(%struct.TYPE_8__* %25, i32 %28)
  br label %59

30:                                               ; preds = %18, %2
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.TYPE_8__* @rofi_theme_find_or_create_name(%struct.TYPE_8__* %31, i32 %34)
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %5, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @rofi_theme_widget_add_properties(%struct.TYPE_8__* %36, i32 %39)
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %56, %30
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %51, i64 %53
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  call void @rofi_theme_parse_merge_widgets(%struct.TYPE_8__* %48, %struct.TYPE_8__* %55)
  br label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %6, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %41

59:                                               ; preds = %24, %41
  ret void
}

declare dso_local i32 @g_assert(i32) #1

declare dso_local i64 @g_strcmp0(i32, i8*) #1

declare dso_local i32 @rofi_theme_widget_add_properties(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.TYPE_8__* @rofi_theme_find_or_create_name(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_gtk.c_gui_mch_add_menu.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_gtk.c_gui_mch_add_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i8*, i32, i32*, i32, %struct.TYPE_5__* }

@gui = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@p_go = common dso_local global i32 0, align 4
@GO_TEAROFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_add_menu(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 93
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @menu_is_popup(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14, %2
  %21 = call i8* (...) @gtk_menu_new()
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  br label %115

25:                                               ; preds = %14
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %5, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %31, %25
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @menu_is_menubar(i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36, %31
  br label %115

43:                                               ; preds = %36
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = icmp ne %struct.TYPE_5__* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  br label %52

50:                                               ; preds = %43
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 1), align 8
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i32* [ %49, %46 ], [ %51, %50 ]
  store i32* %53, i32** %6, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @menu_item_new(%struct.TYPE_5__* %54, i32* %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = icmp ne %struct.TYPE_5__* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %52
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @menu_is_popup(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %65, %59, %52
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @GTK_MENU_SHELL(i32* %69)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @gtk_menu_shell_insert(i32 %70, i32 %73, i32 %74)
  %76 = call i8* (...) @gtk_menu_new()
  %77 = bitcast i8* %76 to i32*
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  store i32* %77, i32** %79, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @GTK_MENU(i32* %82)
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 0), align 8
  %85 = call i32 @gtk_menu_set_accel_group(i32 %83, i32 %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @GTK_MENU_ITEM(i32 %88)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @gtk_menu_item_set_submenu(i32 %89, i32* %92)
  %94 = call i32 (...) @gtk_tearoff_menu_item_new()
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @p_go, align 4
  %98 = load i32, i32* @GO_TEAROFF, align 4
  %99 = call i32* @vim_strchr(i32 %97, i32 %98)
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %68
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @gtk_widget_show(i32 %104)
  br label %106

106:                                              ; preds = %101, %68
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @GTK_MENU(i32* %109)
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @gtk_menu_prepend(i32 %110, i32 %113)
  br label %115

115:                                              ; preds = %106, %42, %20
  ret void
}

declare dso_local i64 @menu_is_popup(i8*) #1

declare dso_local i8* @gtk_menu_new(...) #1

declare dso_local i32 @menu_is_menubar(i8*) #1

declare dso_local i32 @menu_item_new(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @gtk_menu_shell_insert(i32, i32, i32) #1

declare dso_local i32 @GTK_MENU_SHELL(i32*) #1

declare dso_local i32 @gtk_menu_set_accel_group(i32, i32) #1

declare dso_local i32 @GTK_MENU(i32*) #1

declare dso_local i32 @gtk_menu_item_set_submenu(i32, i32*) #1

declare dso_local i32 @GTK_MENU_ITEM(i32) #1

declare dso_local i32 @gtk_tearoff_menu_item_new(...) #1

declare dso_local i32* @vim_strchr(i32, i32) #1

declare dso_local i32 @gtk_widget_show(i32) #1

declare dso_local i32 @gtk_menu_prepend(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

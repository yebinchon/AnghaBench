; ModuleID = '/home/carl/AnghaBench/rofi/source/widgets/extr_textbox.c_textbox_keybinding.c'
source_filename = "/home/carl/AnghaBench/rofi/source/widgets/extr_textbox.c_textbox_keybinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }

@TB_EDITABLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @textbox_keybinding(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %7 = icmp eq %struct.TYPE_16__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

9:                                                ; preds = %2
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @TB_EDITABLE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %68

17:                                               ; preds = %9
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %66 [
    i32 139, label %19
    i32 138, label %26
    i32 140, label %33
    i32 136, label %36
    i32 137, label %39
    i32 129, label %42
    i32 128, label %45
    i32 131, label %48
    i32 130, label %51
    i32 132, label %54
    i32 135, label %57
    i32 134, label %60
    i32 133, label %63
  ]

19:                                               ; preds = %17
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = call i32 @textbox_cursor_dec(%struct.TYPE_16__* %20)
  %22 = load i32, i32* @TRUE, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 2, i32 0
  store i32 %25, i32* %3, align 4
  br label %68

26:                                               ; preds = %17
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = call i32 @textbox_cursor_inc(%struct.TYPE_16__* %27)
  %29 = load i32, i32* @TRUE, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 2, i32 0
  store i32 %32, i32* %3, align 4
  br label %68

33:                                               ; preds = %17
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %35 = call i32 @textbox_text(%struct.TYPE_16__* %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %68

36:                                               ; preds = %17
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %38 = call i32 @textbox_cursor(%struct.TYPE_16__* %37, i32 0)
  store i32 2, i32* %3, align 4
  br label %68

39:                                               ; preds = %17
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %41 = call i32 @textbox_cursor_end(%struct.TYPE_16__* %40)
  store i32 2, i32* %3, align 4
  br label %68

42:                                               ; preds = %17
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = call i32 @textbox_cursor_bkspc_word(%struct.TYPE_16__* %43)
  store i32 1, i32* %3, align 4
  br label %68

45:                                               ; preds = %17
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %47 = call i32 @textbox_cursor_del_word(%struct.TYPE_16__* %46)
  store i32 1, i32* %3, align 4
  br label %68

48:                                               ; preds = %17
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = call i32 @textbox_cursor_del_eol(%struct.TYPE_16__* %49)
  store i32 1, i32* %3, align 4
  br label %68

51:                                               ; preds = %17
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = call i32 @textbox_cursor_del_sol(%struct.TYPE_16__* %52)
  store i32 1, i32* %3, align 4
  br label %68

54:                                               ; preds = %17
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %56 = call i32 @textbox_cursor_del(%struct.TYPE_16__* %55)
  store i32 1, i32* %3, align 4
  br label %68

57:                                               ; preds = %17
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %59 = call i32 @textbox_cursor_dec_word(%struct.TYPE_16__* %58)
  store i32 2, i32* %3, align 4
  br label %68

60:                                               ; preds = %17
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %62 = call i32 @textbox_cursor_inc_word(%struct.TYPE_16__* %61)
  store i32 2, i32* %3, align 4
  br label %68

63:                                               ; preds = %17
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %65 = call i32 @textbox_cursor_bkspc(%struct.TYPE_16__* %64)
  store i32 1, i32* %3, align 4
  br label %68

66:                                               ; preds = %17
  %67 = call i32 @g_return_val_if_reached(i32 0)
  br label %68

68:                                               ; preds = %8, %16, %19, %26, %33, %36, %39, %42, %45, %48, %51, %54, %57, %60, %63, %66
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @textbox_cursor_dec(%struct.TYPE_16__*) #1

declare dso_local i32 @textbox_cursor_inc(%struct.TYPE_16__*) #1

declare dso_local i32 @textbox_text(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @textbox_cursor(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @textbox_cursor_end(%struct.TYPE_16__*) #1

declare dso_local i32 @textbox_cursor_bkspc_word(%struct.TYPE_16__*) #1

declare dso_local i32 @textbox_cursor_del_word(%struct.TYPE_16__*) #1

declare dso_local i32 @textbox_cursor_del_eol(%struct.TYPE_16__*) #1

declare dso_local i32 @textbox_cursor_del_sol(%struct.TYPE_16__*) #1

declare dso_local i32 @textbox_cursor_del(%struct.TYPE_16__*) #1

declare dso_local i32 @textbox_cursor_dec_word(%struct.TYPE_16__*) #1

declare dso_local i32 @textbox_cursor_inc_word(%struct.TYPE_16__*) #1

declare dso_local i32 @textbox_cursor_bkspc(%struct.TYPE_16__*) #1

declare dso_local i32 @g_return_val_if_reached(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

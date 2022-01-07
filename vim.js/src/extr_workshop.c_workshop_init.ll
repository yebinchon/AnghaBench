; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_workshop.c_workshop_init.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_workshop.c_workshop_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@p_go = common dso_local global i32 0, align 4
@GO_MENUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"m\00", align 1
@TRUE = common dso_local global i32 0, align 4
@GO_TOOLBAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@GO_FOOTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"go\00", align 1
@vimShell = common dso_local global i32 0, align 4
@XmNwidth = common dso_local global i32 0, align 4
@XmNheight = common dso_local global i32 0, align 4
@app_context = common dso_local global i32 0, align 4
@XtIMAlternateInput = common dso_local global i32 0, align 4
@workshopInitDone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workshop_init() #0 {
  %1 = alloca [64 x i32], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %2, align 4
  %7 = getelementptr inbounds [64 x i32], [64 x i32]* %1, i64 0, i64 0
  %8 = load i32, i32* @p_go, align 4
  %9 = call i32 @STRCPY(i32* %7, i32 %8)
  %10 = load i32, i32* @p_go, align 4
  %11 = load i32, i32* @GO_MENUS, align 4
  %12 = call i32* @vim_strchr(i32 %10, i32 %11)
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %0
  %15 = getelementptr inbounds [64 x i32], [64 x i32]* %1, i64 0, i64 0
  %16 = call i32 @STRCAT(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %14, %0
  %19 = load i32, i32* @p_go, align 4
  %20 = load i32, i32* @GO_TOOLBAR, align 4
  %21 = call i32* @vim_strchr(i32 %19, i32 %20)
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds [64 x i32], [64 x i32]* %1, i64 0, i64 0
  %25 = call i32 @STRCAT(i32* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* @p_go, align 4
  %29 = load i32, i32* @GO_FOOTER, align 4
  %30 = call i32* @vim_strchr(i32 %28, i32 %29)
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = getelementptr inbounds [64 x i32], [64 x i32]* %1, i64 0, i64 0
  %34 = call i32 @STRCAT(i32* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* @TRUE, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %2, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = getelementptr inbounds [64 x i32], [64 x i32]* %1, i64 0, i64 0
  %41 = call i32 @set_option_value(i32* bitcast ([3 x i8]* @.str.3 to i32*), i64 0, i32* %40, i32 0)
  br label %42

42:                                               ; preds = %39, %36
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  %43 = call i64 @workshop_get_width_height(i32* %3, i32* %4)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32, i32* @vimShell, align 4
  %47 = load i32, i32* @XmNwidth, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @XmNheight, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @XtVaSetValues(i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32* null)
  br label %52

52:                                               ; preds = %45, %42
  br label %53

53:                                               ; preds = %68, %52
  %54 = load i32, i32* @app_context, align 4
  %55 = call i32 @XtAppPending(i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @XtIMAlternateInput, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @workshopInitDone, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br label %66

66:                                               ; preds = %62, %57, %53
  %67 = phi i1 [ false, %57 ], [ false, %53 ], [ %65, %62 ]
  br i1 %67, label %68, label %72

68:                                               ; preds = %66
  %69 = load i32, i32* @app_context, align 4
  %70 = load i32, i32* @XtIMAlternateInput, align 4
  %71 = call i32 @XtAppProcessEvent(i32 %69, i32 %70)
  br label %53

72:                                               ; preds = %66
  ret void
}

declare dso_local i32 @STRCPY(i32*, i32) #1

declare dso_local i32* @vim_strchr(i32, i32) #1

declare dso_local i32 @STRCAT(i32*, i8*) #1

declare dso_local i32 @set_option_value(i32*, i64, i32*, i32) #1

declare dso_local i64 @workshop_get_width_height(i32*, i32*) #1

declare dso_local i32 @XtVaSetValues(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @XtAppPending(i32) #1

declare dso_local i32 @XtAppProcessEvent(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

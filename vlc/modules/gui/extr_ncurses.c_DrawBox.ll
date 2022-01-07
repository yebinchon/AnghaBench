; ModuleID = '/home/carl/AnghaBench/vlc/modules/gui/extr_ncurses.c_DrawBox.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/gui/extr_ncurses.c_DrawBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COLS = common dso_local global i32 0, align 4
@C_BOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ACS_ULCORNER = common dso_local global i32 0, align 4
@ACS_HLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ACS_URCORNER = common dso_local global i32 0, align 4
@ACS_VLINE = common dso_local global i32 0, align 4
@ACS_LLCORNER = common dso_local global i32 0, align 4
@ACS_LRCORNER = common dso_local global i32 0, align 4
@C_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i8*)* @DrawBox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawBox(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* @COLS, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp sle i32 %13, 3
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %4
  br label %120

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @C_BOX, align 4
  %24 = call i32 @color_set(i32 %23, i32* null)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @strlen(i8* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %33, 2
  %35 = icmp sgt i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %37, 2
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %36, %29
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @ACS_ULCORNER, align 4
  %42 = call i32 @mvaddch(i32 %40, i32 0, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @ACS_HLINE, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = sub nsw i32 %45, %46
  %48 = sub nsw i32 %47, 2
  %49 = sdiv i32 %48, 2
  %50 = call i32 @mvhline(i32 %43, i32 1, i32 %44, i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 %52, %53
  %55 = sub nsw i32 %54, 2
  %56 = sdiv i32 %55, 2
  %57 = add nsw i32 1, %56
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @mvprintw(i32 %51, i32 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = sub nsw i32 %61, %62
  %64 = sdiv i32 %63, 2
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* @ACS_HLINE, align 4
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %68, 1
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %70, %71
  %73 = sdiv i32 %72, 2
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %73, %74
  %76 = sub nsw i32 %69, %75
  %77 = call i32 @mvhline(i32 %60, i32 %66, i32 %67, i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %9, align 4
  %80 = sub nsw i32 %79, 1
  %81 = load i32, i32* @ACS_URCORNER, align 4
  %82 = call i32 @mvaddch(i32 %78, i32 %80, i32 %81)
  store i32 0, i32* %11, align 4
  br label %83

83:                                               ; preds = %97, %39
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %83
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* @ACS_VLINE, align 4
  %91 = call i32 @mvaddch(i32 %89, i32 0, i32 %90)
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %9, align 4
  %94 = sub nsw i32 %93, 1
  %95 = load i32, i32* @ACS_VLINE, align 4
  %96 = call i32 @mvaddch(i32 %92, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %87
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %83

100:                                              ; preds = %83
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* @ACS_LLCORNER, align 4
  %104 = call i32 @mvaddch(i32 %102, i32 0, i32 %103)
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @ACS_HLINE, align 4
  %107 = load i32, i32* %9, align 4
  %108 = sub nsw i32 %107, 2
  %109 = call i32 @mvhline(i32 %105, i32 1, i32 %106, i32 %108)
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %9, align 4
  %112 = sub nsw i32 %111, 1
  %113 = load i32, i32* @ACS_LRCORNER, align 4
  %114 = call i32 @mvaddch(i32 %110, i32 %112, i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %100
  %118 = load i32, i32* @C_DEFAULT, align 4
  %119 = call i32 @color_set(i32 %118, i32* null)
  br label %120

120:                                              ; preds = %18, %117, %100
  ret void
}

declare dso_local i32 @color_set(i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mvaddch(i32, i32, i32) #1

declare dso_local i32 @mvhline(i32, i32, i32, i32) #1

declare dso_local i32 @mvprintw(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

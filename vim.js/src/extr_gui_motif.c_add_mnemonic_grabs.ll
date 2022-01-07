; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_motif.c_add_mnemonic_grabs.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_motif.c_add_mnemonic_grabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xmRowColumnWidgetClass = common dso_local global i64 0, align 8
@XmNrowColumnType = common dso_local global i32 0, align 4
@XmWORK_AREA = common dso_local global i64 0, align 8
@False = common dso_local global i32 0, align 4
@XmNchildren = common dso_local global i32 0, align 4
@XmNnumChildren = common dso_local global i32 0, align 4
@XmNmnemonic = common dso_local global i32 0, align 4
@Mod1Mask = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@GrabModeAsync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @add_mnemonic_grabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_mnemonic_grabs(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i8], align 1
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i8 0, i8* %10, align 1
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @XtIsComposite(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %57

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @XtClass(i32 %16)
  %18 = load i64, i64* @xmRowColumnWidgetClass, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @XmNrowColumnType, align 4
  %23 = call i32 (i32, i32, ...) @XtVaGetValues(i32 %21, i32 %22, i8* %11, i8* null)
  %24 = load i8, i8* %11, align 1
  %25 = zext i8 %24 to i32
  %26 = load i64, i64* @XmWORK_AREA, align 8
  %27 = trunc i64 %26 to i8
  %28 = zext i8 %27 to i32
  %29 = icmp ne i32 %25, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %9, align 4
  br label %33

31:                                               ; preds = %15
  %32 = load i32, i32* @False, align 4
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %31, %20
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %56, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @XmNchildren, align 4
  %39 = load i32, i32* @XmNnumChildren, align 4
  %40 = call i32 (i32, i32, ...) @XtVaGetValues(i32 %37, i32 %38, i32** %6, i32 %39, i32* %7, i8* null)
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %52, %36
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  call void @add_mnemonic_grabs(i32 %46, i32 %51)
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %41

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %33
  br label %80

57:                                               ; preds = %2
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @XmNmnemonic, align 4
  %60 = call i32 (i32, i32, ...) @XtVaGetValues(i32 %58, i32 %59, i8* %10, i8* null)
  %61 = load i8, i8* %10, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %57
  %65 = load i8, i8* %10, align 1
  %66 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  store i8 %65, i8* %66, align 1
  %67 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  store i8 0, i8* %67, align 1
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @XtDisplay(i32 %69)
  %71 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %72 = call i32 @XStringToKeysym(i8* %71)
  %73 = call i32 @XKeysymToKeycode(i32 %70, i32 %72)
  %74 = load i32, i32* @Mod1Mask, align 4
  %75 = load i32, i32* @True, align 4
  %76 = load i32, i32* @GrabModeAsync, align 4
  %77 = load i32, i32* @GrabModeAsync, align 4
  %78 = call i32 @XtGrabKey(i32 %68, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %64, %57
  br label %80

80:                                               ; preds = %79, %56
  ret void
}

declare dso_local i64 @XtIsComposite(i32) #1

declare dso_local i64 @XtClass(i32) #1

declare dso_local i32 @XtVaGetValues(i32, i32, ...) #1

declare dso_local i32 @XtGrabKey(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XKeysymToKeycode(i32, i32) #1

declare dso_local i32 @XtDisplay(i32) #1

declare dso_local i32 @XStringToKeysym(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

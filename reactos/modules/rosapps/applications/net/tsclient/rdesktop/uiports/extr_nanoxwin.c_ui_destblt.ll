; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_nanoxwin.c_ui_destblt.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_nanoxwin.c_ui_destblt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_gc = common dso_local global i32 0, align 4
@g_ops = common dso_local global i32* null, align 8
@g_wnd = common dso_local global i32 0, align 4
@GR_MODE_COPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"opcode %d in ui_destblt\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_destblt(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = load i32, i32* @g_gc, align 4
  %16 = call i32 @GrSetGCForeground(i32 %15, i32 0)
  store i32 12, i32* %6, align 4
  br label %31

17:                                               ; preds = %5
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 5
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @g_gc, align 4
  %22 = call i32 @GrSetGCForeground(i32 %21, i32 -1)
  store i32 6, i32* %6, align 4
  br label %30

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 15
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @g_gc, align 4
  %28 = call i32 @GrSetGCForeground(i32 %27, i32 -1)
  store i32 12, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %29, %20
  br label %31

31:                                               ; preds = %30, %14
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 12
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 6
  br i1 %36, label %37, label %56

37:                                               ; preds = %34, %31
  %38 = load i32*, i32** @g_ops, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* @g_gc, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @GrSetGCMode(i32 %43, i32 %44)
  %46 = load i32, i32* @g_wnd, align 4
  %47 = load i32, i32* @g_gc, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @GrFillRect(i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* @g_gc, align 4
  %54 = load i32, i32* @GR_MODE_COPY, align 4
  %55 = call i32 @GrSetGCMode(i32 %53, i32 %54)
  br label %59

56:                                               ; preds = %34
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @unimpl(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %56, %37
  ret void
}

declare dso_local i32 @GrSetGCForeground(i32, i32) #1

declare dso_local i32 @GrSetGCMode(i32, i32) #1

declare dso_local i32 @GrFillRect(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @unimpl(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_nanoxwin.c_ui_line.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_nanoxwin.c_ui_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@g_ops = common dso_local global i32* null, align 8
@g_gc = common dso_local global i32 0, align 4
@g_server_bpp = common dso_local global i32 0, align 4
@g_bpp = common dso_local global i32 0, align 4
@g_wnd = common dso_local global i32 0, align 4
@GR_MODE_COPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"opcode %d in ui_line\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_line(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_3__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %12, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 5
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 -1, i32* %14, align 4
  store i32 6, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %6
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 12
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 6
  br i1 %26, label %27, label %58

27:                                               ; preds = %24, %21
  %28 = load i32*, i32** @g_ops, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* @g_gc, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @GrSetGCMode(i32 %33, i32 %34)
  %36 = load i32, i32* @g_server_bpp, align 4
  %37 = icmp eq i32 %36, 16
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load i32, i32* @g_bpp, align 4
  %40 = icmp eq i32 %39, 32
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @COLOR16TO32(i32 %42)
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %41, %38, %27
  %45 = load i32, i32* @g_gc, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @GrSetGCForeground(i32 %45, i32 %46)
  %48 = load i32, i32* @g_wnd, align 4
  %49 = load i32, i32* @g_gc, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @GrLine(i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* @g_gc, align 4
  %56 = load i32, i32* @GR_MODE_COPY, align 4
  %57 = call i32 @GrSetGCMode(i32 %55, i32 %56)
  br label %61

58:                                               ; preds = %24
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @unimpl(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %58, %44
  ret void
}

declare dso_local i32 @GrSetGCMode(i32, i32) #1

declare dso_local i32 @COLOR16TO32(i32) #1

declare dso_local i32 @GrSetGCForeground(i32, i32) #1

declare dso_local i32 @GrLine(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @unimpl(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

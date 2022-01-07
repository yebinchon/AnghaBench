; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_dialog_onnotify.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_dialog_onnotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (i32*, %struct.TYPE_5__*, i32)* }

@.str = private unnamed_addr constant [7 x i8] c"%p %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @msi_dialog_onnotify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi_dialog_onnotify(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_5__* @msi_dialog_find_control_by_hwnd(i32* %10, i32 %13)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %6, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %15, i32 %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32 (i32*, %struct.TYPE_5__*, i32)*, i32 (i32*, %struct.TYPE_5__*, i32)** %24, align 8
  %26 = icmp ne i32 (i32*, %struct.TYPE_5__*, i32)* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32 (i32*, %struct.TYPE_5__*, i32)*, i32 (i32*, %struct.TYPE_5__*, i32)** %29, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 %30(i32* %31, %struct.TYPE_5__* %32, i32 %33)
  br label %35

35:                                               ; preds = %27, %22, %2
  ret i32 0
}

declare dso_local %struct.TYPE_5__* @msi_dialog_find_control_by_hwnd(i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

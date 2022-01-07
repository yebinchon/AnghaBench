; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_dialog.c_DEFDLG_SaveFocus.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_dialog.c_DEFDLG_SaveFocus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @DEFDLG_SaveFocus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DEFDLG_SaveFocus(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = call i64 (...) @GetFocus()
  store i64 %5, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @IsChild(i64 %9, i64 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %1
  br label %23

14:                                               ; preds = %8
  %15 = load i64, i64* %2, align 8
  %16 = call %struct.TYPE_3__* @GETDLGINFO(i64 %15)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %3, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %23

19:                                               ; preds = %14
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %23

23:                                               ; preds = %19, %18, %13
  ret void
}

declare dso_local i64 @GetFocus(...) #1

declare dso_local i32 @IsChild(i64, i64) #1

declare dso_local %struct.TYPE_3__* @GETDLGINFO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

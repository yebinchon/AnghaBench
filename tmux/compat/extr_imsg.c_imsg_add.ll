; ModuleID = '/home/carl/AnghaBench/tmux/compat/extr_imsg.c_imsg_add.c'
source_filename = "/home/carl/AnghaBench/tmux/compat/extr_imsg.c_imsg_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imsg_add(%struct.ibuf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.ibuf* %0, %struct.ibuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = load %struct.ibuf*, %struct.ibuf** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @ibuf_add(%struct.ibuf* %11, i8* %12, i32 %13)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.ibuf*, %struct.ibuf** %5, align 8
  %18 = call i32 @ibuf_free(%struct.ibuf* %17)
  store i32 -1, i32* %4, align 4
  br label %22

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %3
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @ibuf_add(%struct.ibuf*, i8*, i32) #1

declare dso_local i32 @ibuf_free(%struct.ibuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

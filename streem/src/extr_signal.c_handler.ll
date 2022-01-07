; ModuleID = '/home/carl/AnghaBench/streem/src/extr_signal.c_handler.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_signal.c_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sig_list = type { i32, i32, i32 (i32, i32)*, %struct.sig_list* }

@sig_list = common dso_local global %struct.sig_list* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sig_list*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.sig_list*, %struct.sig_list** @sig_list, align 8
  store %struct.sig_list* %4, %struct.sig_list** %3, align 8
  br label %5

5:                                                ; preds = %24, %1
  %6 = load %struct.sig_list*, %struct.sig_list** %3, align 8
  %7 = icmp ne %struct.sig_list* %6, null
  br i1 %7, label %8, label %28

8:                                                ; preds = %5
  %9 = load %struct.sig_list*, %struct.sig_list** %3, align 8
  %10 = getelementptr inbounds %struct.sig_list, %struct.sig_list* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %2, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %8
  %15 = load %struct.sig_list*, %struct.sig_list** %3, align 8
  %16 = getelementptr inbounds %struct.sig_list, %struct.sig_list* %15, i32 0, i32 2
  %17 = load i32 (i32, i32)*, i32 (i32, i32)** %16, align 8
  %18 = load i32, i32* %2, align 4
  %19 = load %struct.sig_list*, %struct.sig_list** %3, align 8
  %20 = getelementptr inbounds %struct.sig_list, %struct.sig_list* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 %17(i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %14, %8
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.sig_list*, %struct.sig_list** %3, align 8
  %26 = getelementptr inbounds %struct.sig_list, %struct.sig_list* %25, i32 0, i32 3
  %27 = load %struct.sig_list*, %struct.sig_list** %26, align 8
  store %struct.sig_list* %27, %struct.sig_list** %3, align 8
  br label %5

28:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

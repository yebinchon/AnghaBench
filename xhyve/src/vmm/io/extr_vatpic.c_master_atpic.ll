; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vatpic.c_master_atpic.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vatpic.c_master_atpic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vatpic = type { %struct.atpic* }
%struct.atpic = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vatpic*, %struct.atpic*)* @master_atpic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @master_atpic(%struct.vatpic* %0, %struct.atpic* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vatpic*, align 8
  %5 = alloca %struct.atpic*, align 8
  store %struct.vatpic* %0, %struct.vatpic** %4, align 8
  store %struct.atpic* %1, %struct.atpic** %5, align 8
  %6 = load %struct.atpic*, %struct.atpic** %5, align 8
  %7 = load %struct.vatpic*, %struct.vatpic** %4, align 8
  %8 = getelementptr inbounds %struct.vatpic, %struct.vatpic* %7, i32 0, i32 0
  %9 = load %struct.atpic*, %struct.atpic** %8, align 8
  %10 = getelementptr inbounds %struct.atpic, %struct.atpic* %9, i64 0
  %11 = icmp eq %struct.atpic* %6, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

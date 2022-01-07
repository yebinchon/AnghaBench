; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_prioq.c_prioq_remove.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_prioq.c_prioq_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prioq_item = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prioq_remove(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.prioq_item*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %24

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call %struct.prioq_item* @find_item(i32* %13, i8* %14, i32* %15)
  store %struct.prioq_item* %16, %struct.prioq_item** %8, align 8
  %17 = load %struct.prioq_item*, %struct.prioq_item** %8, align 8
  %18 = icmp ne %struct.prioq_item* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %24

20:                                               ; preds = %12
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.prioq_item*, %struct.prioq_item** %8, align 8
  %23 = call i32 @remove_item(i32* %21, %struct.prioq_item* %22)
  store i32 1, i32* %4, align 4
  br label %24

24:                                               ; preds = %20, %19, %11
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local %struct.prioq_item* @find_item(i32*, i8*, i32*) #1

declare dso_local i32 @remove_item(i32*, %struct.prioq_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

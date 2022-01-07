; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_root.c_root_find_output.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_root.c_root_find_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.sway_output** }
%struct.sway_output = type { i32 }

@root = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_output* @root_find_output(i32 (%struct.sway_output*, i8*)* %0, i8* %1) #0 {
  %3 = alloca %struct.sway_output*, align 8
  %4 = alloca i32 (%struct.sway_output*, i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sway_output*, align 8
  store i32 (%struct.sway_output*, i8*)* %0, i32 (%struct.sway_output*, i8*)** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %34, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @root, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @root, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load %struct.sway_output**, %struct.sway_output*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.sway_output*, %struct.sway_output** %21, i64 %23
  %25 = load %struct.sway_output*, %struct.sway_output** %24, align 8
  store %struct.sway_output* %25, %struct.sway_output** %7, align 8
  %26 = load i32 (%struct.sway_output*, i8*)*, i32 (%struct.sway_output*, i8*)** %4, align 8
  %27 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 %26(%struct.sway_output* %27, i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  store %struct.sway_output* %32, %struct.sway_output** %3, align 8
  br label %38

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %8

37:                                               ; preds = %8
  store %struct.sway_output* null, %struct.sway_output** %3, align 8
  br label %38

38:                                               ; preds = %37, %31
  %39 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  ret %struct.sway_output* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

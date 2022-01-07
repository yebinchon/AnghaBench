; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_llex.c_skip_sep.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_llex.c_skip_sep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @skip_sep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skip_sep(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 91
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 93
  br label %13

13:                                               ; preds = %10, %1
  %14 = phi i1 [ true, %1 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @lua_assert(i32 %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = call i32 @save_and_next(%struct.TYPE_4__* %17)
  br label %19

19:                                               ; preds = %24, %13
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 61
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = call i32 @save_and_next(%struct.TYPE_4__* %25)
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %19

29:                                               ; preds = %19
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %3, align 4
  br label %41

37:                                               ; preds = %29
  %38 = load i32, i32* %3, align 4
  %39 = sub nsw i32 0, %38
  %40 = sub nsw i32 %39, 1
  br label %41

41:                                               ; preds = %37, %35
  %42 = phi i32 [ %36, %35 ], [ %40, %37 ]
  ret i32 %42
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @save_and_next(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

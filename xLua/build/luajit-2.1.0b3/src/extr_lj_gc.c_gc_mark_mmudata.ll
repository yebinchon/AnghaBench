; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_gc.c_gc_mark_mmudata.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_gc.c_gc_mark_mmudata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @gc_mark_mmudata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_mark_mmudata(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32* @gcref(i32 %8)
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %23, %13
  %15 = load i32*, i32** %4, align 8
  %16 = call i32* @gcnext(i32* %15)
  store i32* %16, i32** %4, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @makewhite(%struct.TYPE_7__* %17, i32* %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @gc_mark(%struct.TYPE_7__* %20, i32* %21)
  br label %23

23:                                               ; preds = %14
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = icmp ne i32* %24, %25
  br i1 %26, label %14, label %27

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %27, %1
  ret void
}

declare dso_local i32* @gcref(i32) #1

declare dso_local i32* @gcnext(i32*) #1

declare dso_local i32 @makewhite(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @gc_mark(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

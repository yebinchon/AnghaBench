; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_ldo.c_luaD_shrinkstack.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_ldo.c_luaD_shrinkstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@EXTRA_STACK = common dso_local global i32 0, align 4
@LUAI_MAXSTACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaD_shrinkstack(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = call i32 @stackinuse(%struct.TYPE_6__* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = sdiv i32 %8, 8
  %10 = add nsw i32 %7, %9
  %11 = load i32, i32* @EXTRA_STACK, align 4
  %12 = mul nsw i32 2, %11
  %13 = add nsw i32 %10, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @LUAI_MAXSTACK, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @LUAI_MAXSTACK, align 4
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %17, %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @LUAI_MAXSTACK, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %19
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = call i32 @condmovestack(%struct.TYPE_6__* %30)
  br label %36

32:                                               ; preds = %23
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @luaD_reallocstack(%struct.TYPE_6__* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %29
  ret void
}

declare dso_local i32 @stackinuse(%struct.TYPE_6__*) #1

declare dso_local i32 @condmovestack(%struct.TYPE_6__*) #1

declare dso_local i32 @luaD_reallocstack(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

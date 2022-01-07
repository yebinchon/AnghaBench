; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_lgc.c_traverseweakvalue.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_lgc.c_traverseweakvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_11__*)* @traverseweakvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @traverseweakvalue(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = call i32* @gnodelast(%struct.TYPE_11__* %8)
  store i32* %9, i32** %6, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = call i32* @gnode(%struct.TYPE_11__* %15, i32 0)
  store i32* %16, i32** %5, align 8
  br label %17

17:                                               ; preds = %54, %2
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ult i32* %18, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @checkdeadkey(i32* %22)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @gval(i32* %24)
  %26 = call i64 @ttisnil(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @removeentry(i32* %29)
  br label %53

31:                                               ; preds = %21
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @gkey(i32* %32)
  %34 = call i64 @ttisnil(i32 %33)
  %35 = icmp ne i64 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @lua_assert(i32 %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @gkey(i32* %40)
  %42 = call i32 @markvalue(%struct.TYPE_10__* %39, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %31
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @gval(i32* %47)
  %49 = call i64 @iscleared(%struct.TYPE_10__* %46, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 1, i32* %7, align 4
  br label %52

52:                                               ; preds = %51, %45, %31
  br label %53

53:                                               ; preds = %52, %28
  br label %54

54:                                               ; preds = %53
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %5, align 8
  br label %17

57:                                               ; preds = %17
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = call i32 @linktable(%struct.TYPE_11__* %61, i32* %63)
  br label %70

65:                                               ; preds = %57
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = call i32 @linktable(%struct.TYPE_11__* %66, i32* %68)
  br label %70

70:                                               ; preds = %65, %60
  ret void
}

declare dso_local i32* @gnodelast(%struct.TYPE_11__*) #1

declare dso_local i32* @gnode(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @checkdeadkey(i32*) #1

declare dso_local i64 @ttisnil(i32) #1

declare dso_local i32 @gval(i32*) #1

declare dso_local i32 @removeentry(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @gkey(i32*) #1

declare dso_local i32 @markvalue(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @iscleared(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @linktable(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

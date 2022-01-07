; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_lgc.c_traversestrongtable.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_lgc.c_traversestrongtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*)* @traversestrongtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @traversestrongtable(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = call i32* @gnodelast(%struct.TYPE_5__* %8)
  store i32* %9, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %25, %2
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @markvalue(i32* %17, i32* %23)
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %7, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %10

28:                                               ; preds = %10
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = call i32* @gnode(%struct.TYPE_5__* %29, i32 0)
  store i32* %30, i32** %5, align 8
  br label %31

31:                                               ; preds = %62, %28
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = icmp ult i32* %32, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %31
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @checkdeadkey(i32* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32* @gval(i32* %38)
  %40 = call i64 @ttisnil(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @removeentry(i32* %43)
  br label %61

45:                                               ; preds = %35
  %46 = load i32*, i32** %5, align 8
  %47 = call i32* @gkey(i32* %46)
  %48 = call i64 @ttisnil(i32* %47)
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @lua_assert(i32 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i32* @gkey(i32* %54)
  %56 = call i32 @markvalue(i32* %53, i32* %55)
  %57 = load i32*, i32** %3, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i32* @gval(i32* %58)
  %60 = call i32 @markvalue(i32* %57, i32* %59)
  br label %61

61:                                               ; preds = %45, %42
  br label %62

62:                                               ; preds = %61
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %5, align 8
  br label %31

65:                                               ; preds = %31
  ret void
}

declare dso_local i32* @gnodelast(%struct.TYPE_5__*) #1

declare dso_local i32 @markvalue(i32*, i32*) #1

declare dso_local i32* @gnode(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @checkdeadkey(i32*) #1

declare dso_local i64 @ttisnil(i32*) #1

declare dso_local i32* @gval(i32*) #1

declare dso_local i32 @removeentry(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32* @gkey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_ltable.c_luaH_next.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_ltable.c_luaH_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaH_next(i32* %0, %struct.TYPE_6__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @findindex(i32* %9, %struct.TYPE_6__* %10, i64 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %8, align 4
  br label %15

15:                                               ; preds = %47, %3
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %15
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @ttisnil(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %21
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i32 @cast_num(i32 %33)
  %35 = call i32 @setnvalue(i64 %31, i32 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = add nsw i64 %37, 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i32 @setobj2s(i32* %36, i64 %38, i32* %44)
  store i32 1, i32* %4, align 4
  br label %89

46:                                               ; preds = %21
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %15

50:                                               ; preds = %15
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %85, %50
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = call i32 @sizenode(%struct.TYPE_6__* %58)
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %88

61:                                               ; preds = %56
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @gnode(%struct.TYPE_6__* %62, i32 %63)
  %65 = call i32* @gval(i32 %64)
  %66 = call i32 @ttisnil(i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %84, label %68

68:                                               ; preds = %61
  %69 = load i32*, i32** %5, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @gnode(%struct.TYPE_6__* %71, i32 %72)
  %74 = call i32* @key2tval(i32 %73)
  %75 = call i32 @setobj2s(i32* %69, i64 %70, i32* %74)
  %76 = load i32*, i32** %5, align 8
  %77 = load i64, i64* %7, align 8
  %78 = add nsw i64 %77, 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @gnode(%struct.TYPE_6__* %79, i32 %80)
  %82 = call i32* @gval(i32 %81)
  %83 = call i32 @setobj2s(i32* %76, i64 %78, i32* %82)
  store i32 1, i32* %4, align 4
  br label %89

84:                                               ; preds = %61
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %56

88:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %68, %30
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @findindex(i32*, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @ttisnil(i32*) #1

declare dso_local i32 @setnvalue(i64, i32) #1

declare dso_local i32 @cast_num(i32) #1

declare dso_local i32 @setobj2s(i32*, i64, i32*) #1

declare dso_local i32 @sizenode(%struct.TYPE_6__*) #1

declare dso_local i32* @gval(i32) #1

declare dso_local i32 @gnode(%struct.TYPE_6__*, i32) #1

declare dso_local i32* @key2tval(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

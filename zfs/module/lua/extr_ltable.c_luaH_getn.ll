; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_ltable.c_luaH_getn.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_ltable.c_luaH_getn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaH_getn(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ugt i32 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sub i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = call i64 @ttisnil(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %46, %22
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sub i32 %24, %25
  %27 = icmp ugt i32 %26, 1
  br i1 %27, label %28, label %47

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = add i32 %29, %30
  %32 = udiv i32 %31, 2
  store i32 %32, i32* %6, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sub i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = call i64 @ttisnil(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %28
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %4, align 4
  br label %46

44:                                               ; preds = %28
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %42
  br label %23

47:                                               ; preds = %23
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %61

49:                                               ; preds = %12, %1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @isdummy(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %61

57:                                               ; preds = %49
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @unbound_search(%struct.TYPE_4__* %58, i32 %59)
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %57, %55, %47
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i64 @ttisnil(i32*) #1

declare dso_local i64 @isdummy(i32) #1

declare dso_local i32 @unbound_search(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

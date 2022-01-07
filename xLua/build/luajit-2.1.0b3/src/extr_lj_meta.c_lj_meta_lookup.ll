; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_meta.c_lj_meta_lookup.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_meta.c_lj_meta_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @lj_meta_lookup(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = call i64 @tvistab(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = call %struct.TYPE_4__* @tabV(i32* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @tabref(i32 %17)
  store i32* %18, i32** %8, align 8
  br label %36

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @tvisudata(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = call %struct.TYPE_3__* @udataV(i32* %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @tabref(i32 %27)
  store i32* %28, i32** %8, align 8
  br label %35

29:                                               ; preds = %19
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @G(i32* %30)
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @basemt_obj(i32 %31, i32* %32)
  %34 = call i32* @tabref(i32 %33)
  store i32* %34, i32** %8, align 8
  br label %35

35:                                               ; preds = %29, %23
  br label %36

36:                                               ; preds = %35, %13
  %37 = load i32*, i32** %8, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @G(i32* %41)
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @mmname_str(i32 %42, i32 %43)
  %45 = call i32* @lj_tab_getstr(i32* %40, i32 %44)
  store i32* %45, i32** %9, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32*, i32** %9, align 8
  store i32* %49, i32** %4, align 8
  br label %54

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %36
  %52 = load i32*, i32** %5, align 8
  %53 = call i32* @niltv(i32* %52)
  store i32* %53, i32** %4, align 8
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32*, i32** %4, align 8
  ret i32* %55
}

declare dso_local i64 @tvistab(i32*) #1

declare dso_local i32* @tabref(i32) #1

declare dso_local %struct.TYPE_4__* @tabV(i32*) #1

declare dso_local i64 @tvisudata(i32*) #1

declare dso_local %struct.TYPE_3__* @udataV(i32*) #1

declare dso_local i32 @basemt_obj(i32, i32*) #1

declare dso_local i32 @G(i32*) #1

declare dso_local i32* @lj_tab_getstr(i32*, i32) #1

declare dso_local i32 @mmname_str(i32, i32) #1

declare dso_local i32* @niltv(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

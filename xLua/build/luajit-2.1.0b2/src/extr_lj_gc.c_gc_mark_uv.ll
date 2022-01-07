; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_gc.c_gc_mark_uv.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_gc.c_gc_mark_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @gc_mark_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_mark_uv(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = call i32* @uvnext(i32* %5)
  store i32* %6, i32** %3, align 8
  br label %7

7:                                                ; preds = %38, %1
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = icmp ne i32* %8, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %7
  %13 = load i32*, i32** %3, align 8
  %14 = call i32* @uvnext(i32* %13)
  %15 = call i32* @uvprev(i32* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = icmp eq i32* %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load i32*, i32** %3, align 8
  %20 = call i32* @uvprev(i32* %19)
  %21 = call i32* @uvnext(i32* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = icmp eq i32* %21, %22
  br label %24

24:                                               ; preds = %18, %12
  %25 = phi i1 [ false, %12 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @lua_assert(i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @obj2gco(i32* %28)
  %30 = call i64 @isgray(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @uvval(i32* %34)
  %36 = call i32 @gc_marktv(%struct.TYPE_4__* %33, i32 %35)
  br label %37

37:                                               ; preds = %32, %24
  br label %38

38:                                               ; preds = %37
  %39 = load i32*, i32** %3, align 8
  %40 = call i32* @uvnext(i32* %39)
  store i32* %40, i32** %3, align 8
  br label %7

41:                                               ; preds = %7
  ret void
}

declare dso_local i32* @uvnext(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32* @uvprev(i32*) #1

declare dso_local i64 @isgray(i32) #1

declare dso_local i32 @obj2gco(i32*) #1

declare dso_local i32 @gc_marktv(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @uvval(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsobject.c_O_isFrozen.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsobject.c_O_isFrozen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"not an object\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @O_isFrozen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @O_isFrozen(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @js_isobject(i32* %4, i32 1)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @js_typeerror(i32* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i32*, i32** %2, align 8
  %12 = call %struct.TYPE_4__* @js_toobject(i32* %11, i32 1)
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %3, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %10
  %20 = load i32*, i32** %2, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = call i32 @O_isFrozen_walk(i32* %20, %struct.TYPE_5__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @js_pushboolean(i32* %27, i32 0)
  br label %39

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %10
  %31 = load i32*, i32** %2, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @js_pushboolean(i32* %31, i32 %37)
  br label %39

39:                                               ; preds = %30, %26
  ret void
}

declare dso_local i32 @js_isobject(i32*, i32) #1

declare dso_local i32 @js_typeerror(i32*, i8*) #1

declare dso_local %struct.TYPE_4__* @js_toobject(i32*, i32) #1

declare dso_local i32 @O_isFrozen_walk(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @js_pushboolean(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

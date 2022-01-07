; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_ltable.c_mainposition.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_ltable.c_mainposition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @mainposition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mainposition(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = call i32 @ttype(i32* %7)
  switch i32 %8, label %65 [
    i32 129, label %9
    i32 130, label %14
    i32 128, label %45
    i32 133, label %50
    i32 131, label %55
    i32 132, label %60
  ]

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @nvalue(i32* %11)
  %13 = call i32* @hashnum(i32* %10, i32 %12)
  store i32* %13, i32** %3, align 8
  br label %70

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = call %struct.TYPE_7__* @rawtsvalue(i32* %15)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %6, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %14
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = call i32 @getstr(%struct.TYPE_7__* %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @luaS_hash(i32 %24, i32 %28, i32 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %22, %14
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call %struct.TYPE_7__* @rawtsvalue(i32* %42)
  %44 = call i32* @hashstr(i32* %41, %struct.TYPE_7__* %43)
  store i32* %44, i32** %3, align 8
  br label %70

45:                                               ; preds = %2
  %46 = load i32*, i32** %4, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call %struct.TYPE_7__* @rawtsvalue(i32* %47)
  %49 = call i32* @hashstr(i32* %46, %struct.TYPE_7__* %48)
  store i32* %49, i32** %3, align 8
  br label %70

50:                                               ; preds = %2
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @bvalue(i32* %52)
  %54 = call i32* @hashboolean(i32* %51, i32 %53)
  store i32* %54, i32** %3, align 8
  br label %70

55:                                               ; preds = %2
  %56 = load i32*, i32** %4, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @pvalue(i32* %57)
  %59 = call i32* @hashpointer(i32* %56, i32 %58)
  store i32* %59, i32** %3, align 8
  br label %70

60:                                               ; preds = %2
  %61 = load i32*, i32** %4, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @fvalue(i32* %62)
  %64 = call i32* @hashpointer(i32* %61, i32 %63)
  store i32* %64, i32** %3, align 8
  br label %70

65:                                               ; preds = %2
  %66 = load i32*, i32** %4, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @gcvalue(i32* %67)
  %69 = call i32* @hashpointer(i32* %66, i32 %68)
  store i32* %69, i32** %3, align 8
  br label %70

70:                                               ; preds = %65, %60, %55, %50, %45, %40, %9
  %71 = load i32*, i32** %3, align 8
  ret i32* %71
}

declare dso_local i32 @ttype(i32*) #1

declare dso_local i32* @hashnum(i32*, i32) #1

declare dso_local i32 @nvalue(i32*) #1

declare dso_local %struct.TYPE_7__* @rawtsvalue(i32*) #1

declare dso_local i32 @luaS_hash(i32, i32, i32) #1

declare dso_local i32 @getstr(%struct.TYPE_7__*) #1

declare dso_local i32* @hashstr(i32*, %struct.TYPE_7__*) #1

declare dso_local i32* @hashboolean(i32*, i32) #1

declare dso_local i32 @bvalue(i32*) #1

declare dso_local i32* @hashpointer(i32*, i32) #1

declare dso_local i32 @pvalue(i32*) #1

declare dso_local i32 @fvalue(i32*) #1

declare dso_local i32 @gcvalue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

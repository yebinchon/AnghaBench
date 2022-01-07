; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_msft.c_add_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_msft.c_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }

@ATTR_PUBLIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*)* @add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_entry(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %63 [
    i32 133, label %10
    i32 135, label %10
    i32 131, label %10
    i32 137, label %10
    i32 136, label %10
    i32 134, label %11
    i32 129, label %12
    i32 132, label %48
    i32 130, label %55
    i32 128, label %55
  ]

10:                                               ; preds = %2, %2, %2, %2, %2
  br label %63

11:                                               ; preds = %2
  br label %63

12:                                               ; preds = %2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %5, align 8
  br label %17

17:                                               ; preds = %43, %12
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %47

20:                                               ; preds = %17
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ATTR_PUBLIC, align 4
  %27 = call i32 @is_attr(i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load i32*, i32** %3, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = call i32 @add_typedef_typeinfo(i32* %30, %struct.TYPE_10__* %33)
  br label %42

35:                                               ; preds = %20
  %36 = load i32*, i32** %3, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = call i32* @type_alias_get_aliasee(%struct.TYPE_10__* %39)
  %41 = call i32 @add_type_typeinfo(i32* %36, i32* %40)
  br label %42

42:                                               ; preds = %35, %29
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %5, align 8
  br label %17

47:                                               ; preds = %17
  br label %63

48:                                               ; preds = %2
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @add_module_typeinfo(i32* %49, i32* %53)
  br label %63

55:                                               ; preds = %2, %2
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %6, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @add_type_typeinfo(i32* %60, i32* %61)
  br label %63

63:                                               ; preds = %2, %55, %48, %47, %11, %10
  ret void
}

declare dso_local i32 @is_attr(i32, i32) #1

declare dso_local i32 @add_typedef_typeinfo(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @add_type_typeinfo(i32*, i32*) #1

declare dso_local i32* @type_alias_get_aliasee(%struct.TYPE_10__*) #1

declare dso_local i32 @add_module_typeinfo(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

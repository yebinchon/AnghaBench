; ModuleID = '/home/carl/AnghaBench/xLua/build/extr_memory_leak_checker.c_report_table.c'
source_filename = "/home/carl/AnghaBench/xLua/build/extr_memory_leak_checker.c_report_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32 (%struct.TYPE_7__*, i32*, i32, i32*, i32, i32*)*)* @report_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_table(%struct.TYPE_7__* %0, i32 (%struct.TYPE_7__*, i32*, i32, i32*, i32, i32*)* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32 (%struct.TYPE_7__*, i32*, i32, i32*, i32, i32*)*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 (%struct.TYPE_7__*, i32*, i32, i32*, i32, i32*)* %1, i32 (%struct.TYPE_7__*, i32*, i32, i32*, i32, i32*)** %4, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = call i32* @gnodelast(%struct.TYPE_7__* %11)
  store i32* %12, i32** %6, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32 (%struct.TYPE_7__*, i32*, i32, i32*, i32, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32, i32*, i32, i32*)** %4, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 %18(%struct.TYPE_7__* %19, i32* %22, i32 4, i32* null, i32 0, i32* null)
  br label %24

24:                                               ; preds = %17, %2
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %50, %24
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %25
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i64 @ttistable(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %31
  %42 = load i32 (%struct.TYPE_7__*, i32*, i32, i32*, i32, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32, i32*, i32, i32*)** %4, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32* @gcvalue(i32* %44)
  %46 = load i32, i32* %7, align 4
  %47 = add i32 %46, 1
  %48 = call i32 %42(%struct.TYPE_7__* %43, i32* %45, i32 2, i32* null, i32 %47, i32* null)
  br label %49

49:                                               ; preds = %41, %31
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %25

53:                                               ; preds = %25
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = call i32* @gnode(%struct.TYPE_7__* %54, i32 0)
  store i32* %55, i32** %5, align 8
  br label %56

56:                                               ; preds = %120, %53
  %57 = load i32*, i32** %5, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = icmp ult i32* %57, %58
  br i1 %59, label %60, label %123

60:                                               ; preds = %56
  %61 = load i32*, i32** %5, align 8
  %62 = call i32* @gval(i32* %61)
  %63 = call i32 @ttisnil(i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %119, label %65

65:                                               ; preds = %60
  %66 = load i32*, i32** %5, align 8
  %67 = call i32* @gkey(i32* %66)
  store i32* %67, i32** %9, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = call i64 @ttistable(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load i32 (%struct.TYPE_7__*, i32*, i32, i32*, i32, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32, i32*, i32, i32*)** %4, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = call i32* @gcvalue(i32* %74)
  %76 = call i32 %72(%struct.TYPE_7__* %73, i32* %75, i32 3, i32* null, i32 0, i32* null)
  br label %77

77:                                               ; preds = %71, %65
  %78 = load i32*, i32** %5, align 8
  %79 = call i32* @gval(i32* %78)
  store i32* %79, i32** %10, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = call i64 @ttistable(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %118

83:                                               ; preds = %77
  %84 = load i32*, i32** %9, align 8
  %85 = call i64 @ttisstring(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load i32 (%struct.TYPE_7__*, i32*, i32, i32*, i32, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32, i32*, i32, i32*)** %4, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = call i32* @gcvalue(i32* %90)
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @tsvalue(i32* %92)
  %94 = call i32* @getstr(i32 %93)
  %95 = call i32 %88(%struct.TYPE_7__* %89, i32* %91, i32 1, i32* %94, i32 0, i32* null)
  br label %117

96:                                               ; preds = %83
  %97 = load i32*, i32** %9, align 8
  %98 = call i64 @ttisnumber(i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %96
  %101 = load i32 (%struct.TYPE_7__*, i32*, i32, i32*, i32, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32, i32*, i32, i32*)** %4, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = call i32* @gcvalue(i32* %103)
  %105 = load i32*, i32** %9, align 8
  %106 = call i32 @nvalue(i32* %105)
  %107 = call i32 %101(%struct.TYPE_7__* %102, i32* %104, i32 2, i32* null, i32 %106, i32* null)
  br label %116

108:                                              ; preds = %96
  %109 = load i32 (%struct.TYPE_7__*, i32*, i32, i32*, i32, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32, i32*, i32, i32*)** %4, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %111 = load i32*, i32** %10, align 8
  %112 = call i32* @gcvalue(i32* %111)
  %113 = load i32*, i32** %9, align 8
  %114 = call i32 @ttnov(i32* %113)
  %115 = call i32 %109(%struct.TYPE_7__* %110, i32* %112, i32 1, i32* null, i32 %114, i32* null)
  br label %116

116:                                              ; preds = %108, %100
  br label %117

117:                                              ; preds = %116, %87
  br label %118

118:                                              ; preds = %117, %77
  br label %119

119:                                              ; preds = %118, %60
  br label %120

120:                                              ; preds = %119
  %121 = load i32*, i32** %5, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %5, align 8
  br label %56

123:                                              ; preds = %56
  ret void
}

declare dso_local i32* @gnodelast(%struct.TYPE_7__*) #1

declare dso_local i64 @ttistable(i32*) #1

declare dso_local i32* @gcvalue(i32*) #1

declare dso_local i32* @gnode(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ttisnil(i32*) #1

declare dso_local i32* @gval(i32*) #1

declare dso_local i32* @gkey(i32*) #1

declare dso_local i64 @ttisstring(i32*) #1

declare dso_local i32* @getstr(i32) #1

declare dso_local i32 @tsvalue(i32*) #1

declare dso_local i64 @ttisnumber(i32*) #1

declare dso_local i32 @nvalue(i32*) #1

declare dso_local i32 @ttnov(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

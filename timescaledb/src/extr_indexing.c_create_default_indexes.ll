; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_indexing.c_create_default_indexes.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_indexing.c_create_default_indexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@SORTBY_DESC = common dso_local global i32 0, align 4
@T_IndexElem = common dso_local global i32 0, align 4
@SORTBY_ASC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32, i32)* @create_default_indexes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_default_indexes(i32* %0, %struct.TYPE_13__* %1, %struct.TYPE_13__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__, align 4
  %12 = alloca %struct.TYPE_12__, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %14 = load i32, i32* @SORTBY_DESC, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %17 = call i32 @get_open_dim_name(%struct.TYPE_13__* %16)
  store i32 %17, i32* %15, align 4
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  %19 = load i32, i32* @T_IndexElem, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %22 = call i32 @get_open_dim_expr(%struct.TYPE_13__* %21)
  store i32 %22, i32* %20, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %24 = icmp eq %struct.TYPE_13__* null, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  br label %54

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @list_make1(%struct.TYPE_12__* %11)
  %32 = call i32 @create_default_index(i32* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %26
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %35 = icmp ne %struct.TYPE_13__* %34, null
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %41 = load i32, i32* @SORTBY_ASC, align 4
  store i32 %41, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @NameStr(i32 %46)
  store i32 %47, i32* %42, align 4
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %49 = load i32, i32* @T_IndexElem, align 4
  store i32 %49, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 3
  store i32 0, i32* %50, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @list_make2(%struct.TYPE_12__* %12, %struct.TYPE_12__* %11)
  %53 = call i32 @create_default_index(i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %25, %39, %36, %33
  ret void
}

declare dso_local i32 @get_open_dim_name(%struct.TYPE_13__*) #1

declare dso_local i32 @get_open_dim_expr(%struct.TYPE_13__*) #1

declare dso_local i32 @create_default_index(i32*, i32) #1

declare dso_local i32 @list_make1(%struct.TYPE_12__*) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @list_make2(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

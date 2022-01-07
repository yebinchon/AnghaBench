; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_assoc.c_Assoc_add_entry.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_assoc.c_Assoc_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Assoc_add_entry(%struct.TYPE_13__* %0, i32* %1, %struct.TYPE_12__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %15 = icmp ne %struct.TYPE_13__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %21 = icmp ne %struct.TYPE_12__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %16, %5
  store i32 0, i32* %6, align 4
  br label %93

23:                                               ; preds = %19
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %30 = call i32 @client_id_self_update(%struct.TYPE_13__* %29)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %93

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %23
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = call i32 @ipport_isset(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %93

43:                                               ; preds = %37
  %44 = load i32*, i32** %10, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @ipport_isset(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store i32* null, i32** %10, align 8
  br label %51

51:                                               ; preds = %50, %46, %43
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i64 @id_hash(%struct.TYPE_13__* %52, i32* %53)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %51
  %61 = load i32*, i32** %8, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @id_equal(i32* %61, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %93

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %51
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call i32 @candidates_search(%struct.TYPE_13__* %70, i32* %71, i64 %72, i32** %13)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %69
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = call i64 @candidates_create_new(%struct.TYPE_13__* %76, i64 %77, i32* %78, i32 %79, %struct.TYPE_12__* %80, i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  store i32 1, i32* %6, align 4
  br label %93

85:                                               ; preds = %75
  store i32 0, i32* %6, align 4
  br label %93

86:                                               ; preds = %69
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %88 = load i32*, i32** %13, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @candidates_update_assoc(%struct.TYPE_13__* %87, i32* %88, i32 %89, %struct.TYPE_12__* %90, i32* %91)
  store i32 2, i32* %6, align 4
  br label %93

93:                                               ; preds = %86, %85, %84, %67, %42, %35, %22
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @client_id_self_update(%struct.TYPE_13__*) #1

declare dso_local i32 @ipport_isset(i32*) #1

declare dso_local i64 @id_hash(%struct.TYPE_13__*, i32*) #1

declare dso_local i64 @id_equal(i32*, i32) #1

declare dso_local i32 @candidates_search(%struct.TYPE_13__*, i32*, i64, i32**) #1

declare dso_local i64 @candidates_create_new(%struct.TYPE_13__*, i64, i32*, i32, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @candidates_update_assoc(%struct.TYPE_13__*, i32*, i32, %struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

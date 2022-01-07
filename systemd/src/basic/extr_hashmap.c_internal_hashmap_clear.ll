; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_internal_hashmap_clear.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_internal_hashmap_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i64, %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32, i32 }

@HASHMAP_TYPE_ORDERED = common dso_local global i64 0, align 8
@IDX_NIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @internal_hashmap_clear(%struct.TYPE_13__* %0, i32 (i8*)* %1, i32 (i8*)* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32 (i8*)*, align 8
  %6 = alloca i32 (i8*)*, align 8
  %7 = alloca i32 (i8*)*, align 8
  %8 = alloca i32 (i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 (i8*)* %1, i32 (i8*)** %5, align 8
  store i32 (i8*)* %2, i32 (i8*)** %6, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = icmp ne %struct.TYPE_13__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %102

15:                                               ; preds = %3
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = inttoptr i64 %20 to i32 (i8*)*
  br label %26

24:                                               ; preds = %15
  %25 = load i32 (i8*)*, i32 (i8*)** %5, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 (i8*)* [ %23, %22 ], [ %25, %24 ]
  store i32 (i8*)* %27, i32 (i8*)** %7, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = inttoptr i64 %32 to i32 (i8*)*
  br label %38

36:                                               ; preds = %26
  %37 = load i32 (i8*)*, i32 (i8*)** %6, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 (i8*)* [ %35, %34 ], [ %37, %36 ]
  store i32 (i8*)* %39, i32 (i8*)** %8, align 8
  %40 = load i32 (i8*)*, i32 (i8*)** %7, align 8
  %41 = icmp ne i32 (i8*)* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32 (i8*)*, i32 (i8*)** %8, align 8
  %44 = icmp ne i32 (i8*)* %43, null
  br i1 %44, label %45, label %68

45:                                               ; preds = %42, %38
  br label %46

46:                                               ; preds = %66, %45
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = call i64 @internal_hashmap_size(%struct.TYPE_13__* %47)
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  store i8* null, i8** %9, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = call i8* @internal_hashmap_first_key_and_value(%struct.TYPE_13__* %51, i32 1, i8** %9)
  store i8* %52, i8** %10, align 8
  %53 = load i32 (i8*)*, i32 (i8*)** %7, align 8
  %54 = icmp ne i32 (i8*)* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32 (i8*)*, i32 (i8*)** %7, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 %56(i8* %57)
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i32 (i8*)*, i32 (i8*)** %8, align 8
  %61 = icmp ne i32 (i8*)* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32 (i8*)*, i32 (i8*)** %8, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 %63(i8* %64)
  br label %66

66:                                               ; preds = %62, %59
  br label %46

67:                                               ; preds = %46
  br label %68

68:                                               ; preds = %67, %42
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @free(i32 %77)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  br label %81

81:                                               ; preds = %73, %68
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 2
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %85 = call i32 @reset_direct_storage(%struct.TYPE_13__* %84)
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @HASHMAP_TYPE_ORDERED, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %81
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %93 = bitcast %struct.TYPE_13__* %92 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %93, %struct.TYPE_12__** %11, align 8
  %94 = load i32, i32* @IDX_NIL, align 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  store i32 %94, i32* %98, align 4
  br label %99

99:                                               ; preds = %91, %81
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %101 = call i32 @base_set_dirty(%struct.TYPE_13__* %100)
  br label %102

102:                                              ; preds = %99, %14
  ret void
}

declare dso_local i64 @internal_hashmap_size(%struct.TYPE_13__*) #1

declare dso_local i8* @internal_hashmap_first_key_and_value(%struct.TYPE_13__*, i32, i8**) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @reset_direct_storage(%struct.TYPE_13__*) #1

declare dso_local i32 @base_set_dirty(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tig/src/extr_refdb.c_remove_ref_from_id_map.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_refdb.c_remove_ref_from_id_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32, %struct.ref* }

@refs_by_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ref*)* @remove_ref_from_id_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_ref_from_id_map(%struct.ref* %0) #0 {
  %2 = alloca %struct.ref*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca %struct.ref*, align 8
  %5 = alloca %struct.ref*, align 8
  store %struct.ref* %0, %struct.ref** %2, align 8
  %6 = load %struct.ref*, %struct.ref** %2, align 8
  %7 = getelementptr inbounds %struct.ref, %struct.ref* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i8** @string_map_get_at(i32* @refs_by_id, i32 %8)
  store i8** %9, i8*** %3, align 8
  %10 = load i8**, i8*** %3, align 8
  %11 = icmp ne i8** %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i8**, i8*** %3, align 8
  %14 = load i8*, i8** %13, align 8
  br label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %12
  %17 = phi i8* [ %14, %12 ], [ null, %15 ]
  %18 = bitcast i8* %17 to %struct.ref*
  store %struct.ref* %18, %struct.ref** %4, align 8
  store %struct.ref* null, %struct.ref** %5, align 8
  br label %19

19:                                               ; preds = %45, %16
  %20 = load %struct.ref*, %struct.ref** %4, align 8
  %21 = icmp ne %struct.ref* %20, null
  br i1 %21, label %22, label %50

22:                                               ; preds = %19
  %23 = load %struct.ref*, %struct.ref** %4, align 8
  %24 = load %struct.ref*, %struct.ref** %2, align 8
  %25 = icmp ne %struct.ref* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %45

27:                                               ; preds = %22
  %28 = load %struct.ref*, %struct.ref** %5, align 8
  %29 = icmp ne %struct.ref* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load %struct.ref*, %struct.ref** %2, align 8
  %32 = getelementptr inbounds %struct.ref, %struct.ref* %31, i32 0, i32 1
  %33 = load %struct.ref*, %struct.ref** %32, align 8
  %34 = bitcast %struct.ref* %33 to i8*
  %35 = load i8**, i8*** %3, align 8
  store i8* %34, i8** %35, align 8
  br label %42

36:                                               ; preds = %27
  %37 = load %struct.ref*, %struct.ref** %2, align 8
  %38 = getelementptr inbounds %struct.ref, %struct.ref* %37, i32 0, i32 1
  %39 = load %struct.ref*, %struct.ref** %38, align 8
  %40 = load %struct.ref*, %struct.ref** %5, align 8
  %41 = getelementptr inbounds %struct.ref, %struct.ref* %40, i32 0, i32 1
  store %struct.ref* %39, %struct.ref** %41, align 8
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.ref*, %struct.ref** %2, align 8
  %44 = getelementptr inbounds %struct.ref, %struct.ref* %43, i32 0, i32 1
  store %struct.ref* null, %struct.ref** %44, align 8
  br label %50

45:                                               ; preds = %26
  %46 = load %struct.ref*, %struct.ref** %4, align 8
  store %struct.ref* %46, %struct.ref** %5, align 8
  %47 = load %struct.ref*, %struct.ref** %4, align 8
  %48 = getelementptr inbounds %struct.ref, %struct.ref* %47, i32 0, i32 1
  %49 = load %struct.ref*, %struct.ref** %48, align 8
  store %struct.ref* %49, %struct.ref** %4, align 8
  br label %19

50:                                               ; preds = %42, %19
  %51 = load i8**, i8*** %3, align 8
  %52 = icmp ne i8** %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load i8**, i8*** %3, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load %struct.ref*, %struct.ref** %2, align 8
  %59 = getelementptr inbounds %struct.ref, %struct.ref* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @string_map_remove(i32* @refs_by_id, i32 %60)
  br label %62

62:                                               ; preds = %57, %53, %50
  ret void
}

declare dso_local i8** @string_map_get_at(i32*, i32) #1

declare dso_local i32 @string_map_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

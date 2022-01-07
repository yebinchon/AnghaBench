; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_reset_view.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_reset_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32, i64, i64, i64*, %struct.TYPE_5__*, i64, %struct.TYPE_6__, %struct.TYPE_4__*, %struct.TYPE_6__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_view(%struct.view* %0) #0 {
  %2 = alloca %struct.view*, align 8
  %3 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %20, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.view*, %struct.view** %2, align 8
  %7 = getelementptr inbounds %struct.view, %struct.view* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %4
  %11 = load %struct.view*, %struct.view** %2, align 8
  %12 = getelementptr inbounds %struct.view, %struct.view* %11, i32 0, i32 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = call i32 @free(%struct.TYPE_5__* %18)
  br label %20

20:                                               ; preds = %10
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %4

23:                                               ; preds = %4
  %24 = load %struct.view*, %struct.view** %2, align 8
  %25 = getelementptr inbounds %struct.view, %struct.view* %24, i32 0, i32 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = call i32 @free(%struct.TYPE_5__* %26)
  %28 = load %struct.view*, %struct.view** %2, align 8
  %29 = call i32 @reset_search(%struct.view* %28)
  %30 = load %struct.view*, %struct.view** %2, align 8
  %31 = getelementptr inbounds %struct.view, %struct.view* %30, i32 0, i32 8
  %32 = load %struct.view*, %struct.view** %2, align 8
  %33 = getelementptr inbounds %struct.view, %struct.view* %32, i32 0, i32 6
  %34 = bitcast %struct.TYPE_6__* %31 to i8*
  %35 = bitcast %struct.TYPE_6__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 8, i1 false)
  %36 = load %struct.view*, %struct.view** %2, align 8
  %37 = getelementptr inbounds %struct.view, %struct.view* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %23
  %41 = load %struct.view*, %struct.view** %2, align 8
  %42 = getelementptr inbounds %struct.view, %struct.view* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %40
  %46 = load %struct.view*, %struct.view** %2, align 8
  %47 = getelementptr inbounds %struct.view, %struct.view* %46, i32 0, i32 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load %struct.view*, %struct.view** %2, align 8
  %53 = getelementptr inbounds %struct.view, %struct.view* %52, i32 0, i32 7
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.view*, %struct.view** %2, align 8
  %58 = getelementptr inbounds %struct.view, %struct.view* %57, i32 0, i32 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  br label %60

60:                                               ; preds = %51, %45, %40, %23
  %61 = load %struct.view*, %struct.view** %2, align 8
  %62 = getelementptr inbounds %struct.view, %struct.view* %61, i32 0, i32 6
  %63 = call i32 @clear_position(%struct.TYPE_6__* %62)
  %64 = load %struct.view*, %struct.view** %2, align 8
  %65 = getelementptr inbounds %struct.view, %struct.view* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load %struct.view*, %struct.view** %2, align 8
  %70 = call i32 @view_column_reset(%struct.view* %69)
  br label %71

71:                                               ; preds = %68, %60
  %72 = load %struct.view*, %struct.view** %2, align 8
  %73 = getelementptr inbounds %struct.view, %struct.view* %72, i32 0, i32 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %73, align 8
  %74 = load %struct.view*, %struct.view** %2, align 8
  %75 = getelementptr inbounds %struct.view, %struct.view* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load %struct.view*, %struct.view** %2, align 8
  %77 = getelementptr inbounds %struct.view, %struct.view* %76, i32 0, i32 3
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  store i64 0, i64* %79, align 8
  %80 = load %struct.view*, %struct.view** %2, align 8
  %81 = getelementptr inbounds %struct.view, %struct.view* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load %struct.view*, %struct.view** %2, align 8
  %83 = getelementptr inbounds %struct.view, %struct.view* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  ret void
}

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @reset_search(%struct.view*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @clear_position(%struct.TYPE_6__*) #1

declare dso_local i32 @view_column_reset(%struct.view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

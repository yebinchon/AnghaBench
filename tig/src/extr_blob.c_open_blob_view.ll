; ModuleID = '/home/carl/AnghaBench/tig/src/extr_blob.c_open_blob_view.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_blob.c_open_blob_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i64*, i64*, i32 }

@blob_view = common dso_local global %struct.view zeroinitializer, align 8
@OPEN_RELOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @open_blob_view(%struct.view* %0, i32 %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.view* %0, %struct.view** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.view* @blob_view, %struct.view** %5, align 8
  %9 = load %struct.view*, %struct.view** %3, align 8
  %10 = load %struct.view*, %struct.view** %5, align 8
  %11 = icmp eq %struct.view* %9, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load %struct.view*, %struct.view** %5, align 8
  %14 = getelementptr inbounds %struct.view, %struct.view* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %2
  %22 = load %struct.view*, %struct.view** %5, align 8
  %23 = getelementptr inbounds %struct.view, %struct.view* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %21, %2
  %31 = phi i1 [ true, %2 ], [ %29, %21 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %30
  %36 = load %struct.view*, %struct.view** %5, align 8
  %37 = getelementptr inbounds %struct.view, %struct.view* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40, %35
  %44 = load %struct.view*, %struct.view** %3, align 8
  %45 = load %struct.view*, %struct.view** %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @open_view(%struct.view* %44, %struct.view* %45, i32 %46)
  br label %81

48:                                               ; preds = %40, %30
  %49 = load %struct.view*, %struct.view** %5, align 8
  %50 = getelementptr inbounds %struct.view, %struct.view* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @open_file_finder(i32 %53)
  store i8* %54, i8** %8, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %80

57:                                               ; preds = %48
  %58 = load %struct.view*, %struct.view** %5, align 8
  %59 = getelementptr inbounds %struct.view, %struct.view* %58, i32 0, i32 1
  %60 = call i32 @clear_position(i32* %59)
  %61 = load %struct.view*, %struct.view** %5, align 8
  %62 = getelementptr inbounds %struct.view, %struct.view* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = call i32 @string_ncopy(i64* %65, i8* %66, i32 %68)
  %70 = load %struct.view*, %struct.view** %5, align 8
  %71 = getelementptr inbounds %struct.view, %struct.view* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  store i64 0, i64* %75, align 8
  %76 = load %struct.view*, %struct.view** %3, align 8
  %77 = load %struct.view*, %struct.view** %5, align 8
  %78 = load i32, i32* @OPEN_RELOAD, align 4
  %79 = call i32 @open_view(%struct.view* %76, %struct.view* %77, i32 %78)
  br label %80

80:                                               ; preds = %57, %48
  br label %81

81:                                               ; preds = %80, %43
  ret void
}

declare dso_local i32 @open_view(%struct.view*, %struct.view*, i32) #1

declare dso_local i8* @open_file_finder(i32) #1

declare dso_local i32 @clear_position(i32*) #1

declare dso_local i32 @string_ncopy(i64*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_add_line_text_at_.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_add_line_text_at_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { %struct.box* }
%struct.box = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.view = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.line* @add_line_text_at_(%struct.view* %0, i64 %1, i8* %2, i64 %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.line*, align 8
  %9 = alloca %struct.view*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.box*, align 8
  %17 = alloca %struct.line*, align 8
  store %struct.view* %0, %struct.view** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load %struct.view*, %struct.view** %9, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i32, i32* %13, align 4
  %21 = load i64, i64* %14, align 8
  %22 = load i64, i64* %12, align 8
  %23 = call i32 @box_sizeof(i32* null, i64 %21, i64 %22)
  %24 = load i32, i32* %15, align 4
  %25 = call %struct.line* @add_line_at(%struct.view* %18, i64 %19, i32* null, i32 %20, i32 %23, i32 %24)
  store %struct.line* %25, %struct.line** %17, align 8
  %26 = load %struct.line*, %struct.line** %17, align 8
  %27 = icmp ne %struct.line* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %7
  store %struct.line* null, %struct.line** %8, align 8
  br label %69

29:                                               ; preds = %7
  %30 = load %struct.line*, %struct.line** %17, align 8
  %31 = getelementptr inbounds %struct.line, %struct.line* %30, i32 0, i32 0
  %32 = load %struct.box*, %struct.box** %31, align 8
  store %struct.box* %32, %struct.box** %16, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load %struct.box*, %struct.box** %16, align 8
  %35 = getelementptr inbounds %struct.box, %struct.box* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load %struct.box*, %struct.box** %16, align 8
  %38 = getelementptr inbounds %struct.box, %struct.box* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i64 %33, i64* %41, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.box*, %struct.box** %16, align 8
  %44 = getelementptr inbounds %struct.box, %struct.box* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load %struct.box*, %struct.box** %16, align 8
  %47 = getelementptr inbounds %struct.box, %struct.box* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %48
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 %42, i32* %51, align 8
  %52 = load %struct.box*, %struct.box** %16, align 8
  %53 = load i64, i64* %14, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = call i32 @box_text_copy(%struct.box* %52, i64 %53, i8* %54, i64 %55)
  %57 = load %struct.view*, %struct.view** %9, align 8
  %58 = getelementptr inbounds %struct.view, %struct.view* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %29
  %64 = load %struct.view*, %struct.view** %9, align 8
  %65 = load %struct.line*, %struct.line** %17, align 8
  %66 = call i32 @view_column_info_update(%struct.view* %64, %struct.line* %65)
  br label %67

67:                                               ; preds = %63, %29
  %68 = load %struct.line*, %struct.line** %17, align 8
  store %struct.line* %68, %struct.line** %8, align 8
  br label %69

69:                                               ; preds = %67, %28
  %70 = load %struct.line*, %struct.line** %8, align 8
  ret %struct.line* %70
}

declare dso_local %struct.line* @add_line_at(%struct.view*, i64, i32*, i32, i32, i32) #1

declare dso_local i32 @box_sizeof(i32*, i64, i64) #1

declare dso_local i32 @box_text_copy(%struct.box*, i64, i8*, i64) #1

declare dso_local i32 @view_column_info_update(%struct.view*, %struct.line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

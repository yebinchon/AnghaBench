; ModuleID = '/home/carl/AnghaBench/tig/src/extr_status.c_status_exists.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_status.c_status_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i64, %struct.line* }
%struct.line = type { i32, %struct.status* }
%struct.status = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @status_exists(%struct.view* %0, %struct.status* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca %struct.status*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.line*, align 8
  %10 = alloca %struct.status*, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store %struct.status* %1, %struct.status** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.view*, %struct.view** %5, align 8
  %12 = call i32 @refresh_view(%struct.view* %11)
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %75, %3
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.view*, %struct.view** %5, align 8
  %16 = getelementptr inbounds %struct.view, %struct.view* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %78

19:                                               ; preds = %13
  %20 = load %struct.view*, %struct.view** %5, align 8
  %21 = getelementptr inbounds %struct.view, %struct.view* %20, i32 0, i32 1
  %22 = load %struct.line*, %struct.line** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.line, %struct.line* %22, i64 %23
  store %struct.line* %24, %struct.line** %9, align 8
  %25 = load %struct.line*, %struct.line** %9, align 8
  %26 = getelementptr inbounds %struct.line, %struct.line* %25, i32 0, i32 1
  %27 = load %struct.status*, %struct.status** %26, align 8
  store %struct.status* %27, %struct.status** %10, align 8
  %28 = load %struct.line*, %struct.line** %9, align 8
  %29 = getelementptr inbounds %struct.line, %struct.line* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  br label %75

34:                                               ; preds = %19
  %35 = load %struct.status*, %struct.status** %10, align 8
  %36 = icmp ne %struct.status* %35, null
  br i1 %36, label %51, label %37

37:                                               ; preds = %34
  %38 = load %struct.status*, %struct.status** %6, align 8
  %39 = icmp ne %struct.status* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.status*, %struct.status** %6, align 8
  %42 = getelementptr inbounds %struct.status, %struct.status* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40, %37
  %46 = load %struct.line*, %struct.line** %9, align 8
  %47 = getelementptr inbounds %struct.line, %struct.line* %46, i64 1
  %48 = getelementptr inbounds %struct.line, %struct.line* %47, i32 0, i32 1
  %49 = load %struct.status*, %struct.status** %48, align 8
  %50 = icmp ne %struct.status* %49, null
  br i1 %50, label %68, label %51

51:                                               ; preds = %45, %40, %34
  %52 = load %struct.status*, %struct.status** %10, align 8
  %53 = icmp ne %struct.status* %52, null
  br i1 %53, label %54, label %74

54:                                               ; preds = %51
  %55 = load %struct.status*, %struct.status** %6, align 8
  %56 = icmp ne %struct.status* %55, null
  br i1 %56, label %57, label %74

57:                                               ; preds = %54
  %58 = load %struct.status*, %struct.status** %6, align 8
  %59 = getelementptr inbounds %struct.status, %struct.status* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.status*, %struct.status** %10, align 8
  %63 = getelementptr inbounds %struct.status, %struct.status* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @strcmp(i32 %61, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %57, %45
  %69 = load %struct.view*, %struct.view** %5, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @select_view_line(%struct.view* %69, i64 %70)
  %72 = load %struct.view*, %struct.view** %5, align 8
  %73 = call i32 @status_restore(%struct.view* %72)
  store i32 1, i32* %4, align 4
  br label %79

74:                                               ; preds = %57, %54, %51
  br label %75

75:                                               ; preds = %74, %33
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %8, align 8
  br label %13

78:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %68
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @refresh_view(%struct.view*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @select_view_line(%struct.view*, i64) #1

declare dso_local i32 @status_restore(%struct.view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

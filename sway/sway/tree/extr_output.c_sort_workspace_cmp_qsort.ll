; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_output.c_sort_workspace_cmp_qsort.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_output.c_sort_workspace_cmp_qsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_workspace = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @sort_workspace_cmp_qsort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sort_workspace_cmp_qsort(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sway_workspace*, align 8
  %7 = alloca %struct.sway_workspace*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i8**
  %12 = load i8*, i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.sway_workspace*
  store %struct.sway_workspace* %13, %struct.sway_workspace** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.sway_workspace*
  store %struct.sway_workspace* %17, %struct.sway_workspace** %7, align 8
  %18 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %19 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @isdigit(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %2
  %26 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %27 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @isdigit(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %25
  %34 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %35 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @strtol(i32* %36, i32* null, i32 10)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %39 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @strtol(i32* %40, i32* null, i32 10)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %51

46:                                               ; preds = %33
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp sgt i32 %47, %48
  %50 = zext i1 %49 to i32
  br label %51

51:                                               ; preds = %46, %45
  %52 = phi i32 [ -1, %45 ], [ %50, %46 ]
  store i32 %52, i32* %3, align 4
  br label %74

53:                                               ; preds = %25, %2
  %54 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %55 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @isdigit(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 -1, i32* %3, align 4
  br label %74

62:                                               ; preds = %53
  %63 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %64 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @isdigit(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 1, i32* %3, align 4
  br label %74

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %70, %61, %51
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @isdigit(i32) #1

declare dso_local i32 @strtol(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

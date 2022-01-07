; ModuleID = '/home/carl/AnghaBench/tig/src/extr_status.c_status_update.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_status.c_status_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32, %struct.TYPE_2__, %struct.line* }
%struct.TYPE_2__ = type { i64 }
%struct.line = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Nothing to update\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to update file status\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*)* @status_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @status_update(%struct.view* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.view*, align 8
  %4 = alloca %struct.line*, align 8
  store %struct.view* %0, %struct.view** %3, align 8
  %5 = load %struct.view*, %struct.view** %3, align 8
  %6 = getelementptr inbounds %struct.view, %struct.view* %5, i32 0, i32 2
  %7 = load %struct.line*, %struct.line** %6, align 8
  %8 = load %struct.view*, %struct.view** %3, align 8
  %9 = getelementptr inbounds %struct.view, %struct.view* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.line, %struct.line* %7, i64 %11
  store %struct.line* %12, %struct.line** %4, align 8
  %13 = load %struct.view*, %struct.view** %3, align 8
  %14 = getelementptr inbounds %struct.view, %struct.view* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.line*, %struct.line** %4, align 8
  %18 = getelementptr inbounds %struct.line, %struct.line* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %1
  %22 = load %struct.view*, %struct.view** %3, align 8
  %23 = load %struct.line*, %struct.line** %4, align 8
  %24 = call i64 @status_has_none(%struct.view* %22, %struct.line* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @report(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %50

28:                                               ; preds = %21
  %29 = load %struct.view*, %struct.view** %3, align 8
  %30 = load %struct.line*, %struct.line** %4, align 8
  %31 = getelementptr inbounds %struct.line, %struct.line* %30, i64 1
  %32 = call i32 @status_update_files(%struct.view* %29, %struct.line* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = call i32 @report(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %50

36:                                               ; preds = %28
  br label %49

37:                                               ; preds = %1
  %38 = load %struct.line*, %struct.line** %4, align 8
  %39 = getelementptr inbounds %struct.line, %struct.line* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.line*, %struct.line** %4, align 8
  %42 = getelementptr inbounds %struct.line, %struct.line* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @status_update_file(i32 %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %37
  %47 = call i32 @report(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %50

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %36
  store i32 1, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %46, %34, %26
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @status_has_none(%struct.view*, %struct.line*) #1

declare dso_local i32 @report(i8*) #1

declare dso_local i32 @status_update_files(%struct.view*, %struct.line*) #1

declare dso_local i32 @status_update_file(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

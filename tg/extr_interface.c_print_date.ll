; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_print_date.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_print_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_ev = type { i32 }
%struct.tm = type { i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"[%02d:%02d] \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"[%02d %s]\00", align 1
@monthes = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"[%02d %s %d]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_date(%struct.in_ev* %0, i64 %1) #0 {
  %3 = alloca %struct.in_ev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tm*, align 8
  store %struct.in_ev* %0, %struct.in_ev** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = bitcast i64* %4 to i8*
  %7 = call %struct.tm* @localtime(i8* %6)
  store %struct.tm* %7, %struct.tm** %5, align 8
  %8 = call i64 @time(i32 0)
  %9 = load i64, i64* %4, align 8
  %10 = sub nsw i64 %8, %9
  %11 = icmp slt i64 %10, 43200
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %14 = load %struct.tm*, %struct.tm** %5, align 8
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.tm*, %struct.tm** %5, align 8
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (%struct.in_ev*, i8*, i32, i32, ...) @mprintf(%struct.in_ev* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  br label %55

21:                                               ; preds = %2
  %22 = call i64 @time(i32 0)
  %23 = load i64, i64* %4, align 8
  %24 = sub nsw i64 %22, %23
  %25 = icmp slt i64 %24, 15552000
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %28 = load %struct.tm*, %struct.tm** %5, align 8
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** @monthes, align 8
  %32 = load %struct.tm*, %struct.tm** %5, align 8
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (%struct.in_ev*, i8*, i32, i32, ...) @mprintf(%struct.in_ev* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %36)
  br label %54

38:                                               ; preds = %21
  %39 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %40 = load %struct.tm*, %struct.tm** %5, align 8
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** @monthes, align 8
  %44 = load %struct.tm*, %struct.tm** %5, align 8
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.tm*, %struct.tm** %5, align 8
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1900
  %53 = call i32 (%struct.in_ev*, i8*, i32, i32, ...) @mprintf(%struct.in_ev* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %48, i64 %52)
  br label %54

54:                                               ; preds = %38, %26
  br label %55

55:                                               ; preds = %54, %12
  ret void
}

declare dso_local %struct.tm* @localtime(i8*) #1

declare dso_local i64 @time(i32) #1

declare dso_local i32 @mprintf(%struct.in_ev*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

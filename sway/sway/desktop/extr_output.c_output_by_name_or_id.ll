; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_output_by_name_or_id.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_output_by_name_or_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.sway_output** }
%struct.sway_output = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@root = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_output* @output_by_name_or_id(i8* %0) #0 {
  %2 = alloca %struct.sway_output*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sway_output*, align 8
  %6 = alloca [128 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %44, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @root, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %7
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @root, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.sway_output**, %struct.sway_output*** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.sway_output*, %struct.sway_output** %20, i64 %22
  %24 = load %struct.sway_output*, %struct.sway_output** %23, align 8
  store %struct.sway_output* %24, %struct.sway_output** %5, align 8
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %26 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %27 = call i32 @output_get_identifier(i8* %25, i32 128, %struct.sway_output* %26)
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %29 = load i8*, i8** %3, align 8
  %30 = call i64 @strcasecmp(i8* %28, i8* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %15
  %33 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %34 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = call i64 @strcasecmp(i8* %37, i8* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32, %15
  %42 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  store %struct.sway_output* %42, %struct.sway_output** %2, align 8
  br label %48

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %7

47:                                               ; preds = %7
  store %struct.sway_output* null, %struct.sway_output** %2, align 8
  br label %48

48:                                               ; preds = %47, %41
  %49 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  ret %struct.sway_output* %49
}

declare dso_local i32 @output_get_identifier(i8*, i32, %struct.sway_output*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

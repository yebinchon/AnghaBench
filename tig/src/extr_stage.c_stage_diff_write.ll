; ModuleID = '/home/carl/AnghaBench/tig/src/extr_stage.c_stage_diff_write.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_stage.c_stage_diff_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io = type { i32 }
%struct.line = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io*, %struct.line*, %struct.line*)* @stage_diff_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stage_diff_write(%struct.io* %0, %struct.line* %1, %struct.line* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.io*, align 8
  %6 = alloca %struct.line*, align 8
  %7 = alloca %struct.line*, align 8
  %8 = alloca i8*, align 8
  store %struct.io* %0, %struct.io** %5, align 8
  store %struct.line* %1, %struct.line** %6, align 8
  store %struct.line* %2, %struct.line** %7, align 8
  br label %9

9:                                                ; preds = %35, %3
  %10 = load %struct.line*, %struct.line** %6, align 8
  %11 = load %struct.line*, %struct.line** %7, align 8
  %12 = icmp ult %struct.line* %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load %struct.line*, %struct.line** %6, align 8
  %15 = call i8* @box_text(%struct.line* %14)
  store i8* %15, i8** %8, align 8
  %16 = load %struct.io*, %struct.io** %5, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = call i32 @io_write(%struct.io* %16, i8* %17, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load %struct.io*, %struct.io** %5, align 8
  %24 = call i32 @io_write(%struct.io* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22, %13
  store i32 0, i32* %4, align 4
  br label %37

27:                                               ; preds = %22
  %28 = load %struct.line*, %struct.line** %6, align 8
  %29 = getelementptr inbounds %struct.line, %struct.line* %28, i32 1
  store %struct.line* %29, %struct.line** %6, align 8
  %30 = load %struct.line*, %struct.line** %6, align 8
  %31 = load %struct.line*, %struct.line** %7, align 8
  %32 = call i64 @stage_diff_done(%struct.line* %30, %struct.line* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %36

35:                                               ; preds = %27
  br label %9

36:                                               ; preds = %34, %9
  store i32 1, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %26
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i8* @box_text(%struct.line*) #1

declare dso_local i32 @io_write(%struct.io*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @stage_diff_done(%struct.line*, %struct.line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

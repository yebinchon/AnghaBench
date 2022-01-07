; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_output.c_output_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_output.c_output_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_output = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [55 x i8] c"Tried to free output which wasn't marked as destroying\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Tried to free output which still had a wlr_output\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"Tried to free output which is still referenced by transactions\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_destroy(%struct.sway_output* %0) #0 {
  %2 = alloca %struct.sway_output*, align 8
  store %struct.sway_output* %0, %struct.sway_output** %2, align 8
  %3 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %4 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @sway_assert(i32 %6, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %41

10:                                               ; preds = %1
  %11 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %12 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @sway_assert(i32 %15, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  br label %41

19:                                               ; preds = %10
  %20 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %21 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @sway_assert(i32 %25, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  br label %41

29:                                               ; preds = %19
  %30 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %31 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @list_free(i32 %32)
  %34 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %35 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @list_free(i32 %37)
  %39 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %40 = call i32 @free(%struct.sway_output* %39)
  br label %41

41:                                               ; preds = %29, %28, %18, %9
  ret void
}

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @list_free(i32) #1

declare dso_local i32 @free(%struct.sway_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/zlib/examples/extr_gzlog.c_gzlog_close.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/zlib/examples/extr_gzlog.c_gzlog_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.log = type { i32, %struct.log* }

@LOGID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"bad\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gzlog_close(%struct.log* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.log*, align 8
  %4 = alloca %struct.log*, align 8
  store %struct.log* %0, %struct.log** %3, align 8
  %5 = load %struct.log*, %struct.log** %3, align 8
  store %struct.log* %5, %struct.log** %4, align 8
  %6 = load %struct.log*, %struct.log** %4, align 8
  %7 = icmp eq %struct.log* %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = load %struct.log*, %struct.log** %4, align 8
  %10 = getelementptr inbounds %struct.log, %struct.log* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @LOGID, align 4
  %13 = call i64 @strcmp(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8, %1
  store i32 -3, i32* %2, align 4
  br label %35

16:                                               ; preds = %8
  %17 = load %struct.log*, %struct.log** %4, align 8
  %18 = call i32 @log_close(%struct.log* %17)
  %19 = load %struct.log*, %struct.log** %4, align 8
  %20 = getelementptr inbounds %struct.log, %struct.log* %19, i32 0, i32 1
  %21 = load %struct.log*, %struct.log** %20, align 8
  %22 = icmp ne %struct.log* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.log*, %struct.log** %4, align 8
  %25 = getelementptr inbounds %struct.log, %struct.log* %24, i32 0, i32 1
  %26 = load %struct.log*, %struct.log** %25, align 8
  %27 = call i32 @free(%struct.log* %26)
  br label %28

28:                                               ; preds = %23, %16
  %29 = load %struct.log*, %struct.log** %4, align 8
  %30 = getelementptr inbounds %struct.log, %struct.log* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @strcpy(i32 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.log*, %struct.log** %4, align 8
  %34 = call i32 @free(%struct.log* %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %28, %15
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @log_close(%struct.log*) #1

declare dso_local i32 @free(%struct.log*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

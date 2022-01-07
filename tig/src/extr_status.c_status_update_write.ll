; ModuleID = '/home/carl/AnghaBench/tig/src/extr_status.c_status_update_write.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_status.c_status_update_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io = type { i32 }
%struct.status = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%06o %s\09%s%c\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"line type %d not handled in switch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io*, %struct.status*, i32)* @status_update_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @status_update_write(%struct.io* %0, %struct.status* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.io*, align 8
  %6 = alloca %struct.status*, align 8
  %7 = alloca i32, align 4
  store %struct.io* %0, %struct.io** %5, align 8
  store %struct.status* %1, %struct.status** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %31 [
    i32 130, label %9
    i32 129, label %24
    i32 128, label %24
  ]

9:                                                ; preds = %3
  %10 = load %struct.io*, %struct.io** %5, align 8
  %11 = load %struct.status*, %struct.status** %6, align 8
  %12 = getelementptr inbounds %struct.status, %struct.status* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.status*, %struct.status** %6, align 8
  %16 = getelementptr inbounds %struct.status, %struct.status* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.status*, %struct.status** %6, align 8
  %20 = getelementptr inbounds %struct.status, %struct.status* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (%struct.io*, i8*, i32, i32, ...) @io_printf(%struct.io* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18, i32 %22, i32 0)
  store i32 %23, i32* %4, align 4
  br label %34

24:                                               ; preds = %3, %3
  %25 = load %struct.io*, %struct.io** %5, align 8
  %26 = load %struct.status*, %struct.status** %6, align 8
  %27 = getelementptr inbounds %struct.status, %struct.status* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (%struct.io*, i8*, i32, i32, ...) @io_printf(%struct.io* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 0)
  store i32 %30, i32* %4, align 4
  br label %34

31:                                               ; preds = %3
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %24, %9
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @io_printf(%struct.io*, i8*, i32, i32, ...) #1

declare dso_local i32 @die(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

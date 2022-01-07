; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/rtp/extr_input.c_rtp_process.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/rtp/extr_input.c_rtp_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32* }
%struct.TYPE_15__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_15__*)* @rtp_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtp_process(%struct.TYPE_13__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %5, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %46

15:                                               ; preds = %2
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = call i32 @rtp_ptype(%struct.TYPE_15__* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sge i32 %18, 72
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = icmp sle i32 %21, 76
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %46

24:                                               ; preds = %20, %15
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = call i32 @rtp_autodetect(%struct.TYPE_13__* %31, i32 %34, %struct.TYPE_15__* %35)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %39

39:                                               ; preds = %30, %24
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %45 = call i32 @rtp_queue(%struct.TYPE_13__* %40, i32 %43, %struct.TYPE_15__* %44)
  br label %49

46:                                               ; preds = %23, %14
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = call i32 @block_Release(%struct.TYPE_15__* %47)
  br label %49

49:                                               ; preds = %46, %39
  ret void
}

declare dso_local i32 @rtp_ptype(%struct.TYPE_15__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rtp_autodetect(%struct.TYPE_13__*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @rtp_queue(%struct.TYPE_13__*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_index.c_fi_exit.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_index.c_fi_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_index = type { i32*, i64 }

@.str = private unnamed_addr constant [20 x i8] c"fi_exit: %p and %lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fi_exit(%struct.frame_index* %0) #0 {
  %2 = alloca %struct.frame_index*, align 8
  store %struct.frame_index* %0, %struct.frame_index** %2, align 8
  %3 = load %struct.frame_index*, %struct.frame_index** %2, align 8
  %4 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = bitcast i32* %5 to i8*
  %7 = load %struct.frame_index*, %struct.frame_index** %2, align 8
  %8 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @debug2(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %6, i64 %9)
  %11 = load %struct.frame_index*, %struct.frame_index** %2, align 8
  %12 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.frame_index*, %struct.frame_index** %2, align 8
  %17 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.frame_index*, %struct.frame_index** %2, align 8
  %22 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @free(i32* %23)
  br label %25

25:                                               ; preds = %20, %15, %1
  %26 = load %struct.frame_index*, %struct.frame_index** %2, align 8
  %27 = call i32 @fi_init(%struct.frame_index* %26)
  ret void
}

declare dso_local i32 @debug2(i8*, i8*, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @fi_init(%struct.frame_index*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

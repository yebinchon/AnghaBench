; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_index.c_fi_init.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_index.c_fi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_index = type { i32, i32, i64, i64, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fi_init(%struct.frame_index* %0) #0 {
  %2 = alloca %struct.frame_index*, align 8
  store %struct.frame_index* %0, %struct.frame_index** %2, align 8
  %3 = load %struct.frame_index*, %struct.frame_index** %2, align 8
  %4 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %3, i32 0, i32 5
  store i32* null, i32** %4, align 8
  %5 = load %struct.frame_index*, %struct.frame_index** %2, align 8
  %6 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = load %struct.frame_index*, %struct.frame_index** %2, align 8
  %8 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %7, i32 0, i32 4
  store i64 0, i64* %8, align 8
  %9 = load %struct.frame_index*, %struct.frame_index** %2, align 8
  %10 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.frame_index*, %struct.frame_index** %2, align 8
  %12 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.frame_index*, %struct.frame_index** %2, align 8
  %14 = call i32 @fi_next(%struct.frame_index* %13)
  %15 = load %struct.frame_index*, %struct.frame_index** %2, align 8
  %16 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  ret void
}

declare dso_local i32 @fi_next(%struct.frame_index*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

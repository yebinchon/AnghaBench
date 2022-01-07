; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_mp4.c_FlushHeader.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_mp4.c_FlushHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@BLOCK_FLAG_HEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @FlushHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FlushHeader(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %3, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %12, undef
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mp4mux_Set64BitExt(i32 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_17__* @mp4mux_GetFtyp(i32 %22)
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %4, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %25 = icmp ne %struct.TYPE_17__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %57

27:                                               ; preds = %19
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %32 = call i32 @VLC_OBJECT(%struct.TYPE_15__* %31)
  %33 = call %struct.TYPE_17__* @mp4mux_GetMoov(i32 %30, i32 %32, i32 0)
  store %struct.TYPE_17__* %33, %struct.TYPE_17__** %5, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = call i32 @box_gather(%struct.TYPE_17__* %34, %struct.TYPE_17__* %35)
  %37 = load i32, i32* @BLOCK_FLAG_HEADER, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %37
  store i32 %43, i32* %41, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %45 = call i64 @bo_size(%struct.TYPE_17__* %44)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %54 = call i32 @box_send(%struct.TYPE_15__* %52, %struct.TYPE_17__* %53)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  br label %57

57:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @mp4mux_Set64BitExt(i32) #1

declare dso_local %struct.TYPE_17__* @mp4mux_GetFtyp(i32) #1

declare dso_local %struct.TYPE_17__* @mp4mux_GetMoov(i32, i32, i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_15__*) #1

declare dso_local i32 @box_gather(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i64 @bo_size(%struct.TYPE_17__*) #1

declare dso_local i32 @box_send(%struct.TYPE_15__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

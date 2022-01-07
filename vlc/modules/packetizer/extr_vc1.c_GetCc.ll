; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_vc1.c_GetCc.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_vc1.c_GetCc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@BLOCK_FLAG_TYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_10__*, %struct.TYPE_12__*)* @GetCc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @GetCc(%struct.TYPE_10__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %5, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.TYPE_13__* @block_Alloc(i32 %13)
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %6, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = icmp ne %struct.TYPE_13__* %15, null
  br i1 %16, label %17, label %77

17:                                               ; preds = %2
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @memcpy(i32 %20, i32 %24, i32 %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %17
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  br label %43

39:                                               ; preds = %17
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i32 [ %38, %35 ], [ %42, %39 ]
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  store i32 %44, i32* %48, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @BLOCK_FLAG_TYPE_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 4, i32 -1
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %43, %2
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = call i32 @cc_Flush(%struct.TYPE_14__* %79)
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  ret %struct.TYPE_13__* %81
}

declare dso_local %struct.TYPE_13__* @block_Alloc(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cc_Flush(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

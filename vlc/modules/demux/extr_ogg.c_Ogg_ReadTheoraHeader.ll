; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ogg.c_Ogg_ReadTheoraHeader.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ogg.c_Ogg_ReadTheoraHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*)* @Ogg_ReadTheoraHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Ogg_ReadTheoraHeader(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bs_init(i32* %6, i32 %18, i32 %21)
  %23 = call i32 @bs_skip(i32* %6, i32 56)
  %24 = call i32 @bs_read(i32* %6, i32 8)
  store i32 %24, i32* %10, align 4
  %25 = call i32 @bs_read(i32* %6, i32 8)
  store i32 %25, i32* %11, align 4
  %26 = call i32 @bs_read(i32* %6, i32 8)
  store i32 %26, i32* %12, align 4
  %27 = call i32 @bs_read(i32* %6, i32 16)
  %28 = call i32 @bs_read(i32* %6, i32 16)
  %29 = call i32 @bs_read(i32* %6, i32 24)
  %30 = call i32 @bs_read(i32* %6, i32 24)
  %31 = call i32 @bs_read(i32* %6, i32 8)
  %32 = call i32 @bs_read(i32* %6, i32 8)
  %33 = call i32 @bs_read(i32* %6, i32 32)
  store i32 %33, i32* %7, align 4
  %34 = call i32 @bs_read(i32* %6, i32 32)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @__MAX(i32 %35, i32 1)
  store i32 %36, i32* %8, align 4
  %37 = call i32 @bs_read(i32* %6, i32 24)
  %38 = call i32 @bs_read(i32* %6, i32 24)
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 4
  %49 = call i32 @bs_read(i32* %6, i32 8)
  %50 = call i32 @bs_read(i32* %6, i32 24)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = call i32 @bs_read(i32* %6, i32 6)
  %55 = call i32 @bs_read(i32* %6, i32 5)
  %56 = shl i32 1, %55
  store i32 %56, i32* %9, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %64, %2
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = load i32, i32* %9, align 4
  %70 = ashr i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %61

71:                                               ; preds = %61
  %72 = load i32, i32* %10, align 4
  %73 = mul nsw i32 %72, 1000000
  %74 = load i32, i32* %11, align 4
  %75 = mul nsw i32 %74, 1000
  %76 = add nsw i32 %73, %75
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %76, %77
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp sge i32 %79, 3002001
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 1, i32 0
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %71
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87, %71
  store i32 0, i32* %3, align 4
  br label %97

91:                                               ; preds = %87
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @date_Init(i32* %93, i32 %94, i32 %95)
  store i32 1, i32* %3, align 4
  br label %97

97:                                               ; preds = %91, %90
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @bs_init(i32*, i32, i32) #1

declare dso_local i32 @bs_skip(i32*, i32) #1

declare dso_local i32 @bs_read(i32*, i32) #1

declare dso_local i32 @__MAX(i32, i32) #1

declare dso_local i32 @date_Init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

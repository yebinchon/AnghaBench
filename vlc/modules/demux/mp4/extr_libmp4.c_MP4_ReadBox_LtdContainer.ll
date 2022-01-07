; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_ReadBox_LtdContainer.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_ReadBox_LtdContainer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64 }

@MP4_Box_data_lcont_t = common dso_local global i32 0, align 4
@i_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*)* @MP4_ReadBox_LtdContainer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MP4_ReadBox_LtdContainer(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %8 = load i32, i32* @MP4_Box_data_lcont_t, align 4
  %9 = call i32 @MP4_READBOX_ENTER_PARTIAL(i32 %8, i32 16, i32* null)
  %10 = load i32, i32* @i_read, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @MP4_READBOX_EXIT(i32 0)
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = call i32 @MP4_GETVERSIONFLAGS(%struct.TYPE_11__* %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = call i32 @MP4_READBOX_EXIT(i32 0)
  br label %29

29:                                               ; preds = %27, %14
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @MP4_GET4BYTES(i64 %35)
  store i64 0, i64* %6, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 16
  store i32 %40, i32* @i_read, align 4
  br label %41

41:                                               ; preds = %75, %29
  %42 = load i32, i32* @i_read, align 4
  %43 = icmp sgt i32 %42, 8
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %45, %51
  br label %53

53:                                               ; preds = %44, %41
  %54 = phi i1 [ false, %41 ], [ %52, %44 ]
  br i1 %54, label %55, label %81

55:                                               ; preds = %53
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = call %struct.TYPE_10__* @MP4_ReadBox(i32* %56, %struct.TYPE_10__* %57)
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** %7, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = icmp ne %struct.TYPE_10__* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  br label %81

62:                                               ; preds = %55
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = call i32 @MP4_BoxAddChild(%struct.TYPE_10__* %63, %struct.TYPE_10__* %64)
  %66 = load i64, i64* %6, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %6, align 8
  %68 = load i32, i32* @i_read, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = call i32 @MP4_READBOX_EXIT(i32 0)
  br label %75

75:                                               ; preds = %73, %62
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @i_read, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* @i_read, align 4
  br label %41

81:                                               ; preds = %61, %53
  %82 = load i64, i64* %6, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %82, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %81
  %91 = load i64, i64* %6, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  store i64 %91, i64* %96, align 8
  br label %97

97:                                               ; preds = %90, %81
  %98 = load i32*, i32** %4, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %101, %105
  %107 = call i64 @MP4_Seek(i32* %98, i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %97
  %110 = call i32 @MP4_READBOX_EXIT(i32 0)
  br label %111

111:                                              ; preds = %109, %97
  %112 = call i32 @MP4_READBOX_EXIT(i32 1)
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @MP4_READBOX_ENTER_PARTIAL(i32, i32, i32*) #1

declare dso_local i32 @MP4_READBOX_EXIT(i32) #1

declare dso_local i32 @MP4_GETVERSIONFLAGS(%struct.TYPE_11__*) #1

declare dso_local i32 @MP4_GET4BYTES(i64) #1

declare dso_local %struct.TYPE_10__* @MP4_ReadBox(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @MP4_BoxAddChild(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i64 @MP4_Seek(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

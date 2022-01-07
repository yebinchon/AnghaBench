; ModuleID = '/home/carl/AnghaBench/vlc/modules/access_output/extr_rist.c_Clean.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access_output/extr_rist.c_Clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.rtp_pkt*, i32, i32, %struct.rtp_pkt*, i32* }
%struct.rtp_pkt = type { i64, i64, i64, %struct.rtp_pkt* }

@RIST_QUEUE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @Clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Clean(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtp_pkt*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i64 @likely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @block_FifoRelease(i32* %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  %24 = load %struct.rtp_pkt*, %struct.rtp_pkt** %23, align 8
  %25 = icmp ne %struct.rtp_pkt* %24, null
  br i1 %25, label %26, label %108

26:                                               ; preds = %21
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load %struct.rtp_pkt*, %struct.rtp_pkt** %28, align 8
  %30 = getelementptr inbounds %struct.rtp_pkt, %struct.rtp_pkt* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %36 = load %struct.rtp_pkt*, %struct.rtp_pkt** %35, align 8
  %37 = getelementptr inbounds %struct.rtp_pkt, %struct.rtp_pkt* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @net_Close(i64 %38)
  br label %40

40:                                               ; preds = %33, %26
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = load %struct.rtp_pkt*, %struct.rtp_pkt** %42, align 8
  %44 = getelementptr inbounds %struct.rtp_pkt, %struct.rtp_pkt* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  %50 = load %struct.rtp_pkt*, %struct.rtp_pkt** %49, align 8
  %51 = getelementptr inbounds %struct.rtp_pkt, %struct.rtp_pkt* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @net_Close(i64 %52)
  br label %54

54:                                               ; preds = %47, %40
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = load %struct.rtp_pkt*, %struct.rtp_pkt** %56, align 8
  %58 = getelementptr inbounds %struct.rtp_pkt, %struct.rtp_pkt* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp sge i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  %64 = load %struct.rtp_pkt*, %struct.rtp_pkt** %63, align 8
  %65 = getelementptr inbounds %struct.rtp_pkt, %struct.rtp_pkt* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @net_Close(i64 %66)
  br label %68

68:                                               ; preds = %61, %54
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %94, %68
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @RIST_QUEUE_SIZE, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %97

73:                                               ; preds = %69
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 3
  %76 = load %struct.rtp_pkt*, %struct.rtp_pkt** %75, align 8
  %77 = getelementptr inbounds %struct.rtp_pkt, %struct.rtp_pkt* %76, i32 0, i32 3
  %78 = load %struct.rtp_pkt*, %struct.rtp_pkt** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.rtp_pkt, %struct.rtp_pkt* %78, i64 %80
  store %struct.rtp_pkt* %81, %struct.rtp_pkt** %5, align 8
  %82 = load %struct.rtp_pkt*, %struct.rtp_pkt** %5, align 8
  %83 = getelementptr inbounds %struct.rtp_pkt, %struct.rtp_pkt* %82, i32 0, i32 3
  %84 = load %struct.rtp_pkt*, %struct.rtp_pkt** %83, align 8
  %85 = icmp ne %struct.rtp_pkt* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %73
  %87 = load %struct.rtp_pkt*, %struct.rtp_pkt** %5, align 8
  %88 = getelementptr inbounds %struct.rtp_pkt, %struct.rtp_pkt* %87, i32 0, i32 3
  %89 = load %struct.rtp_pkt*, %struct.rtp_pkt** %88, align 8
  %90 = call i32 @block_Release(%struct.rtp_pkt* %89)
  %91 = load %struct.rtp_pkt*, %struct.rtp_pkt** %5, align 8
  %92 = getelementptr inbounds %struct.rtp_pkt, %struct.rtp_pkt* %91, i32 0, i32 3
  store %struct.rtp_pkt* null, %struct.rtp_pkt** %92, align 8
  br label %93

93:                                               ; preds = %86, %73
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %4, align 4
  br label %69

97:                                               ; preds = %69
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  %100 = load %struct.rtp_pkt*, %struct.rtp_pkt** %99, align 8
  %101 = getelementptr inbounds %struct.rtp_pkt, %struct.rtp_pkt* %100, i32 0, i32 3
  %102 = load %struct.rtp_pkt*, %struct.rtp_pkt** %101, align 8
  %103 = call i32 @free(%struct.rtp_pkt* %102)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 3
  %106 = load %struct.rtp_pkt*, %struct.rtp_pkt** %105, align 8
  %107 = call i32 @free(%struct.rtp_pkt* %106)
  br label %108

108:                                              ; preds = %97, %21
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  %111 = call i32 @vlc_mutex_destroy(i32* %110)
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = call i32 @vlc_mutex_destroy(i32* %113)
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load %struct.rtp_pkt*, %struct.rtp_pkt** %116, align 8
  %118 = icmp ne %struct.rtp_pkt* %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %108
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load %struct.rtp_pkt*, %struct.rtp_pkt** %121, align 8
  %123 = call i32 @block_Release(%struct.rtp_pkt* %122)
  br label %124

124:                                              ; preds = %119, %108
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @block_FifoRelease(i32*) #1

declare dso_local i32 @net_Close(i64) #1

declare dso_local i32 @block_Release(%struct.rtp_pkt*) #1

declare dso_local i32 @free(%struct.rtp_pkt*) #1

declare dso_local i32 @vlc_mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

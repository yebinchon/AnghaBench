; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_LibTCPGetDataFromConnectionQueue.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_LibTCPGetDataFromConnectionQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i32 }
%struct.TYPE_9__ = type { i64, %struct.pbuf*, i32 }
%struct.pbuf = type { i64 }

@QueueEntryLookasideList = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LibTCPGetDataFromConnectionQueue(%struct.TYPE_10__* %0, i32 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.pbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %17 = load i64*, i64** %8, align 8
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = call i32 @LockObject(%struct.TYPE_10__* %18, i32* %16)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = call i32 @IsListEmpty(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %119, label %24

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %117, %24
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = call %struct.TYPE_9__* @LibTCPDequeuePacket(%struct.TYPE_10__* %26)
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %9, align 8
  %28 = icmp ne %struct.TYPE_9__* %27, null
  br i1 %28, label %29, label %118

29:                                               ; preds = %25
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load %struct.pbuf*, %struct.pbuf** %31, align 8
  store %struct.pbuf* %32, %struct.pbuf** %10, align 8
  %33 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %34 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %13, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %13, align 8
  %40 = sub nsw i64 %39, %38
  store i64 %40, i64* %13, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @MIN(i64 %44, i64 %45)
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @ASSERT(i32 %49)
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* %13, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %29
  %55 = load i64, i64* %12, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, %55
  store i64 %59, i64* %57, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = call i32 @InsertHeadList(i32* %61, i32* %63)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %9, align 8
  br label %65

65:                                               ; preds = %54, %29
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @UnlockObject(%struct.TYPE_10__* %66, i32 %67)
  %69 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %14, align 8
  %73 = call i64 @pbuf_copy_partial(%struct.pbuf* %69, i32 %70, i64 %71, i64 %72)
  store i64 %73, i64* %15, align 8
  %74 = load i64, i64* %15, align 8
  %75 = load i64, i64* %12, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @ASSERT(i32 %77)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = call i32 @LockObject(%struct.TYPE_10__* %79, i32* %16)
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* %7, align 8
  %83 = sub nsw i64 %82, %81
  store i64 %83, i64* %7, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %6, align 4
  %89 = load i64, i64* %12, align 8
  %90 = load i64*, i64** %8, align 8
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, %89
  store i64 %92, i64* %90, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %94 = icmp ne %struct.TYPE_9__* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %65
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load %struct.pbuf*, %struct.pbuf** %97, align 8
  %99 = call i32 @pbuf_free_callback(%struct.pbuf* %98)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %101 = call i32 @ExFreeToNPagedLookasideList(i32* @QueueEntryLookasideList, %struct.TYPE_9__* %100)
  br label %107

102:                                              ; preds = %65
  %103 = load i64, i64* %7, align 8
  %104 = icmp eq i64 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @ASSERT(i32 %105)
  br label %107

107:                                              ; preds = %102, %95
  %108 = load i64*, i64** %8, align 8
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @ASSERT(i32 %111)
  %113 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %113, i32* %11, align 4
  %114 = load i64, i64* %7, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %107
  br label %118

117:                                              ; preds = %107
  br label %25

118:                                              ; preds = %116, %25
  br label %131

119:                                              ; preds = %4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %11, align 4
  br label %130

128:                                              ; preds = %119
  %129 = load i32, i32* @STATUS_PENDING, align 4
  store i32 %129, i32* %11, align 4
  br label %130

130:                                              ; preds = %128, %124
  br label %131

131:                                              ; preds = %130, %118
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %133 = load i32, i32* %16, align 4
  %134 = call i32 @UnlockObject(%struct.TYPE_10__* %132, i32 %133)
  %135 = load i32, i32* %11, align 4
  ret i32 %135
}

declare dso_local i32 @LockObject(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @IsListEmpty(i32*) #1

declare dso_local %struct.TYPE_9__* @LibTCPDequeuePacket(%struct.TYPE_10__*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @InsertHeadList(i32*, i32*) #1

declare dso_local i32 @UnlockObject(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @pbuf_copy_partial(%struct.pbuf*, i32, i64, i64) #1

declare dso_local i32 @pbuf_free_callback(%struct.pbuf*) #1

declare dso_local i32 @ExFreeToNPagedLookasideList(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

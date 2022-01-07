; ModuleID = '/home/carl/AnghaBench/redis/src/extr_ae.c_processTimeEvents.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_ae.c_processTimeEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i64, i32 (%struct.TYPE_10__*, i64, i32)*, %struct.TYPE_9__*, i32, i32 (%struct.TYPE_10__*, i32)*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }

@AE_DELETED_EVENT_ID = common dso_local global i64 0, align 8
@AE_NOMORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @processTimeEvents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processTimeEvents(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store i32 0, i32* %3, align 4
  %12 = call i64 @time(i32* null)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %4, align 8
  br label %22

22:                                               ; preds = %25, %18
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %4, align 8
  br label %22

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %1
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %4, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %165, %112, %102, %32
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = icmp ne %struct.TYPE_9__* %45, null
  br i1 %46, label %47, label %169

47:                                               ; preds = %44
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AE_DELETED_EVENT_ID, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %106

53:                                               ; preds = %47
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %10, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 7
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = icmp ne %struct.TYPE_8__* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 7
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %68, align 8
  br label %75

69:                                               ; preds = %53
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  store %struct.TYPE_9__* %72, %struct.TYPE_9__** %74, align 8
  br label %75

75:                                               ; preds = %69, %61
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = icmp ne %struct.TYPE_9__* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 7
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 7
  store %struct.TYPE_8__* %83, %struct.TYPE_8__** %87, align 8
  br label %88

88:                                               ; preds = %80, %75
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 6
  %91 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %90, align 8
  %92 = icmp ne i32 (%struct.TYPE_10__*, i32)* %91, null
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 6
  %96 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %95, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = call i32 %96(%struct.TYPE_10__* %97, i32 %100)
  br label %102

102:                                              ; preds = %93, %88
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %104 = call i32 @zfree(%struct.TYPE_9__* %103)
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %105, %struct.TYPE_9__** %4, align 8
  br label %44

106:                                              ; preds = %47
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %5, align 8
  %111 = icmp sgt i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  store %struct.TYPE_9__* %115, %struct.TYPE_9__** %4, align 8
  br label %44

116:                                              ; preds = %106
  %117 = call i32 @aeGetTime(i64* %7, i64* %8)
  %118 = load i64, i64* %7, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp sgt i64 %118, %121
  br i1 %122, label %135, label %123

123:                                              ; preds = %116
  %124 = load i64, i64* %7, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %124, %127
  br i1 %128, label %129, label %165

129:                                              ; preds = %123
  %130 = load i64, i64* %8, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp sge i64 %130, %133
  br i1 %134, label %135, label %165

135:                                              ; preds = %129, %116
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %9, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 3
  %141 = load i32 (%struct.TYPE_10__*, i64, i32)*, i32 (%struct.TYPE_10__*, i64, i32)** %140, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %143 = load i64, i64* %9, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = call i32 %141(%struct.TYPE_10__* %142, i64 %143, i32 %146)
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %3, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %3, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @AE_NOMORE, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %135
  %154 = load i32, i32* %11, align 4
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 2
  %159 = call i32 @aeAddMillisecondsToNow(i32 %154, i64* %156, i64* %158)
  br label %164

160:                                              ; preds = %135
  %161 = load i64, i64* @AE_DELETED_EVENT_ID, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  store i64 %161, i64* %163, align 8
  br label %164

164:                                              ; preds = %160, %153
  br label %165

165:                                              ; preds = %164, %129, %123
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 4
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  store %struct.TYPE_9__* %168, %struct.TYPE_9__** %4, align 8
  br label %44

169:                                              ; preds = %44
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @zfree(%struct.TYPE_9__*) #1

declare dso_local i32 @aeGetTime(i64*, i64*) #1

declare dso_local i32 @aeAddMillisecondsToNow(i32, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_time.c_test_FileTimeToLocalFileTime.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_time.c_test_FileTimeToLocalFileTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i32, i32, i32, i64, i64, i32, i64 }
%struct.TYPE_9__ = type { i32, i32, i64 }

@TICKSPERSEC = common dso_local global i32 0, align 4
@TICKS_1601_TO_1970 = common dso_local global i32 0, align 4
@TIME_ZONE_ID_STANDARD = common dso_local global i64 0, align 8
@TIME_ZONE_ID_DAYLIGHT = common dso_local global i64 0, align 8
@SECSPERMIN = common dso_local global i32 0, align 4
@TIME_ZONE_ID_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"GetTimeZoneInformation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"FileTimeToLocalFileTime() failed with Error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Got Year %4d Month %2d Day %2d Hour %2d Min %2d Sec %2d mSec %3d\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"GMT\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"SetEnvironmentVariableA failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_FileTimeToLocalFileTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_FileTimeToLocalFileTime() #0 {
  %1 = alloca %struct.TYPE_11__, align 8
  %2 = alloca %struct.TYPE_11__, align 8
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i64 @GetTimeZoneInformation(%struct.TYPE_9__* %4)
  store i64 %8, i64* %5, align 8
  %9 = load i32, i32* @TICKSPERSEC, align 4
  %10 = load i32, i32* @TICKS_1601_TO_1970, align 4
  %11 = add nsw i32 %9, %10
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @TIME_ZONE_ID_STANDARD, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  br label %30

20:                                               ; preds = %0
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @TIME_ZONE_ID_DAYLIGHT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  br label %28

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i32 [ %26, %24 ], [ 0, %27 ]
  br label %30

30:                                               ; preds = %28, %17
  %31 = phi i32 [ %19, %17 ], [ %29, %28 ]
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %13, %32
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @SECSPERMIN, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* @TICKSPERSEC, align 4
  %38 = mul nsw i32 %36, %37
  %39 = add nsw i32 %11, %38
  store i32 %39, i32* %6, align 4
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @TIME_ZONE_ID_INVALID, align 8
  %42 = icmp ne i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 32
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 1
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 0
  store i8* %52, i8** %53, align 8
  %54 = call i32 @FileTimeToLocalFileTime(%struct.TYPE_11__* %1, %struct.TYPE_11__* %2)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (...) @GetLastError()
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = call i32 @FileTimeToSystemTime(%struct.TYPE_11__* %2, %struct.TYPE_10__* %3)
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 1970
  br i1 %61, label %62, label %86

62:                                               ; preds = %30
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %86

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %86

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br label %86

86:                                               ; preds = %82, %78, %74, %70, %66, %62, %30
  %87 = phi i1 [ false, %78 ], [ false, %74 ], [ false, %70 ], [ false, %66 ], [ false, %62 ], [ false, %30 ], [ %85, %82 ]
  %88 = zext i1 %87 to i32
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 6
  %102 = load i64, i64* %101, align 8
  %103 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %92, i32 %94, i64 %96, i64 %98, i32 %100, i64 %102)
  %104 = call i64 @SetEnvironmentVariableA(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %105 = icmp ne i64 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %108 = load i64, i64* %5, align 8
  %109 = load i64, i64* @TIME_ZONE_ID_INVALID, align 8
  %110 = icmp ne i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %113 = call i32 @FileTimeToLocalFileTime(%struct.TYPE_11__* %1, %struct.TYPE_11__* %2)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 (...) @GetLastError()
  %116 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  %117 = call i32 @FileTimeToSystemTime(%struct.TYPE_11__* %2, %struct.TYPE_10__* %3)
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, 1970
  br i1 %120, label %121, label %145

121:                                              ; preds = %86
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %145

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %145

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 6
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br label %145

145:                                              ; preds = %141, %137, %133, %129, %125, %121, %86
  %146 = phi i1 [ false, %137 ], [ false, %133 ], [ false, %129 ], [ false, %125 ], [ false, %121 ], [ false, %86 ], [ %144, %141 ]
  %147 = zext i1 %146 to i32
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 6
  %161 = load i64, i64* %160, align 8
  %162 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %149, i32 %151, i32 %153, i64 %155, i64 %157, i32 %159, i64 %161)
  %163 = call i64 @SetEnvironmentVariableA(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* null)
  %164 = icmp ne i64 %163, 0
  %165 = zext i1 %164 to i32
  %166 = call i32 (i32, i8*, ...) @ok(i32 %165, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i64 @GetTimeZoneInformation(%struct.TYPE_9__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @FileTimeToLocalFileTime(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @FileTimeToSystemTime(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i64 @SetEnvironmentVariableA(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_event.c_zed_event_seek.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_event.c_zed_event_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zed_conf = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to seek zevent: %s\00", align 1
@ZEVENT_NONBLOCK = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Missed %d events\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"eid\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to lookup zevent eid\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Failed to lookup zevent time (eid=%llu)\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Failed to lookup zevent time (eid=%llu, nelem=%u)\00", align 1
@ZEVENT_SEEK_START = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"Failed to seek to eid=0\00", align 1
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"Processing events since eid=%llu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zed_event_seek(%struct.zed_conf* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zed_conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.zed_conf* %0, %struct.zed_conf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %15 = load %struct.zed_conf*, %struct.zed_conf** %5, align 8
  %16 = icmp ne %struct.zed_conf* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* @errno, align 4
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @strerror(i32 %20)
  %22 = call i32 (i32, i8*, ...) @zed_log_msg(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 -1, i32* %4, align 4
  br label %136

23:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %104, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ false, %24 ], [ %31, %28 ]
  br i1 %33, label %34, label %107

34:                                               ; preds = %32
  %35 = load %struct.zed_conf*, %struct.zed_conf** %5, align 8
  %36 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ZEVENT_NONBLOCK, align 4
  %39 = load %struct.zed_conf*, %struct.zed_conf** %5, align 8
  %40 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @zpool_events_next(i32 %37, i32** %10, i32* %11, i32 %38, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %34
  %46 = load i32*, i32** %10, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45, %34
  br label %107

49:                                               ; preds = %45
  %50 = load i32, i32* %11, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* @LOG_WARNING, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 (i32, i8*, ...) @zed_log_msg(i32 %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i32*, i32** %10, align 8
  %58 = call i64 @nvlist_lookup_uint64(i32* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %8)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @LOG_WARNING, align 4
  %62 = call i32 (i32, i8*, ...) @zed_log_msg(i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %104

63:                                               ; preds = %56
  %64 = load i32*, i32** %10, align 8
  %65 = call i64 @nvlist_lookup_int64_array(i32* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64** %12, i32* %13)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* @LOG_WARNING, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 (i32, i8*, ...) @zed_log_msg(i32 %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %69)
  br label %103

71:                                               ; preds = %63
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 2
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32, i32* @LOG_WARNING, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 (i32, i8*, ...) @zed_log_msg(i32 %75, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %76, i32 %77)
  br label %102

79:                                               ; preds = %71
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %99, label %83

83:                                               ; preds = %79
  %84 = load i64*, i64** %12, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64*, i64** %7, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %86, %89
  br i1 %90, label %99, label %91

91:                                               ; preds = %83
  %92 = load i64*, i64** %12, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %7, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91, %83, %79
  br label %101

100:                                              ; preds = %91
  store i32 1, i32* %9, align 4
  br label %101

101:                                              ; preds = %100, %99
  br label %102

102:                                              ; preds = %101, %74
  br label %103

103:                                              ; preds = %102, %67
  br label %104

104:                                              ; preds = %103, %60
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 @free(i32* %105)
  br label %24

107:                                              ; preds = %48, %32
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %128, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %6, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %110
  %114 = load %struct.zed_conf*, %struct.zed_conf** %5, align 8
  %115 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ZEVENT_SEEK_START, align 4
  %118 = load %struct.zed_conf*, %struct.zed_conf** %5, align 8
  %119 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @zpool_events_seek(i32 %116, i32 %117, i32 %120)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %113
  %124 = load i32, i32* @LOG_WARNING, align 4
  %125 = call i32 (i32, i8*, ...) @zed_log_msg(i32 %124, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %127

126:                                              ; preds = %113
  store i32 0, i32* %8, align 4
  br label %127

127:                                              ; preds = %126, %123
  br label %128

128:                                              ; preds = %127, %110, %107
  %129 = load i32, i32* @LOG_NOTICE, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 (i32, i8*, ...) @zed_log_msg(i32 %129, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 0, i32 -1
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %128, %17
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @zed_log_msg(i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @zpool_events_next(i32, i32**, i32*, i32, i32) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i8*, i32*) #1

declare dso_local i64 @nvlist_lookup_int64_array(i32*, i8*, i64**, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @zpool_events_seek(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

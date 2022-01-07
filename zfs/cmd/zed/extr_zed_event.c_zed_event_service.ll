; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_event.c_zed_event_service.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_event.c_zed_event_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zed_conf = type { i8*, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to service zevent: %s\00", align 1
@ZEVENT_NONE = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Missed %d events\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"eid\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to lookup zevent eid\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Failed to lookup zevent time (eid=%llu)\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Failed to lookup zevent time (eid=%llu, nelem=%u)\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Failed to lookup zevent class (eid=%llu)\00", align 1
@ZED_VAR_PREFIX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"PID\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"ZEDLET_DIR\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ZEVENT_VAR_PREFIX = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"SUBCLASS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zed_event_service(%struct.zed_conf* %0) #0 {
  %2 = alloca %struct.zed_conf*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.zed_conf* %0, %struct.zed_conf** %2, align 8
  %13 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %14 = icmp ne %struct.zed_conf* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* @errno, align 4
  %17 = load i32, i32* @LOG_ERR, align 4
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 @strerror(i32 %18)
  %20 = call i32 (i32, i8*, ...) @zed_log_msg(i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %156

21:                                               ; preds = %1
  %22 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %23 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ZEVENT_NONE, align 4
  %26 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %27 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @zpool_events_next(i32 %24, i32** %3, i32* %5, i32 %25, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %21
  %33 = load i32*, i32** %3, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32, %21
  br label %156

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @LOG_WARNING, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 (i32, i8*, ...) @zed_log_msg(i32 %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32*, i32** %3, align 8
  %45 = call i64 @nvlist_lookup_uint64(i32* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %7)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @LOG_WARNING, align 4
  %49 = call i32 (i32, i8*, ...) @zed_log_msg(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %153

50:                                               ; preds = %43
  %51 = load i32*, i32** %3, align 8
  %52 = call i64 @nvlist_lookup_int64_array(i32* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32** %8, i32* %9)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* @LOG_WARNING, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 (i32, i8*, ...) @zed_log_msg(i32 %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  br label %152

58:                                               ; preds = %50
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 2
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* @LOG_WARNING, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 (i32, i8*, ...) @zed_log_msg(i32 %62, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %63, i32 %64)
  br label %151

66:                                               ; preds = %58
  %67 = load i32*, i32** %3, align 8
  %68 = call i64 @nvlist_lookup_string(i32* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %10)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* @LOG_WARNING, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 (i32, i8*, ...) @zed_log_msg(i32 %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %72)
  br label %150

74:                                               ; preds = %66
  %75 = load i8*, i8** %10, align 8
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @zfs_agent_post_event(i8* %75, i32* null, i32* %76)
  %78 = call i32* (...) @zed_strings_create()
  store i32* %78, i32** %6, align 8
  store i32* null, i32** %4, align 8
  br label %79

79:                                               ; preds = %84, %74
  %80 = load i32*, i32** %3, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = call i32* @nvlist_next_nvpair(i32* %80, i32* %81)
  store i32* %82, i32** %4, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i32, i32* %7, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @_zed_event_add_nvpair(i32 %85, i32* %86, i32* %87)
  br label %79

89:                                               ; preds = %79
  %90 = load i32, i32* %7, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %93 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @_zed_event_add_env_restrict(i32 %90, i32* %91, i32 %94)
  %96 = load i32, i32* %7, align 4
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @_zed_event_add_env_preserve(i32 %96, i32* %97)
  %99 = load i32, i32* %7, align 4
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* @ZED_VAR_PREFIX, align 4
  %102 = call i64 (...) @getpid()
  %103 = trunc i64 %102 to i32
  %104 = call i32 (i32, i32*, i32, i8*, i8*, ...) @_zed_event_add_var(i32 %99, i32* %100, i32 %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %7, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* @ZED_VAR_PREFIX, align 4
  %108 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %109 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 (i32, i32*, i32, i8*, i8*, ...) @_zed_event_add_var(i32 %105, i32* %106, i32 %107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %110)
  %112 = load i8*, i8** %10, align 8
  %113 = call i8* @_zed_event_get_subclass(i8* %112)
  store i8* %113, i8** %11, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* @ZEVENT_VAR_PREFIX, align 4
  %117 = load i8*, i8** %11, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %89
  %120 = load i8*, i8** %11, align 8
  br label %123

121:                                              ; preds = %89
  %122 = load i8*, i8** %10, align 8
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i8* [ %120, %119 ], [ %122, %121 ]
  %125 = call i32 (i32, i32*, i32, i8*, i8*, ...) @_zed_event_add_var(i32 %114, i32* %115, i32 %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %124)
  %126 = load i32, i32* %7, align 4
  %127 = load i32*, i32** %6, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = call i32 @_zed_event_add_time_strings(i32 %126, i32* %127, i32* %128)
  %130 = load i32, i32* %7, align 4
  %131 = load i8*, i8** %10, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %134 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %137 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %6, align 8
  %140 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %141 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @zed_exec_process(i32 %130, i8* %131, i8* %132, i8* %135, i32 %138, i32* %139, i32 %142)
  %144 = load %struct.zed_conf*, %struct.zed_conf** %2, align 8
  %145 = load i32, i32* %7, align 4
  %146 = load i32*, i32** %8, align 8
  %147 = call i32 @zed_conf_write_state(%struct.zed_conf* %144, i32 %145, i32* %146)
  %148 = load i32*, i32** %6, align 8
  %149 = call i32 @zed_strings_destroy(i32* %148)
  br label %150

150:                                              ; preds = %123, %70
  br label %151

151:                                              ; preds = %150, %61
  br label %152

152:                                              ; preds = %151, %54
  br label %153

153:                                              ; preds = %152, %47
  %154 = load i32*, i32** %3, align 8
  %155 = call i32 @nvlist_free(i32* %154)
  br label %156

156:                                              ; preds = %153, %35, %15
  ret void
}

declare dso_local i32 @zed_log_msg(i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @zpool_events_next(i32, i32**, i32*, i32, i32) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i8*, i32*) #1

declare dso_local i64 @nvlist_lookup_int64_array(i32*, i8*, i32**, i32*) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i8*, i8**) #1

declare dso_local i32 @zfs_agent_post_event(i8*, i32*, i32*) #1

declare dso_local i32* @zed_strings_create(...) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32 @_zed_event_add_nvpair(i32, i32*, i32*) #1

declare dso_local i32 @_zed_event_add_env_restrict(i32, i32*, i32) #1

declare dso_local i32 @_zed_event_add_env_preserve(i32, i32*) #1

declare dso_local i32 @_zed_event_add_var(i32, i32*, i32, i8*, i8*, ...) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i8* @_zed_event_get_subclass(i8*) #1

declare dso_local i32 @_zed_event_add_time_strings(i32, i32*, i32*) #1

declare dso_local i32 @zed_exec_process(i32, i8*, i8*, i8*, i32, i32*, i32) #1

declare dso_local i32 @zed_conf_write_state(%struct.zed_conf*, i32, i32*) #1

declare dso_local i32 @zed_strings_destroy(i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

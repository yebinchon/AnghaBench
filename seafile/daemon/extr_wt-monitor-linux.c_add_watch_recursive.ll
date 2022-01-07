; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-linux.c_add_watch_recursive.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-linux.c_add_watch_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dirent = type { i8*, i64 }

@.str = private unnamed_addr constant [30 x i8] c"[wt mon] fail to stat %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@WT_EVENT_CREATE_OR_UPDATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Watching %s.\0A\00", align 1
@WATCH_MASK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"[wt mon] fail to add watch to %s: %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"[wt mon] fail to open dir %s: %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@DT_DIR = common dso_local global i64 0, align 8
@DT_LNK = common dso_local global i64 0, align 8
@DT_UNKNOWN = common dso_local global i64 0, align 8
@DT_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i8*, i8*, i64)* @add_watch_recursive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_watch_recursive(%struct.TYPE_6__* %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.dirent*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i8* @g_build_filename(i8* %17, i8* %18, i32* null)
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = call i64 @stat(i8* %20, %struct.TYPE_5__* %12)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %5
  %24 = load i8*, i8** %11, align 8
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @strerror(i32 %25)
  %27 = call i32 @seaf_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %26)
  br label %153

28:                                               ; preds = %5
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @WT_EVENT_CREATE_OR_UPDATE, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @add_event_to_queue(i32 %40, i32 %41, i8* %42, i32* null)
  br label %44

44:                                               ; preds = %37, %31, %28
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @S_ISDIR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %152

49:                                               ; preds = %44
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @seaf_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* %7, align 4
  %53 = load i8*, i8** %11, align 8
  %54 = load i64, i64* @WATCH_MASK, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @inotify_add_watch(i32 %52, i8* %53, i32 %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load i8*, i8** %11, align 8
  %61 = load i32, i32* @errno, align 4
  %62 = call i32 @strerror(i32 %61)
  %63 = call i32 @seaf_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %60, i32 %62)
  br label %153

64:                                               ; preds = %49
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @add_mapping(i32 %67, i8* %68, i32 %69)
  %71 = load i8*, i8** %11, align 8
  %72 = call i32* @opendir(i8* %71)
  store i32* %72, i32** %13, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %64
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* @errno, align 4
  %78 = call i32 @strerror(i32 %77)
  %79 = call i32 @seaf_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %76, i32 %78)
  br label %153

80:                                               ; preds = %64
  br label %81

81:                                               ; preds = %80, %99, %146
  %82 = load i32*, i32** %13, align 8
  %83 = call %struct.dirent* @readdir(i32* %82)
  store %struct.dirent* %83, %struct.dirent** %14, align 8
  %84 = load %struct.dirent*, %struct.dirent** %14, align 8
  %85 = icmp ne %struct.dirent* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  br label %149

87:                                               ; preds = %81
  %88 = load %struct.dirent*, %struct.dirent** %14, align 8
  %89 = getelementptr inbounds %struct.dirent, %struct.dirent* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load %struct.dirent*, %struct.dirent** %14, align 8
  %95 = getelementptr inbounds %struct.dirent, %struct.dirent* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i64 @strcmp(i8* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93, %87
  br label %81

100:                                              ; preds = %93
  %101 = load i8*, i8** %9, align 8
  %102 = load %struct.dirent*, %struct.dirent** %14, align 8
  %103 = getelementptr inbounds %struct.dirent, %struct.dirent* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i8* @g_build_filename(i8* %101, i8* %104, i32* null)
  store i8* %105, i8** %16, align 8
  %106 = load %struct.dirent*, %struct.dirent** %14, align 8
  %107 = getelementptr inbounds %struct.dirent, %struct.dirent* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @DT_DIR, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %123, label %111

111:                                              ; preds = %100
  %112 = load %struct.dirent*, %struct.dirent** %14, align 8
  %113 = getelementptr inbounds %struct.dirent, %struct.dirent* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @DT_LNK, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %123, label %117

117:                                              ; preds = %111
  %118 = load %struct.dirent*, %struct.dirent** %14, align 8
  %119 = getelementptr inbounds %struct.dirent, %struct.dirent* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @DT_UNKNOWN, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %117, %111, %100
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load i8*, i8** %8, align 8
  %127 = load i8*, i8** %16, align 8
  %128 = load i64, i64* %10, align 8
  %129 = call i32 @add_watch_recursive(%struct.TYPE_6__* %124, i32 %125, i8* %126, i8* %127, i64 %128)
  br label %130

130:                                              ; preds = %123, %117
  %131 = load %struct.dirent*, %struct.dirent** %14, align 8
  %132 = getelementptr inbounds %struct.dirent, %struct.dirent* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @DT_REG, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %130
  %137 = load i64, i64* %10, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @WT_EVENT_CREATE_OR_UPDATE, align 4
  %144 = load i8*, i8** %16, align 8
  %145 = call i32 @add_event_to_queue(i32 %142, i32 %143, i8* %144, i32* null)
  br label %146

146:                                              ; preds = %139, %136, %130
  %147 = load i8*, i8** %16, align 8
  %148 = call i32 @g_free(i8* %147)
  br label %81

149:                                              ; preds = %86
  %150 = load i32*, i32** %13, align 8
  %151 = call i32 @closedir(i32* %150)
  br label %152

152:                                              ; preds = %149, %44
  br label %153

153:                                              ; preds = %152, %75, %59, %23
  %154 = load i8*, i8** %11, align 8
  %155 = call i32 @g_free(i8* %154)
  ret i32 0
}

declare dso_local i8* @g_build_filename(i8*, i8*, i32*) #1

declare dso_local i64 @stat(i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @seaf_warning(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @add_event_to_queue(i32, i32, i8*, i32*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @seaf_debug(i8*, i8*) #1

declare dso_local i32 @inotify_add_watch(i32, i8*, i32) #1

declare dso_local i32 @add_mapping(i32, i8*, i32) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

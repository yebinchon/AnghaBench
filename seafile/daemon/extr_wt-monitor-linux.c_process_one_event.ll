; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-linux.c_process_one_event.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-linux.c_process_one_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.inotify_event = type { i32, i8* }
%struct.stat = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@IN_IGNORED = common dso_local global i32 0, align 4
@IN_UNMOUNT = common dso_local global i32 0, align 4
@IN_Q_OVERFLOW = common dso_local global i32 0, align 4
@WT_EVENT_OVERFLOW = common dso_local global i32 0, align 4
@IN_MODIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Modified %s.\0A\00", align 1
@WT_EVENT_CREATE_OR_UPDATE = common dso_local global i32 0, align 4
@IN_CREATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Created %s.\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@IN_DELETE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Deleted %s.\0A\00", align 1
@WT_EVENT_DELETE = common dso_local global i32 0, align 4
@IN_CLOSE_WRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Close write %s.\0A\00", align 1
@IN_ATTRIB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Attribute changed %s.\0A\00", align 1
@WT_EVENT_ATTRIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_8__*, i8*, i8*, %struct.inotify_event*, i64)* @process_one_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_one_event(i32 %0, %struct.TYPE_8__* %1, i8* %2, i8* %3, %struct.inotify_event* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.inotify_event*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.stat, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.inotify_event* %4, %struct.inotify_event** %11, align 8
  store i64 %5, i64* %12, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %13, align 8
  %22 = load i64, i64* @TRUE, align 8
  store i64 %22, i64* %15, align 8
  %23 = load i64, i64* @TRUE, align 8
  store i64 %23, i64* %16, align 8
  %24 = load %struct.inotify_event*, %struct.inotify_event** %11, align 8
  %25 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IN_IGNORED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %6
  %31 = load %struct.inotify_event*, %struct.inotify_event** %11, align 8
  %32 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IN_UNMOUNT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %6
  br label %186

38:                                               ; preds = %30
  %39 = load %struct.inotify_event*, %struct.inotify_event** %11, align 8
  %40 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IN_Q_OVERFLOW, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %47 = load i32, i32* @WT_EVENT_OVERFLOW, align 4
  %48 = call i32 @add_event_to_queue(%struct.TYPE_7__* %46, i32 %47, i8* null, i32* null)
  br label %186

49:                                               ; preds = %38
  %50 = load i8*, i8** %10, align 8
  %51 = load %struct.inotify_event*, %struct.inotify_event** %11, align 8
  %52 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @g_build_filename(i8* %50, i8* %53, i32* null)
  store i8* %54, i8** %14, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %57 = load %struct.inotify_event*, %struct.inotify_event** %11, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @handle_rename(i32 %55, %struct.TYPE_8__* %56, %struct.inotify_event* %57, i8* %58, i8* %59, i64 %60)
  %62 = load %struct.inotify_event*, %struct.inotify_event** %11, align 8
  %63 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @IN_MODIFY, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %49
  %69 = load i8*, i8** %14, align 8
  %70 = call i32 @seaf_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %69)
  %71 = load i64, i64* %16, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %75 = load i32, i32* @WT_EVENT_CREATE_OR_UPDATE, align 4
  %76 = load i8*, i8** %14, align 8
  %77 = call i32 @add_event_to_queue(%struct.TYPE_7__* %74, i32 %75, i8* %76, i32* null)
  br label %78

78:                                               ; preds = %73, %68
  br label %172

79:                                               ; preds = %49
  %80 = load %struct.inotify_event*, %struct.inotify_event** %11, align 8
  %81 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @IN_CREATE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %122

86:                                               ; preds = %79
  %87 = load i8*, i8** %14, align 8
  %88 = call i32 @seaf_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %87)
  %89 = load i8*, i8** %9, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = call i8* @g_build_filename(i8* %89, i8* %90, i32* null)
  store i8* %91, i8** %17, align 8
  %92 = load i8*, i8** %17, align 8
  %93 = call i64 @lstat(i8* %92, %struct.stat* %18)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @S_ISDIR(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @S_ISLNK(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %100, %86
  %106 = load i8*, i8** %17, align 8
  %107 = call i32 @g_free(i8* %106)
  %108 = load i64, i64* @FALSE, align 8
  store i64 %108, i64* %15, align 8
  br label %173

109:                                              ; preds = %100, %95
  %110 = load i8*, i8** %17, align 8
  %111 = call i32 @g_free(i8* %110)
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %113 = load i32, i32* @WT_EVENT_CREATE_OR_UPDATE, align 4
  %114 = load i8*, i8** %14, align 8
  %115 = call i32 @add_event_to_queue(%struct.TYPE_7__* %112, i32 %113, i8* %114, i32* null)
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load i8*, i8** %9, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = load i64, i64* @FALSE, align 8
  %121 = call i32 @add_watch_recursive(%struct.TYPE_8__* %116, i32 %117, i8* %118, i8* %119, i64 %120)
  br label %171

122:                                              ; preds = %79
  %123 = load %struct.inotify_event*, %struct.inotify_event** %11, align 8
  %124 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @IN_DELETE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %122
  %130 = load i8*, i8** %14, align 8
  %131 = call i32 @seaf_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %130)
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %133 = load i32, i32* @WT_EVENT_DELETE, align 4
  %134 = load i8*, i8** %14, align 8
  %135 = call i32 @add_event_to_queue(%struct.TYPE_7__* %132, i32 %133, i8* %134, i32* null)
  br label %170

136:                                              ; preds = %122
  %137 = load %struct.inotify_event*, %struct.inotify_event** %11, align 8
  %138 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @IN_CLOSE_WRITE, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %136
  %144 = load i8*, i8** %14, align 8
  %145 = call i32 @seaf_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %144)
  %146 = load i64, i64* %16, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %150 = load i32, i32* @WT_EVENT_CREATE_OR_UPDATE, align 4
  %151 = load i8*, i8** %14, align 8
  %152 = call i32 @add_event_to_queue(%struct.TYPE_7__* %149, i32 %150, i8* %151, i32* null)
  br label %153

153:                                              ; preds = %148, %143
  br label %169

154:                                              ; preds = %136
  %155 = load %struct.inotify_event*, %struct.inotify_event** %11, align 8
  %156 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @IN_ATTRIB, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %154
  %162 = load i8*, i8** %14, align 8
  %163 = call i32 @seaf_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %162)
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %165 = load i32, i32* @WT_EVENT_ATTRIB, align 4
  %166 = load i8*, i8** %14, align 8
  %167 = call i32 @add_event_to_queue(%struct.TYPE_7__* %164, i32 %165, i8* %166, i32* null)
  br label %168

168:                                              ; preds = %161, %154
  br label %169

169:                                              ; preds = %168, %153
  br label %170

170:                                              ; preds = %169, %129
  br label %171

171:                                              ; preds = %170, %109
  br label %172

172:                                              ; preds = %171, %78
  br label %173

173:                                              ; preds = %172, %105
  %174 = load i8*, i8** %14, align 8
  %175 = call i32 @g_free(i8* %174)
  %176 = load i64, i64* %15, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %173
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = call i64 @time(i32* null)
  %184 = trunc i64 %183 to i32
  %185 = call i32 @g_atomic_int_set(i32* %182, i32 %184)
  br label %186

186:                                              ; preds = %37, %45, %178, %173
  ret void
}

declare dso_local i32 @add_event_to_queue(%struct.TYPE_7__*, i32, i8*, i32*) #1

declare dso_local i8* @g_build_filename(i8*, i8*, i32*) #1

declare dso_local i32 @handle_rename(i32, %struct.TYPE_8__*, %struct.inotify_event*, i8*, i8*, i64) #1

declare dso_local i32 @seaf_debug(i8*, i8*) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @add_watch_recursive(%struct.TYPE_8__*, i32, i8*, i8*, i64) #1

declare dso_local i32 @g_atomic_int_set(i32*, i32) #1

declare dso_local i64 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-linux.c_handle_rename.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-linux.c_handle_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i8*, i64, i32 }
%struct.inotify_event = type { i32, i64, i32 }

@IN_MOVED_FROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"(%d) Move %s ->\0A\00", align 1
@IN_MOVED_TO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"(%d) Move -> %s.\0A\00", align 1
@WT_EVENT_DELETE = common dso_local global i32 0, align 4
@WT_EVENT_CREATE_OR_UPDATE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@WT_EVENT_RENAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_7__*, %struct.inotify_event*, i8*, i8*, i32)* @handle_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_rename(i32 %0, %struct.TYPE_7__* %1, %struct.inotify_event* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.inotify_event*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store %struct.inotify_event* %2, %struct.inotify_event** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %13, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %14, align 8
  %21 = load %struct.inotify_event*, %struct.inotify_event** %9, align 8
  %22 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IN_MOVED_FROM, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %6
  %28 = load %struct.inotify_event*, %struct.inotify_event** %9, align 8
  %29 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.inotify_event*, %struct.inotify_event** %9, align 8
  %32 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @seaf_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %30, i32 %33)
  br label %51

35:                                               ; preds = %6
  %36 = load %struct.inotify_event*, %struct.inotify_event** %9, align 8
  %37 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IN_MOVED_TO, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load %struct.inotify_event*, %struct.inotify_event** %9, align 8
  %44 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.inotify_event*, %struct.inotify_event** %9, align 8
  %47 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @seaf_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %45, i32 %48)
  br label %50

50:                                               ; preds = %42, %35
  br label %51

51:                                               ; preds = %50, %27
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %99, label %56

56:                                               ; preds = %51
  %57 = load %struct.inotify_event*, %struct.inotify_event** %9, align 8
  %58 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @IN_MOVED_FROM, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %56
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %68 = load %struct.inotify_event*, %struct.inotify_event** %9, align 8
  %69 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @set_rename_processing_state(%struct.TYPE_8__* %67, i64 %70, i8* %71)
  br label %78

73:                                               ; preds = %63
  %74 = load i32*, i32** %13, align 8
  %75 = load i32, i32* @WT_EVENT_DELETE, align 4
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @add_event_to_queue(i32* %74, i32 %75, i8* %76, i8* null)
  br label %78

78:                                               ; preds = %73, %66
  br label %98

79:                                               ; preds = %56
  %80 = load %struct.inotify_event*, %struct.inotify_event** %9, align 8
  %81 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @IN_MOVED_TO, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %79
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* @WT_EVENT_CREATE_OR_UPDATE, align 4
  %89 = load i8*, i8** %11, align 8
  %90 = call i32 @add_event_to_queue(i32* %87, i32 %88, i8* %89, i8* null)
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i8*, i8** %10, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load i32, i32* @FALSE, align 4
  %96 = call i32 @add_watch_recursive(%struct.TYPE_7__* %91, i32 %92, i8* %93, i8* %94, i32 %95)
  br label %97

97:                                               ; preds = %86, %79
  br label %98

98:                                               ; preds = %97, %78
  br label %191

99:                                               ; preds = %51
  %100 = load %struct.inotify_event*, %struct.inotify_event** %9, align 8
  %101 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @IN_MOVED_FROM, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %137

106:                                              ; preds = %99
  %107 = load i32*, i32** %13, align 8
  %108 = load i32, i32* @WT_EVENT_DELETE, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @add_event_to_queue(i32* %107, i32 %108, i8* %111, i8* null)
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %129, label %115

115:                                              ; preds = %106
  %116 = load %struct.inotify_event*, %struct.inotify_event** %9, align 8
  %117 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @g_free(i8* %123)
  %125 = load i8*, i8** %11, align 8
  %126 = call i8* @g_strdup(i8* %125)
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  store i8* %126, i8** %128, align 8
  br label %136

129:                                              ; preds = %106
  %130 = load i32*, i32** %13, align 8
  %131 = load i32, i32* @WT_EVENT_DELETE, align 4
  %132 = load i8*, i8** %11, align 8
  %133 = call i32 @add_event_to_queue(i32* %130, i32 %131, i8* %132, i8* null)
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %135 = call i32 @unset_rename_processing_state(%struct.TYPE_8__* %134)
  br label %136

136:                                              ; preds = %129, %115
  br label %190

137:                                              ; preds = %99
  %138 = load %struct.inotify_event*, %struct.inotify_event** %9, align 8
  %139 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @IN_MOVED_TO, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %180

144:                                              ; preds = %137
  %145 = load %struct.inotify_event*, %struct.inotify_event** %9, align 8
  %146 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %147, %150
  br i1 %151, label %152, label %160

152:                                              ; preds = %144
  %153 = load i32*, i32** %13, align 8
  %154 = load i32, i32* @WT_EVENT_RENAME, align 4
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = load i8*, i8** %11, align 8
  %159 = call i32 @add_event_to_queue(i32* %153, i32 %154, i8* %157, i8* %158)
  br label %171

160:                                              ; preds = %144
  %161 = load i32*, i32** %13, align 8
  %162 = load i32, i32* @WT_EVENT_DELETE, align 4
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @add_event_to_queue(i32* %161, i32 %162, i8* %165, i8* null)
  %167 = load i32*, i32** %13, align 8
  %168 = load i32, i32* @WT_EVENT_CREATE_OR_UPDATE, align 4
  %169 = load i8*, i8** %11, align 8
  %170 = call i32 @add_event_to_queue(i32* %167, i32 %168, i8* %169, i8* null)
  br label %171

171:                                              ; preds = %160, %152
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %173 = load i32, i32* %7, align 4
  %174 = load i8*, i8** %10, align 8
  %175 = load i8*, i8** %11, align 8
  %176 = load i32, i32* @FALSE, align 4
  %177 = call i32 @add_watch_recursive(%struct.TYPE_7__* %172, i32 %173, i8* %174, i8* %175, i32 %176)
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %179 = call i32 @unset_rename_processing_state(%struct.TYPE_8__* %178)
  br label %189

180:                                              ; preds = %137
  %181 = load i32*, i32** %13, align 8
  %182 = load i32, i32* @WT_EVENT_DELETE, align 4
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @add_event_to_queue(i32* %181, i32 %182, i8* %185, i8* null)
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %188 = call i32 @unset_rename_processing_state(%struct.TYPE_8__* %187)
  br label %189

189:                                              ; preds = %180, %171
  br label %190

190:                                              ; preds = %189, %136
  br label %191

191:                                              ; preds = %190, %98
  ret void
}

declare dso_local i32 @seaf_debug(i8*, i64, i32) #1

declare dso_local i32 @set_rename_processing_state(%struct.TYPE_8__*, i64, i8*) #1

declare dso_local i32 @add_event_to_queue(i32*, i32, i8*, i8*) #1

declare dso_local i32 @add_watch_recursive(%struct.TYPE_7__*, i32, i8*, i8*, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i32 @unset_rename_processing_state(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

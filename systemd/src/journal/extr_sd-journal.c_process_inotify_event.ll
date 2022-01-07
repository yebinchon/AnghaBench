; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_sd-journal.c_process_inotify_event.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_sd-journal.c_process_inotify_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inotify_event = type { i32, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@IN_Q_OVERFLOW = common dso_local global i32 0, align 4
@IN_ISDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c".journal\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c".journal~\00", align 1
@IN_CREATE = common dso_local global i32 0, align 4
@IN_MOVED_TO = common dso_local global i32 0, align 4
@IN_MODIFY = common dso_local global i32 0, align 4
@IN_ATTRIB = common dso_local global i32 0, align 4
@IN_DELETE = common dso_local global i32 0, align 4
@IN_MOVED_FROM = common dso_local global i32 0, align 4
@IN_UNMOUNT = common dso_local global i32 0, align 4
@IN_DELETE_SELF = common dso_local global i32 0, align 4
@IN_MOVE_SELF = common dso_local global i32 0, align 4
@IN_IGNORED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unexpected inotify event.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inotify_event*, %struct.inotify_event*)* @process_inotify_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_inotify_event(%struct.inotify_event* %0, %struct.inotify_event* %1) #0 {
  %3 = alloca %struct.inotify_event*, align 8
  %4 = alloca %struct.inotify_event*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store %struct.inotify_event* %0, %struct.inotify_event** %3, align 8
  store %struct.inotify_event* %1, %struct.inotify_event** %4, align 8
  %6 = load %struct.inotify_event*, %struct.inotify_event** %3, align 8
  %7 = call i32 @assert(%struct.inotify_event* %6)
  %8 = load %struct.inotify_event*, %struct.inotify_event** %4, align 8
  %9 = call i32 @assert(%struct.inotify_event* %8)
  %10 = load %struct.inotify_event*, %struct.inotify_event** %4, align 8
  %11 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IN_Q_OVERFLOW, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.inotify_event*, %struct.inotify_event** %3, align 8
  %18 = call i32 @process_q_overflow(%struct.inotify_event* %17)
  br label %183

19:                                               ; preds = %2
  %20 = load %struct.inotify_event*, %struct.inotify_event** %3, align 8
  %21 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.inotify_event*, %struct.inotify_event** %4, align 8
  %24 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @INT_TO_PTR(i32 %25)
  %27 = call %struct.TYPE_4__* @hashmap_get(i32 %22, i32 %26)
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %5, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %173

30:                                               ; preds = %19
  %31 = load %struct.inotify_event*, %struct.inotify_event** %4, align 8
  %32 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IN_ISDIR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %98, label %37

37:                                               ; preds = %30
  %38 = load %struct.inotify_event*, %struct.inotify_event** %4, align 8
  %39 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %98

42:                                               ; preds = %37
  %43 = load %struct.inotify_event*, %struct.inotify_event** %4, align 8
  %44 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @endswith(i32 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.inotify_event*, %struct.inotify_event** %4, align 8
  %50 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @endswith(i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %98

54:                                               ; preds = %48, %42
  %55 = load %struct.inotify_event*, %struct.inotify_event** %4, align 8
  %56 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @IN_CREATE, align 4
  %59 = load i32, i32* @IN_MOVED_TO, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @IN_MODIFY, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @IN_ATTRIB, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %57, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %54
  %68 = load %struct.inotify_event*, %struct.inotify_event** %3, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.inotify_event*, %struct.inotify_event** %4, align 8
  %73 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @add_file_by_name(%struct.inotify_event* %68, i32 %71, i32 %74)
  br label %97

76:                                               ; preds = %54
  %77 = load %struct.inotify_event*, %struct.inotify_event** %4, align 8
  %78 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @IN_DELETE, align 4
  %81 = load i32, i32* @IN_MOVED_FROM, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @IN_UNMOUNT, align 4
  %84 = or i32 %82, %83
  %85 = and i32 %79, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %76
  %88 = load %struct.inotify_event*, %struct.inotify_event** %3, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.inotify_event*, %struct.inotify_event** %4, align 8
  %93 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @remove_file_by_name(%struct.inotify_event* %88, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %87, %76
  br label %97

97:                                               ; preds = %96, %67
  br label %172

98:                                               ; preds = %48, %37, %30
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %124, label %103

103:                                              ; preds = %98
  %104 = load %struct.inotify_event*, %struct.inotify_event** %4, align 8
  %105 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %124

108:                                              ; preds = %103
  %109 = load %struct.inotify_event*, %struct.inotify_event** %4, align 8
  %110 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @IN_DELETE_SELF, align 4
  %113 = load i32, i32* @IN_MOVE_SELF, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @IN_UNMOUNT, align 4
  %116 = or i32 %114, %115
  %117 = and i32 %111, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %108
  %120 = load %struct.inotify_event*, %struct.inotify_event** %3, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %122 = call i32 @remove_directory(%struct.inotify_event* %120, %struct.TYPE_4__* %121)
  br label %123

123:                                              ; preds = %119, %108
  br label %171

124:                                              ; preds = %103, %98
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %170

129:                                              ; preds = %124
  %130 = load %struct.inotify_event*, %struct.inotify_event** %4, align 8
  %131 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @IN_ISDIR, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %170

136:                                              ; preds = %129
  %137 = load %struct.inotify_event*, %struct.inotify_event** %4, align 8
  %138 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %141, label %170

141:                                              ; preds = %136
  %142 = load %struct.inotify_event*, %struct.inotify_event** %4, align 8
  %143 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i64 @id128_is_valid(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %170

147:                                              ; preds = %141
  %148 = load %struct.inotify_event*, %struct.inotify_event** %4, align 8
  %149 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @IN_CREATE, align 4
  %152 = load i32, i32* @IN_MOVED_TO, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @IN_MODIFY, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @IN_ATTRIB, align 4
  %157 = or i32 %155, %156
  %158 = and i32 %150, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %147
  %161 = load %struct.inotify_event*, %struct.inotify_event** %3, align 8
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.inotify_event*, %struct.inotify_event** %4, align 8
  %166 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @add_directory(%struct.inotify_event* %161, i32 %164, i32 %167)
  br label %169

169:                                              ; preds = %160, %147
  br label %170

170:                                              ; preds = %169, %141, %136, %129, %124
  br label %171

171:                                              ; preds = %170, %123
  br label %172

172:                                              ; preds = %171, %97
  br label %183

173:                                              ; preds = %19
  %174 = load %struct.inotify_event*, %struct.inotify_event** %4, align 8
  %175 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @IN_IGNORED, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  br label %183

181:                                              ; preds = %173
  %182 = call i32 @log_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181, %180, %172, %16
  ret void
}

declare dso_local i32 @assert(%struct.inotify_event*) #1

declare dso_local i32 @process_q_overflow(%struct.inotify_event*) #1

declare dso_local %struct.TYPE_4__* @hashmap_get(i32, i32) #1

declare dso_local i32 @INT_TO_PTR(i32) #1

declare dso_local i64 @endswith(i32, i8*) #1

declare dso_local i32 @add_file_by_name(%struct.inotify_event*, i32, i32) #1

declare dso_local i32 @remove_file_by_name(%struct.inotify_event*, i32, i32) #1

declare dso_local i32 @remove_directory(%struct.inotify_event*, %struct.TYPE_4__*) #1

declare dso_local i64 @id128_is_valid(i32) #1

declare dso_local i32 @add_directory(%struct.inotify_event*, i32, i32) #1

declare dso_local i32 @log_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tengine/src/event/extr_ngx_event_pipe.c_ngx_event_pipe.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/extr_ngx_event_pipe.c_ngx_event_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, i32, %struct.TYPE_15__*, i32, %struct.TYPE_14__*, i64, i64, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32, i64, i32, i64, i64 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { i8* }

@.str = private unnamed_addr constant [18 x i8] c"sending to client\00", align 1
@NGX_ABORT = common dso_local global i32 0, align 4
@NGX_BUSY = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"reading upstream\00", align 1
@NGX_CLOSE_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_event_pipe(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %10

10:                                               ; preds = %58, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = call i32 @ngx_event_pipe_write_to_downstream(%struct.TYPE_17__* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @NGX_ABORT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* @NGX_ABORT, align 4
  store i32 %24, i32* %3, align 4
  br label %191

25:                                               ; preds = %13
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @NGX_BUSY, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @NGX_OK, align 4
  store i32 %30, i32* %3, align 4
  br label %191

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %10
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 7
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 6
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %40, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %42 = call i32 @ngx_event_pipe_read_upstream(%struct.TYPE_17__* %41)
  %43 = load i32, i32* @NGX_ABORT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = load i32, i32* @NGX_ABORT, align 4
  store i32 %46, i32* %3, align 4
  br label %191

47:                                               ; preds = %32
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %59

58:                                               ; preds = %52, %47
  store i32 1, i32* %5, align 4
  br label %10

59:                                               ; preds = %57
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 5
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, -1
  br i1 %65, label %66, label %125

66:                                               ; preds = %59
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 5
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  store %struct.TYPE_16__* %71, %struct.TYPE_16__** %8, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %66
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76, %66
  %82 = load i32, i32* @NGX_CLOSE_EVENT, align 4
  br label %84

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %81
  %85 = phi i32 [ %82, %81 ], [ 0, %83 ]
  store i32 %85, i32* %7, align 4
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @ngx_handle_read_event(%struct.TYPE_16__* %86, i32 %87)
  %89 = load i32, i32* @NGX_OK, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* @NGX_ABORT, align 4
  store i32 %92, i32* %3, align 4
  br label %191

93:                                               ; preds = %84
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %124, label %98

98:                                               ; preds = %93
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %103
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @ngx_add_timer(%struct.TYPE_16__* %109, i32 %112)
  br label %123

114:                                              ; preds = %103, %98
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %121 = call i32 @ngx_del_timer(%struct.TYPE_16__* %120)
  br label %122

122:                                              ; preds = %119, %114
  br label %123

123:                                              ; preds = %122, %108
  br label %124

124:                                              ; preds = %123, %93
  br label %125

125:                                              ; preds = %124, %59
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, -1
  br i1 %131, label %132, label %189

132:                                              ; preds = %125
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %137, %140
  br i1 %141, label %142, label %189

142:                                              ; preds = %132
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %146, align 8
  store %struct.TYPE_16__* %147, %struct.TYPE_16__** %9, align 8
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @ngx_handle_write_event(%struct.TYPE_16__* %148, i32 %151)
  %153 = load i32, i32* @NGX_OK, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %142
  %156 = load i32, i32* @NGX_ABORT, align 4
  store i32 %156, i32* %3, align 4
  br label %191

157:                                              ; preds = %142
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %188, label %162

162:                                              ; preds = %157
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %162
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %167
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @ngx_add_timer(%struct.TYPE_16__* %173, i32 %176)
  br label %187

178:                                              ; preds = %167, %162
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %185 = call i32 @ngx_del_timer(%struct.TYPE_16__* %184)
  br label %186

186:                                              ; preds = %183, %178
  br label %187

187:                                              ; preds = %186, %172
  br label %188

188:                                              ; preds = %187, %157
  br label %189

189:                                              ; preds = %188, %132, %125
  %190 = load i32, i32* @NGX_OK, align 4
  store i32 %190, i32* %3, align 4
  br label %191

191:                                              ; preds = %189, %155, %91, %45, %29, %23
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i32 @ngx_event_pipe_write_to_downstream(%struct.TYPE_17__*) #1

declare dso_local i32 @ngx_event_pipe_read_upstream(%struct.TYPE_17__*) #1

declare dso_local i32 @ngx_handle_read_event(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_16__*) #1

declare dso_local i32 @ngx_handle_write_event(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

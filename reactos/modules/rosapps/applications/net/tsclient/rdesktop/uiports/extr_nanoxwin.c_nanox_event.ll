; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_nanoxwin.c_nanox_event.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_nanoxwin.c_nanox_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@GR_EVENT_TYPE_FDINPUT = common dso_local global i64 0, align 8
@g_sck = common dso_local global i64 0, align 8
@g_deactivated = common dso_local global i32 0, align 4
@g_ext_disc_reason = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"rdp_loop in nanox_event exit codes %d %d\0A\00", align 1
@GR_EVENT_TYPE_BUTTON_DOWN = common dso_local global i64 0, align 8
@RDP_INPUT_MOUSE = common dso_local global i32 0, align 4
@MOUSE_FLAG_DOWN = common dso_local global i32 0, align 4
@MOUSE_FLAG_BUTTON1 = common dso_local global i32 0, align 4
@MOUSE_FLAG_BUTTON2 = common dso_local global i32 0, align 4
@GR_EVENT_TYPE_BUTTON_UP = common dso_local global i64 0, align 8
@GR_EVENT_TYPE_MOUSE_MOTION = common dso_local global i64 0, align 8
@MOUSE_FLAG_MOVE = common dso_local global i32 0, align 4
@GR_EVENT_TYPE_MOUSE_POSITION = common dso_local global i64 0, align 8
@GR_EVENT_TYPE_KEY_DOWN = common dso_local global i64 0, align 8
@GR_EVENT_TYPE_KEY_UP = common dso_local global i64 0, align 8
@GR_EVENT_TYPE_FOCUS_IN = common dso_local global i64 0, align 8
@GR_EVENT_TYPE_FOCUS_OUT = common dso_local global i64 0, align 8
@GR_EVENT_TYPE_UPDATE = common dso_local global i64 0, align 8
@GR_EVENT_TYPE_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nanox_event(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  br label %7

7:                                                ; preds = %200, %1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @GR_EVENT_TYPE_FDINPUT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %7
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = bitcast %struct.TYPE_10__* %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %5, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @g_sck, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %13
  %22 = call i32 @rdp_loop(i32* @g_deactivated, i32* @g_ext_disc_reason)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @stderr, align 4
  %26 = load i32, i32* @g_deactivated, align 4
  %27 = load i32, i32* @g_ext_disc_reason, align 4
  %28 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = call i32 @exit(i32 1) #3
  unreachable

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %13
  br label %197

32:                                               ; preds = %7
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @GR_EVENT_TYPE_BUTTON_DOWN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %78

38:                                               ; preds = %32
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = bitcast %struct.TYPE_10__* %39 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %4, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %38
  %47 = load i32, i32* @RDP_INPUT_MOUSE, align 4
  %48 = load i32, i32* @MOUSE_FLAG_DOWN, align 4
  %49 = load i32, i32* @MOUSE_FLAG_BUTTON1, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @rdp_send_input(i32 0, i32 %47, i32 %50, i32 %53, i32 %56)
  br label %77

58:                                               ; preds = %38
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  %65 = load i32, i32* @RDP_INPUT_MOUSE, align 4
  %66 = load i32, i32* @MOUSE_FLAG_DOWN, align 4
  %67 = load i32, i32* @MOUSE_FLAG_BUTTON2, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @rdp_send_input(i32 0, i32 %65, i32 %68, i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %64, %58
  br label %77

77:                                               ; preds = %76, %46
  br label %196

78:                                               ; preds = %32
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @GR_EVENT_TYPE_BUTTON_UP, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %120

84:                                               ; preds = %78
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %86 = bitcast %struct.TYPE_10__* %85 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %86, %struct.TYPE_9__** %4, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %84
  %93 = load i32, i32* @RDP_INPUT_MOUSE, align 4
  %94 = load i32, i32* @MOUSE_FLAG_BUTTON1, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @rdp_send_input(i32 0, i32 %93, i32 %94, i32 %97, i32 %100)
  br label %119

102:                                              ; preds = %84
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 1
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %102
  %109 = load i32, i32* @RDP_INPUT_MOUSE, align 4
  %110 = load i32, i32* @MOUSE_FLAG_BUTTON2, align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @rdp_send_input(i32 0, i32 %109, i32 %110, i32 %113, i32 %116)
  br label %118

118:                                              ; preds = %108, %102
  br label %119

119:                                              ; preds = %118, %92
  br label %195

120:                                              ; preds = %78
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @GR_EVENT_TYPE_MOUSE_MOTION, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %138

126:                                              ; preds = %120
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %128 = bitcast %struct.TYPE_10__* %127 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %128, %struct.TYPE_7__** %3, align 8
  %129 = load i32, i32* @RDP_INPUT_MOUSE, align 4
  %130 = load i32, i32* @MOUSE_FLAG_MOVE, align 4
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @rdp_send_input(i32 0, i32 %129, i32 %130, i32 %133, i32 %136)
  br label %194

138:                                              ; preds = %120
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @GR_EVENT_TYPE_MOUSE_POSITION, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %193

145:                                              ; preds = %138
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @GR_EVENT_TYPE_KEY_DOWN, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %145
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %153 = bitcast %struct.TYPE_10__* %152 to i32*
  store i32* %153, i32** %6, align 8
  %154 = load i32*, i32** %6, align 8
  %155 = call i32 @process_keystroke(i32* %154, i32 1)
  br label %192

156:                                              ; preds = %145
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @GR_EVENT_TYPE_KEY_UP, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %156
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %164 = bitcast %struct.TYPE_10__* %163 to i32*
  store i32* %164, i32** %6, align 8
  %165 = load i32*, i32** %6, align 8
  %166 = call i32 @process_keystroke(i32* %165, i32 0)
  br label %191

167:                                              ; preds = %156
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @GR_EVENT_TYPE_FOCUS_IN, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  br label %190

174:                                              ; preds = %167
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @GR_EVENT_TYPE_FOCUS_OUT, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  br label %189

181:                                              ; preds = %174
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @GR_EVENT_TYPE_UPDATE, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  br label %188

188:                                              ; preds = %187, %181
  br label %189

189:                                              ; preds = %188, %180
  br label %190

190:                                              ; preds = %189, %173
  br label %191

191:                                              ; preds = %190, %162
  br label %192

192:                                              ; preds = %191, %151
  br label %193

193:                                              ; preds = %192, %144
  br label %194

194:                                              ; preds = %193, %126
  br label %195

195:                                              ; preds = %194, %119
  br label %196

196:                                              ; preds = %195, %77
  br label %197

197:                                              ; preds = %196, %31
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %199 = call i32 @GrCheckNextEvent(%struct.TYPE_10__* %198)
  br label %200

200:                                              ; preds = %197
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @GR_EVENT_TYPE_NONE, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %7, label %206

206:                                              ; preds = %200
  ret void
}

declare dso_local i32 @rdp_loop(i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @rdp_send_input(i32, i32, i32, i32, i32) #1

declare dso_local i32 @process_keystroke(i32*, i32) #1

declare dso_local i32 @GrCheckNextEvent(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

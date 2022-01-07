; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-event/extr_event-util.c_event_reset_time.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-event/extr_event-util.c_event_reset_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }

@.str = private unnamed_addr constant [74 x i8] c"sd-event: Failed to query whether event source \22%s\22 is enabled or not: %m\00", align 1
@SD_EVENT_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"sd-event: Failed to get clock id of event source \22%s\22: %m\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [87 x i8] c"sd-event: Current clock id %i of event source \22%s\22 is different from specified one %i.\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"sd-event: Failed to set time for event source \22%s\22: %m\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"sd-event: Failed to set accuracy for event source \22%s\22: %m\00", align 1
@SD_EVENT_ONESHOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"sd-event: Failed to enable event source \22%s\22: %m\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"sd-event: Failed to create timer event \22%s\22: %m\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"sd-event: Failed to set priority for event source \22%s\22: %m\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"sd-event: Failed to set description for event source \22%s\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_reset_time(%struct.TYPE_16__** %0, %struct.TYPE_16__** %1, i64 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7, i8* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__**, align 8
  %13 = alloca %struct.TYPE_16__**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  store %struct.TYPE_16__** %0, %struct.TYPE_16__*** %12, align 8
  store %struct.TYPE_16__** %1, %struct.TYPE_16__*** %13, align 8
  store i64 %2, i64* %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i8* %6, i8** %18, align 8
  store i32 %7, i32* %19, align 4
  store i8* %8, i8** %20, align 8
  store i32 %9, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %26 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %12, align 8
  %27 = call i32 @assert(%struct.TYPE_16__** %26)
  %28 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %29 = call i32 @assert(%struct.TYPE_16__** %28)
  %30 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = icmp ne %struct.TYPE_16__* %31, null
  br i1 %32, label %33, label %179

33:                                               ; preds = %10
  %34 = load i32, i32* %21, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %63, label %36

36:                                               ; preds = %33
  %37 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = call i32 @sd_event_source_get_enabled(%struct.TYPE_16__* %38, i32* %23)
  store i32 %39, i32* %24, align 4
  %40 = load i32, i32* %24, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %36
  %43 = load i32, i32* %24, align 4
  %44 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = inttoptr i64 %47 to i8*
  br label %53

51:                                               ; preds = %42
  %52 = load i8*, i8** %20, align 8
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i8* [ %50, %49 ], [ %52, %51 ]
  %55 = call i8* @strna(i8* %54)
  %56 = call i32 (i32, i8*, ...) @log_debug_errno(i32 %43, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i8* %55)
  store i32 %56, i32* %11, align 4
  br label %235

57:                                               ; preds = %36
  %58 = load i32, i32* %23, align 4
  %59 = load i32, i32* @SD_EVENT_OFF, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 0, i32* %11, align 4
  br label %235

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62, %33
  %64 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = call i32 @sd_event_source_get_time_clock(%struct.TYPE_16__* %65, i64* %25)
  store i32 %66, i32* %24, align 4
  %67 = load i32, i32* %24, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %63
  %70 = load i32, i32* %24, align 4
  %71 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = inttoptr i64 %74 to i8*
  br label %80

78:                                               ; preds = %69
  %79 = load i8*, i8** %20, align 8
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i8* [ %77, %76 ], [ %79, %78 ]
  %82 = call i8* @strna(i8* %81)
  %83 = call i32 (i32, i8*, ...) @log_debug_errno(i32 %70, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %82)
  store i32 %83, i32* %11, align 4
  br label %235

84:                                               ; preds = %63
  %85 = load i64, i64* %25, align 8
  %86 = load i64, i64* %14, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %108

88:                                               ; preds = %84
  %89 = load i32, i32* @EINVAL, align 4
  %90 = call i32 @SYNTHETIC_ERRNO(i32 %89)
  %91 = load i64, i64* %25, align 8
  %92 = trunc i64 %91 to i32
  %93 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = inttoptr i64 %96 to i8*
  br label %102

100:                                              ; preds = %88
  %101 = load i8*, i8** %20, align 8
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i8* [ %99, %98 ], [ %101, %100 ]
  %104 = call i8* @strna(i8* %103)
  %105 = load i64, i64* %14, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 (i32, i8*, ...) @log_debug_errno(i32 %90, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0), i32 %92, i8* %104, i32 %106)
  store i32 %107, i32* %11, align 4
  br label %235

108:                                              ; preds = %84
  %109 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @sd_event_source_set_time(%struct.TYPE_16__* %110, i32 %111)
  store i32 %112, i32* %24, align 4
  %113 = load i32, i32* %24, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %108
  %116 = load i32, i32* %24, align 4
  %117 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = inttoptr i64 %120 to i8*
  br label %126

124:                                              ; preds = %115
  %125 = load i8*, i8** %20, align 8
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i8* [ %123, %122 ], [ %125, %124 ]
  %128 = call i8* @strna(i8* %127)
  %129 = call i32 (i32, i8*, ...) @log_debug_errno(i32 %116, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* %128)
  store i32 %129, i32* %11, align 4
  br label %235

130:                                              ; preds = %108
  %131 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %131, align 8
  %133 = load i32, i32* %16, align 4
  %134 = call i32 @sd_event_source_set_time_accuracy(%struct.TYPE_16__* %132, i32 %133)
  store i32 %134, i32* %24, align 4
  %135 = load i32, i32* %24, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %152

137:                                              ; preds = %130
  %138 = load i32, i32* %24, align 4
  %139 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %137
  %145 = inttoptr i64 %142 to i8*
  br label %148

146:                                              ; preds = %137
  %147 = load i8*, i8** %20, align 8
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i8* [ %145, %144 ], [ %147, %146 ]
  %150 = call i8* @strna(i8* %149)
  %151 = call i32 (i32, i8*, ...) @log_debug_errno(i32 %138, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i8* %150)
  store i32 %151, i32* %11, align 4
  br label %235

152:                                              ; preds = %130
  %153 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %153, align 8
  %155 = load i8*, i8** %18, align 8
  %156 = call i32 @sd_event_source_set_userdata(%struct.TYPE_16__* %154, i8* %155)
  %157 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %157, align 8
  %159 = load i32, i32* @SD_EVENT_ONESHOT, align 4
  %160 = call i32 @sd_event_source_set_enabled(%struct.TYPE_16__* %158, i32 %159)
  store i32 %160, i32* %24, align 4
  %161 = load i32, i32* %24, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %178

163:                                              ; preds = %152
  %164 = load i32, i32* %24, align 4
  %165 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %163
  %171 = inttoptr i64 %168 to i8*
  br label %174

172:                                              ; preds = %163
  %173 = load i8*, i8** %20, align 8
  br label %174

174:                                              ; preds = %172, %170
  %175 = phi i8* [ %171, %170 ], [ %173, %172 ]
  %176 = call i8* @strna(i8* %175)
  %177 = call i32 (i32, i8*, ...) @log_debug_errno(i32 %164, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8* %176)
  store i32 %177, i32* %11, align 4
  br label %235

178:                                              ; preds = %152
  br label %196

179:                                              ; preds = %10
  %180 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %12, align 8
  %181 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %182 = load i64, i64* %14, align 8
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* %16, align 4
  %185 = load i32, i32* %17, align 4
  %186 = load i8*, i8** %18, align 8
  %187 = call i32 @sd_event_add_time(%struct.TYPE_16__** %180, %struct.TYPE_16__** %181, i64 %182, i32 %183, i32 %184, i32 %185, i8* %186)
  store i32 %187, i32* %24, align 4
  %188 = load i32, i32* %24, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %179
  %191 = load i32, i32* %24, align 4
  %192 = load i8*, i8** %20, align 8
  %193 = call i8* @strna(i8* %192)
  %194 = call i32 (i32, i8*, ...) @log_debug_errno(i32 %191, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i8* %193)
  store i32 %194, i32* %11, align 4
  br label %235

195:                                              ; preds = %179
  store i32 1, i32* %22, align 4
  br label %196

196:                                              ; preds = %195, %178
  %197 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %197, align 8
  %199 = load i32, i32* %19, align 4
  %200 = call i32 @sd_event_source_set_priority(%struct.TYPE_16__* %198, i32 %199)
  store i32 %200, i32* %24, align 4
  %201 = load i32, i32* %24, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %218

203:                                              ; preds = %196
  %204 = load i32, i32* %24, align 4
  %205 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %203
  %211 = inttoptr i64 %208 to i8*
  br label %214

212:                                              ; preds = %203
  %213 = load i8*, i8** %20, align 8
  br label %214

214:                                              ; preds = %212, %210
  %215 = phi i8* [ %211, %210 ], [ %213, %212 ]
  %216 = call i8* @strna(i8* %215)
  %217 = call i32 (i32, i8*, ...) @log_debug_errno(i32 %204, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i8* %216)
  store i32 %217, i32* %11, align 4
  br label %235

218:                                              ; preds = %196
  %219 = load i8*, i8** %20, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %233

221:                                              ; preds = %218
  %222 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %222, align 8
  %224 = load i8*, i8** %20, align 8
  %225 = call i32 @sd_event_source_set_description(%struct.TYPE_16__* %223, i8* %224)
  store i32 %225, i32* %24, align 4
  %226 = load i32, i32* %24, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %221
  %229 = load i32, i32* %24, align 4
  %230 = load i8*, i8** %20, align 8
  %231 = call i32 (i32, i8*, ...) @log_debug_errno(i32 %229, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i8* %230)
  store i32 %231, i32* %11, align 4
  br label %235

232:                                              ; preds = %221
  br label %233

233:                                              ; preds = %232, %218
  %234 = load i32, i32* %22, align 4
  store i32 %234, i32* %11, align 4
  br label %235

235:                                              ; preds = %233, %228, %214, %190, %174, %148, %126, %102, %80, %61, %53
  %236 = load i32, i32* %11, align 4
  ret i32 %236
}

declare dso_local i32 @assert(%struct.TYPE_16__**) #1

declare dso_local i32 @sd_event_source_get_enabled(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @log_debug_errno(i32, i8*, ...) #1

declare dso_local i8* @strna(i8*) #1

declare dso_local i32 @sd_event_source_get_time_clock(%struct.TYPE_16__*, i64*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @sd_event_source_set_time(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @sd_event_source_set_time_accuracy(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @sd_event_source_set_userdata(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @sd_event_source_set_enabled(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @sd_event_add_time(%struct.TYPE_16__**, %struct.TYPE_16__**, i64, i32, i32, i32, i8*) #1

declare dso_local i32 @sd_event_source_set_priority(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @sd_event_source_set_description(%struct.TYPE_16__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

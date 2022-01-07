; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_ipc-server.c_ipc_event_binding.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_ipc-server.c_ipc_event_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_binding = type { i8*, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64* }

@IPC_EVENT_BINDING = common dso_local global i32 0, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Sending binding event\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"event_state_mask\00", align 1
@BINDING_KEYCODE = common dso_local global i64 0, align 8
@BTN_LEFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"button%u\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"input_codes\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"input_code\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@BINDING_MOUSECODE = common dso_local global i64 0, align 8
@BINDING_MOUSESYM = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"input_type\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"mouse\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"keyboard\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"change\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"run\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"binding\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_event_binding(%struct.sway_binding* %0) #0 {
  %2 = alloca %struct.sway_binding*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [10 x i8*], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [64 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  store %struct.sway_binding* %0, %struct.sway_binding** %2, align 8
  %21 = load i32, i32* @IPC_EVENT_BINDING, align 4
  %22 = call i32 @ipc_has_event_listeners(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %216

25:                                               ; preds = %1
  %26 = load i32, i32* @SWAY_DEBUG, align 4
  %27 = call i32 @sway_log(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %28 = call i32* (...) @json_object_new_object()
  store i32* %28, i32** %3, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.sway_binding*, %struct.sway_binding** %2, align 8
  %31 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32* @json_object_new_string(i8* %32)
  %34 = call i32 @json_object_object_add(i32* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %33)
  %35 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 0
  %36 = load %struct.sway_binding*, %struct.sway_binding** %2, align 8
  %37 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @get_modifier_names(i8** %35, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = call i32* (...) @json_object_new_array()
  store i32* %40, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %53, %25
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %4, i64 0, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i32* @json_object_new_string(i8* %50)
  %52 = call i32 @json_object_array_add(i32* %46, i32* %51)
  br label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %41

56:                                               ; preds = %41
  %57 = load i32*, i32** %3, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @json_object_object_add(i32* %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %58)
  %60 = call i32* (...) @json_object_new_array()
  store i32* %60, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %61 = call i32* (...) @json_object_new_array()
  store i32* %61, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %62 = load %struct.sway_binding*, %struct.sway_binding** %2, align 8
  %63 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @BINDING_KEYCODE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %101

67:                                               ; preds = %56
  store i32 0, i32* %13, align 4
  br label %68

68:                                               ; preds = %97, %67
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.sway_binding*, %struct.sway_binding** %2, align 8
  %71 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %69, %74
  br i1 %75, label %76, label %100

76:                                               ; preds = %68
  %77 = load %struct.sway_binding*, %struct.sway_binding** %2, align 8
  %78 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i32*
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %12, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %12, align 4
  %90 = call i32* @json_object_new_int(i32 %89)
  %91 = call i32 @json_object_array_add(i32* %88, i32* %90)
  %92 = load i32, i32* %13, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %76
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %94, %76
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  br label %68

100:                                              ; preds = %68
  br label %164

101:                                              ; preds = %56
  store i32 0, i32* %16, align 4
  br label %102

102:                                              ; preds = %160, %101
  %103 = load i32, i32* %16, align 4
  %104 = load %struct.sway_binding*, %struct.sway_binding** %2, align 8
  %105 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %104, i32 0, i32 2
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %103, %108
  br i1 %109, label %110, label %163

110:                                              ; preds = %102
  %111 = load %struct.sway_binding*, %struct.sway_binding** %2, align 8
  %112 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %111, i32 0, i32 2
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %16, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to i32*
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* @BTN_LEFT, align 4
  %124 = icmp sge i32 %122, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %110
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* @BTN_LEFT, align 4
  %128 = add nsw i32 %127, 8
  %129 = icmp sle i32 %126, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* @BTN_LEFT, align 4
  %134 = sub nsw i32 %132, %133
  %135 = add nsw i32 %134, 1
  %136 = call i32 @snprintf(i8* %131, i32 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %135)
  br label %144

137:                                              ; preds = %125, %110
  %138 = load i32, i32* %14, align 4
  %139 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %140 = call i64 @xkb_keysym_get_name(i32 %138, i8* %139, i32 64)
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %160

143:                                              ; preds = %137
  br label %144

144:                                              ; preds = %143, %130
  %145 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %146 = call i32* @json_object_new_string(i8* %145)
  store i32* %146, i32** %17, align 8
  %147 = load i32, i32* %16, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load i32*, i32** %10, align 8
  %151 = load i32*, i32** %17, align 8
  %152 = call i32* @json_object_get(i32* %151)
  %153 = call i32 @json_object_array_add(i32* %150, i32* %152)
  %154 = load i32*, i32** %17, align 8
  store i32* %154, i32** %11, align 8
  br label %159

155:                                              ; preds = %144
  %156 = load i32*, i32** %10, align 8
  %157 = load i32*, i32** %17, align 8
  %158 = call i32 @json_object_array_add(i32* %156, i32* %157)
  br label %159

159:                                              ; preds = %155, %149
  br label %160

160:                                              ; preds = %159, %142
  %161 = load i32, i32* %16, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %16, align 4
  br label %102

163:                                              ; preds = %102
  br label %164

164:                                              ; preds = %163, %100
  %165 = load i32*, i32** %3, align 8
  %166 = load i32*, i32** %8, align 8
  %167 = call i32 @json_object_object_add(i32* %165, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %166)
  %168 = load i32*, i32** %3, align 8
  %169 = load i32, i32* %9, align 4
  %170 = call i32* @json_object_new_int(i32 %169)
  %171 = call i32 @json_object_object_add(i32* %168, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32* %170)
  %172 = load i32*, i32** %3, align 8
  %173 = load i32*, i32** %10, align 8
  %174 = call i32 @json_object_object_add(i32* %172, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* %173)
  %175 = load i32*, i32** %3, align 8
  %176 = load i32*, i32** %11, align 8
  %177 = call i32 @json_object_object_add(i32* %175, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32* %176)
  %178 = load %struct.sway_binding*, %struct.sway_binding** %2, align 8
  %179 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @BINDING_MOUSECODE, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %189, label %183

183:                                              ; preds = %164
  %184 = load %struct.sway_binding*, %struct.sway_binding** %2, align 8
  %185 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @BINDING_MOUSESYM, align 8
  %188 = icmp eq i64 %186, %187
  br label %189

189:                                              ; preds = %183, %164
  %190 = phi i1 [ true, %164 ], [ %188, %183 ]
  %191 = zext i1 %190 to i32
  store i32 %191, i32* %18, align 4
  %192 = load i32*, i32** %3, align 8
  %193 = load i32, i32* %18, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %189
  %196 = call i32* @json_object_new_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %199

197:                                              ; preds = %189
  %198 = call i32* @json_object_new_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  br label %199

199:                                              ; preds = %197, %195
  %200 = phi i32* [ %196, %195 ], [ %198, %197 ]
  %201 = call i32 @json_object_object_add(i32* %192, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32* %200)
  %202 = call i32* (...) @json_object_new_object()
  store i32* %202, i32** %19, align 8
  %203 = load i32*, i32** %19, align 8
  %204 = call i32* @json_object_new_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %205 = call i32 @json_object_object_add(i32* %203, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32* %204)
  %206 = load i32*, i32** %19, align 8
  %207 = load i32*, i32** %3, align 8
  %208 = call i32 @json_object_object_add(i32* %206, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32* %207)
  %209 = load i32*, i32** %19, align 8
  %210 = call i8* @json_object_to_json_string(i32* %209)
  store i8* %210, i8** %20, align 8
  %211 = load i8*, i8** %20, align 8
  %212 = load i32, i32* @IPC_EVENT_BINDING, align 4
  %213 = call i32 @ipc_send_event(i8* %211, i32 %212)
  %214 = load i32*, i32** %19, align 8
  %215 = call i32 @json_object_put(i32* %214)
  br label %216

216:                                              ; preds = %199, %24
  ret void
}

declare dso_local i32 @ipc_has_event_listeners(i32) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32* @json_object_new_object(...) #1

declare dso_local i32 @json_object_object_add(i32*, i8*, i32*) #1

declare dso_local i32* @json_object_new_string(i8*) #1

declare dso_local i32 @get_modifier_names(i8**, i32) #1

declare dso_local i32* @json_object_new_array(...) #1

declare dso_local i32 @json_object_array_add(i32*, i32*) #1

declare dso_local i32* @json_object_new_int(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @xkb_keysym_get_name(i32, i8*, i32) #1

declare dso_local i32* @json_object_get(i32*) #1

declare dso_local i8* @json_object_to_json_string(i32*) #1

declare dso_local i32 @ipc_send_event(i8*, i32) #1

declare dso_local i32 @json_object_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_filter_chain.c_filter_chain_AppendInner.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_filter_chain.c_filter_chain_AppendInner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, %struct.TYPE_18__, %struct.TYPE_18__, i32*, %struct.TYPE_15__, i32*, i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_17__*, i32* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_19__*, %struct.TYPE_19__*, i64, %struct.TYPE_18__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32*, i32*, %struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_16__ }

@.str = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@VIDEO_ES = common dso_local global i64 0, align 8
@filter_chain_video_cbs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s,chain\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Filter '%s' (%p) appended to chain\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to create %s '%s'\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Failed to create %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_17__*, i8*, i8*, i32*, %struct.TYPE_18__*)* @filter_chain_AppendInner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @filter_chain_AppendInner(%struct.TYPE_17__* %0, i8* %1, i8* %2, i32* %3, %struct.TYPE_18__* %4) #0 {
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_18__* %4, %struct.TYPE_18__** %11, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_19__* @vlc_custom_create(i32 %20, i32 104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %12, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %23 = icmp eq %struct.TYPE_19__* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %6, align 8
  br label %222

28:                                               ; preds = %5
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 4
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %13, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %32, align 8
  %34 = icmp ne %struct.TYPE_19__* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  store %struct.TYPE_18__* %40, %struct.TYPE_18__** %14, align 8
  br label %44

41:                                               ; preds = %28
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 5
  store %struct.TYPE_18__* %43, %struct.TYPE_18__** %14, align 8
  br label %44

44:                                               ; preds = %41, %35
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %46 = icmp eq %struct.TYPE_18__* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 4
  store %struct.TYPE_18__* %49, %struct.TYPE_18__** %11, align 8
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %54 = call i32 @es_format_Copy(%struct.TYPE_18__* %52, %struct.TYPE_18__* %53)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %58 = call i32 @es_format_Copy(%struct.TYPE_18__* %56, %struct.TYPE_18__* %57)
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 6
  store i64 %61, i64* %63, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 5
  store i32* %64, i32** %66, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @VIDEO_ES, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %50
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 2
  store i32* @filter_chain_video_cbs, i32** %78, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  store %struct.TYPE_17__* %79, %struct.TYPE_17__** %82, align 8
  br label %87

83:                                               ; preds = %50
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  store i32* null, i32** %86, align 8
  br label %87

87:                                               ; preds = %83, %75
  %88 = load i8*, i8** %9, align 8
  %89 = icmp ne i8* %88, null
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load i8*, i8** %8, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %115

94:                                               ; preds = %87
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %94
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @strlen(i8* %100)
  %102 = sext i32 %101 to i64
  %103 = add i64 %102, 7
  %104 = call i8* @llvm.stacksave()
  store i8* %104, i8** %15, align 8
  %105 = alloca i8, i64 %103, align 16
  store i64 %103, i64* %16, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 @sprintf(i8* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %106)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = call i8* @module_need(%struct.TYPE_16__* %108, i8* %109, i8* %105, i32 1)
  %111 = bitcast i8* %110 to i32*
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 3
  store i32* %111, i32** %113, align 8
  %114 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %114)
  br label %126

115:                                              ; preds = %94, %87
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = icmp ne i8* %119, null
  %121 = zext i1 %120 to i32
  %122 = call i8* @module_need(%struct.TYPE_16__* %116, i8* %117, i8* %118, i32 %121)
  %123 = bitcast i8* %122 to i32*
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 3
  store i32* %123, i32** %125, align 8
  br label %126

126:                                              ; preds = %115, %99
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %197

132:                                              ; preds = %126
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %134, align 8
  %136 = icmp eq %struct.TYPE_19__* %135, null
  br i1 %136, label %137, label %147

137:                                              ; preds = %132
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %139, align 8
  %141 = icmp eq %struct.TYPE_19__* %140, null
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 2
  store %struct.TYPE_19__* %144, %struct.TYPE_19__** %146, align 8
  br label %153

147:                                              ; preds = %132
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 2
  store %struct.TYPE_19__* %148, %struct.TYPE_19__** %152, align 8
  br label %153

153:                                              ; preds = %147, %137
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %155, align 8
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 3
  store %struct.TYPE_19__* %156, %struct.TYPE_19__** %158, align 8
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 1
  store %struct.TYPE_19__* %159, %struct.TYPE_19__** %161, align 8
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 2
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %163, align 8
  %164 = call i32* @malloc(i32 4)
  store i32* %164, i32** %17, align 8
  %165 = load i32*, i32** %17, align 8
  %166 = icmp ne i32* %165, null
  %167 = zext i1 %166 to i32
  %168 = call i64 @likely(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %153
  %171 = load i32*, i32** %17, align 8
  %172 = call i32 @vlc_mouse_Init(i32* %171)
  br label %173

173:                                              ; preds = %170, %153
  %174 = load i32*, i32** %17, align 8
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 1
  store i32* %174, i32** %176, align 8
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  store i32* null, i32** %178, align 8
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i8*, i8** %8, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %186

184:                                              ; preds = %173
  %185 = load i8*, i8** %8, align 8
  br label %191

186:                                              ; preds = %173
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 3
  %189 = load i32*, i32** %188, align 8
  %190 = call i8* @module_get_name(i32* %189, i32 0)
  br label %191

191:                                              ; preds = %186, %184
  %192 = phi i8* [ %185, %184 ], [ %190, %186 ]
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %194 = bitcast %struct.TYPE_16__* %193 to i8*
  %195 = call i32 @msg_Dbg(i32 %181, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %192, i8* %194)
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %196, %struct.TYPE_16__** %6, align 8
  br label %222

197:                                              ; preds = %131
  %198 = load i8*, i8** %8, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %207

200:                                              ; preds = %197
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i8*, i8** %9, align 8
  %205 = load i8*, i8** %8, align 8
  %206 = call i32 (i32, i8*, i8*, ...) @msg_Err(i32 %203, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %204, i8* %205)
  br label %213

207:                                              ; preds = %197
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i8*, i8** %9, align 8
  %212 = call i32 (i32, i8*, i8*, ...) @msg_Err(i32 %210, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %211)
  br label %213

213:                                              ; preds = %207, %200
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 2
  %216 = call i32 @es_format_Clean(%struct.TYPE_18__* %215)
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 1
  %219 = call i32 @es_format_Clean(%struct.TYPE_18__* %218)
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %221 = call i32 @vlc_object_delete(%struct.TYPE_16__* %220)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %6, align 8
  br label %222

222:                                              ; preds = %213, %191, %27
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  ret %struct.TYPE_16__* %223
}

declare dso_local %struct.TYPE_19__* @vlc_custom_create(i32, i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @es_format_Copy(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @module_need(%struct.TYPE_16__*, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @malloc(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @vlc_mouse_Init(i32*) #1

declare dso_local i32 @msg_Dbg(i32, i8*, i8*, i8*) #1

declare dso_local i8* @module_get_name(i32*, i32) #1

declare dso_local i32 @msg_Err(i32, i8*, i8*, ...) #1

declare dso_local i32 @es_format_Clean(%struct.TYPE_18__*) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

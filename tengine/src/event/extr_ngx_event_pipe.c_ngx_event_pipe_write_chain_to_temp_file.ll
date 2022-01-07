; ModuleID = '/home/carl/AnghaBench/tengine/src/event/extr_ngx_event_pipe.c_ngx_event_pipe_write_chain_to_temp_file.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/extr_ngx_event_pipe.c_ngx_event_pipe_write_chain_to_temp_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i32, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_17__*, i32, %struct.TYPE_15__*, %struct.TYPE_16__*, i32, %struct.TYPE_15__*, i32, i64, %struct.TYPE_15__*, %struct.TYPE_15__**, i32, i32, i64 }
%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i64 }
%struct.TYPE_16__ = type { i64, i64, i32, i64, i64, i64, i32, i32, %struct.TYPE_16__*, %struct.TYPE_13__*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_15__*, %struct.TYPE_16__* }

@NGX_ABORT = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"pipe offset: %O\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"pipe buf ls:%d %p, pos %p, size: %z\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"size: %z\00", align 1
@NGX_BUSY = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*)* @ngx_event_pipe_write_chain_to_temp_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_event_pipe_write_chain_to_temp_file(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_15__**, align 8
  %14 = alloca %struct.TYPE_15__**, align 8
  %15 = alloca %struct.TYPE_15__**, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %19 = icmp ne %struct.TYPE_16__* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.TYPE_15__* @ngx_alloc_chain_link(i32 %23)
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %12, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %26 = icmp eq %struct.TYPE_15__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i64, i64* @NGX_ABORT, align 8
  store i64 %28, i64* %2, align 8
  br label %416

29:                                               ; preds = %20
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %34, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 13
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %39, align 8
  br label %44

40:                                               ; preds = %1
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 13
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  store %struct.TYPE_15__* %43, %struct.TYPE_15__** %12, align 8
  br label %44

44:                                               ; preds = %40, %29
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 16
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %163, label %49

49:                                               ; preds = %44
  store i64 0, i64* %4, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %50, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__** null, %struct.TYPE_15__*** %13, align 8
  store i32 1, i32* %8, align 4
  %51 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 15
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 5
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @ngx_log_debug1(i32 %51, i32 %54, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %59)
  br label %61

61:                                               ; preds = %133, %49
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %66, %71
  store i64 %72, i64* %5, align 8
  %73 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 15
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @ngx_log_debug4(i32 %73, i32 %76, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %81, i64 %86, i64 %91, i64 %92)
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %119

96:                                               ; preds = %61
  %97 = load i64, i64* %4, align 8
  %98 = load i64, i64* %5, align 8
  %99 = add nsw i64 %97, %98
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %99, %102
  br i1 %103, label %118, label %104

104:                                              ; preds = %96
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 5
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %4, align 8
  %111 = add nsw i64 %109, %110
  %112 = load i64, i64* %5, align 8
  %113 = add nsw i64 %111, %112
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %113, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %104, %96
  br label %136

119:                                              ; preds = %104, %61
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* %8, align 4
  %125 = load i64, i64* %5, align 8
  %126 = load i64, i64* %4, align 8
  %127 = add nsw i64 %126, %125
  store i64 %127, i64* %4, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  store %struct.TYPE_15__** %129, %struct.TYPE_15__*** %13, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %131, align 8
  store %struct.TYPE_15__* %132, %struct.TYPE_15__** %9, align 8
  br label %133

133:                                              ; preds = %119
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %135 = icmp ne %struct.TYPE_15__* %134, null
  br i1 %135, label %61, label %136

136:                                              ; preds = %133, %118
  %137 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 15
  %140 = load i32, i32* %139, align 8
  %141 = load i64, i64* %4, align 8
  %142 = call i32 @ngx_log_debug1(i32 %137, i32 %140, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %141)
  %143 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %13, align 8
  %144 = icmp eq %struct.TYPE_15__** %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %136
  %146 = load i64, i64* @NGX_BUSY, align 8
  store i64 %146, i64* %2, align 8
  br label %416

147:                                              ; preds = %136
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %149 = icmp ne %struct.TYPE_15__* %148, null
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 13
  store %struct.TYPE_15__* %151, %struct.TYPE_15__** %153, align 8
  %154 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %13, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %154, align 8
  br label %162

155:                                              ; preds = %147
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 13
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %157, align 8
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 13
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 14
  store %struct.TYPE_15__** %159, %struct.TYPE_15__*** %161, align 8
  br label %162

162:                                              ; preds = %155, %150
  br label %170

163:                                              ; preds = %44
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 13
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %165, align 8
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 13
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 14
  store %struct.TYPE_15__** %167, %struct.TYPE_15__*** %169, align 8
  br label %170

170:                                              ; preds = %163, %162
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 5
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %172, align 8
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %175 = call i64 @ngx_write_chain_to_temp_file(%struct.TYPE_17__* %173, %struct.TYPE_15__* %174)
  store i64 %175, i64* %6, align 8
  %176 = load i64, i64* %6, align 8
  %177 = load i64, i64* @NGX_ERROR, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %170
  %180 = load i64, i64* @NGX_ABORT, align 8
  store i64 %180, i64* %2, align 8
  br label %416

181:                                              ; preds = %170
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 8
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %183, align 8
  %185 = icmp ne %struct.TYPE_16__* %184, null
  br i1 %185, label %186, label %220

186:                                              ; preds = %181
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 8
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 8
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = sub nsw i64 %191, %196
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 5
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 0
  store i64 %197, i64* %201, align 8
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 8
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 8
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = sub nsw i64 %206, %211
  %213 = load i64, i64* %6, align 8
  %214 = sub nsw i64 %213, %212
  store i64 %214, i64* %6, align 8
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %216, align 8
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %218, align 8
  store %struct.TYPE_15__* %219, %struct.TYPE_15__** %12, align 8
  br label %220

220:                                              ; preds = %186, %181
  %221 = load i64, i64* %6, align 8
  %222 = icmp sgt i64 %221, 0
  br i1 %222, label %223, label %331

223:                                              ; preds = %220
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 7
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %225, align 8
  %227 = icmp ne %struct.TYPE_15__* %226, null
  br i1 %227, label %228, label %273

228:                                              ; preds = %223
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 7
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %230, align 8
  store %struct.TYPE_15__* %231, %struct.TYPE_15__** %9, align 8
  br label %232

232:                                              ; preds = %238, %228
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %234, align 8
  %236 = icmp ne %struct.TYPE_15__* %235, null
  br i1 %236, label %237, label %242

237:                                              ; preds = %232
  br label %238

238:                                              ; preds = %237
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %240, align 8
  store %struct.TYPE_15__* %241, %struct.TYPE_15__** %9, align 8
  br label %232

242:                                              ; preds = %232
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %244, align 8
  store %struct.TYPE_16__* %245, %struct.TYPE_16__** %7, align 8
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 4
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 5
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = icmp eq i64 %248, %253
  br i1 %254, label %255, label %270

255:                                              ; preds = %242
  %256 = load i64, i64* %6, align 8
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 5
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = add nsw i64 %261, %256
  store i64 %262, i64* %260, align 8
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 5
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 4
  store i64 %267, i64* %269, align 8
  br label %332

270:                                              ; preds = %242
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 0
  store %struct.TYPE_15__** %272, %struct.TYPE_15__*** %14, align 8
  br label %276

273:                                              ; preds = %223
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 7
  store %struct.TYPE_15__** %275, %struct.TYPE_15__*** %14, align 8
  br label %276

276:                                              ; preds = %273, %270
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 3
  %282 = call %struct.TYPE_15__* @ngx_chain_get_free_buf(i32 %279, %struct.TYPE_15__** %281)
  store %struct.TYPE_15__* %282, %struct.TYPE_15__** %9, align 8
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %284 = icmp eq %struct.TYPE_15__* %283, null
  br i1 %284, label %285, label %287

285:                                              ; preds = %276
  %286 = load i64, i64* @NGX_ABORT, align 8
  store i64 %286, i64* %2, align 8
  br label %416

287:                                              ; preds = %276
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 1
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %289, align 8
  store %struct.TYPE_16__* %290, %struct.TYPE_16__** %7, align 8
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %292 = call i32 @ngx_memzero(%struct.TYPE_16__* %291, i32 80)
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 6
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 10
  store i32 %295, i32* %297, align 8
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 5
  %300 = load %struct.TYPE_17__*, %struct.TYPE_17__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 2
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 9
  store %struct.TYPE_13__* %301, %struct.TYPE_13__** %303, align 8
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 5
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 5
  store i64 %308, i64* %310, align 8
  %311 = load i64, i64* %6, align 8
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 5
  %314 = load %struct.TYPE_17__*, %struct.TYPE_17__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = add nsw i64 %316, %311
  store i64 %317, i64* %315, align 8
  %318 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %318, i32 0, i32 5
  %320 = load %struct.TYPE_17__*, %struct.TYPE_17__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 4
  store i64 %322, i64* %324, align 8
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 6
  store i32 1, i32* %326, align 8
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 7
  store i32 1, i32* %328, align 4
  %329 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %330 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %14, align 8
  store %struct.TYPE_15__* %329, %struct.TYPE_15__** %330, align 8
  br label %331

331:                                              ; preds = %287, %220
  br label %332

332:                                              ; preds = %331, %255
  %333 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %333, i32 0, i32 4
  store %struct.TYPE_15__** %334, %struct.TYPE_15__*** %15, align 8
  br label %335

335:                                              ; preds = %340, %332
  %336 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %15, align 8
  %337 = load %struct.TYPE_15__*, %struct.TYPE_15__** %336, align 8
  %338 = icmp ne %struct.TYPE_15__* %337, null
  br i1 %338, label %339, label %344

339:                                              ; preds = %335
  br label %340

340:                                              ; preds = %339
  %341 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %15, align 8
  %342 = load %struct.TYPE_15__*, %struct.TYPE_15__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %342, i32 0, i32 0
  store %struct.TYPE_15__** %343, %struct.TYPE_15__*** %15, align 8
  br label %335

344:                                              ; preds = %335
  %345 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %345, %struct.TYPE_15__** %9, align 8
  br label %346

346:                                              ; preds = %412, %344
  %347 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %348 = icmp ne %struct.TYPE_15__* %347, null
  br i1 %348, label %349, label %414

349:                                              ; preds = %346
  %350 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %351 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %350, i32 0, i32 0
  %352 = load %struct.TYPE_15__*, %struct.TYPE_15__** %351, align 8
  store %struct.TYPE_15__* %352, %struct.TYPE_15__** %11, align 8
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i32 0, i32 3
  %355 = load %struct.TYPE_15__*, %struct.TYPE_15__** %354, align 8
  %356 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %357 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %356, i32 0, i32 0
  store %struct.TYPE_15__* %355, %struct.TYPE_15__** %357, align 8
  %358 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %359 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %359, i32 0, i32 3
  store %struct.TYPE_15__* %358, %struct.TYPE_15__** %360, align 8
  %361 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %362 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %361, i32 0, i32 1
  %363 = load %struct.TYPE_16__*, %struct.TYPE_16__** %362, align 8
  store %struct.TYPE_16__* %363, %struct.TYPE_16__** %7, align 8
  %364 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %365 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 8
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %411

368:                                              ; preds = %349
  %369 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 8
  %372 = call %struct.TYPE_15__* @ngx_alloc_chain_link(i32 %371)
  store %struct.TYPE_15__* %372, %struct.TYPE_15__** %10, align 8
  %373 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %374 = icmp eq %struct.TYPE_15__* %373, null
  br i1 %374, label %375, label %377

375:                                              ; preds = %368
  %376 = load i64, i64* @NGX_ABORT, align 8
  store i64 %376, i64* %2, align 8
  br label %416

377:                                              ; preds = %368
  %378 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %379 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %378, i32 0, i32 8
  %380 = load %struct.TYPE_16__*, %struct.TYPE_16__** %379, align 8
  %381 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %382 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %381, i32 0, i32 1
  store %struct.TYPE_16__* %380, %struct.TYPE_16__** %382, align 8
  %383 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %384 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %383, i32 0, i32 0
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %384, align 8
  %385 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %386 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %15, align 8
  store %struct.TYPE_15__* %385, %struct.TYPE_15__** %386, align 8
  %387 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %388 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %387, i32 0, i32 0
  store %struct.TYPE_15__** %388, %struct.TYPE_15__*** %15, align 8
  %389 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %389, i32 0, i32 8
  %391 = load %struct.TYPE_16__*, %struct.TYPE_16__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %391, i32 0, i32 3
  %393 = load i64, i64* %392, align 8
  %394 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %395 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %394, i32 0, i32 8
  %396 = load %struct.TYPE_16__*, %struct.TYPE_16__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %396, i32 0, i32 1
  store i64 %393, i64* %397, align 8
  %398 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %399 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %398, i32 0, i32 8
  %400 = load %struct.TYPE_16__*, %struct.TYPE_16__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %400, i32 0, i32 3
  %402 = load i64, i64* %401, align 8
  %403 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %404 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %403, i32 0, i32 8
  %405 = load %struct.TYPE_16__*, %struct.TYPE_16__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %405, i32 0, i32 0
  store i64 %402, i64* %406, align 8
  %407 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %408 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %407, i32 0, i32 8
  %409 = load %struct.TYPE_16__*, %struct.TYPE_16__** %408, align 8
  %410 = call i32 @ngx_event_pipe_remove_shadow_links(%struct.TYPE_16__* %409)
  br label %411

411:                                              ; preds = %377, %349
  br label %412

412:                                              ; preds = %411
  %413 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %413, %struct.TYPE_15__** %9, align 8
  br label %346

414:                                              ; preds = %346
  %415 = load i64, i64* @NGX_OK, align 8
  store i64 %415, i64* %2, align 8
  br label %416

416:                                              ; preds = %414, %375, %285, %179, %145, %27
  %417 = load i64, i64* %2, align 8
  ret i64 %417
}

declare dso_local %struct.TYPE_15__* @ngx_alloc_chain_link(i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i32, i64, i64, i64) #1

declare dso_local i64 @ngx_write_chain_to_temp_file(%struct.TYPE_17__*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @ngx_chain_get_free_buf(i32, %struct.TYPE_15__**) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ngx_event_pipe_remove_shadow_links(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

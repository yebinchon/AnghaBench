; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_pipe.c_ngx_pipe_do_rollback.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_pipe.c_ngx_pipe_do_rollback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i32, i32, i32*, i32 }
%struct.flock = type { i64, i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i64 }

@NGX_FILE_RDWR = common dso_local global i32 0, align 4
@NGX_FILE_OPEN = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@F_SETLKW = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"need rollback [%s]: cannot open backup\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"need rollback [%s]: time on [%d] [%d]\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"no need rollback [%s]: time not on [%d] [%d]\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"no need check rollback [%s] time: no interval\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"need rollback [%s]: size on [%d]\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"no need rollback [%s]: size not on\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"no need check rollback [%s] size: no max size\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"rname %s to %s failed\00", align 1
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"rollback [%s] success\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_pipe_do_rollback(%struct.TYPE_9__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.flock, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NGX_FILE_RDWR, align 4
  %15 = load i32, i32* @NGX_FILE_OPEN, align 4
  %16 = call i32 @ngx_open_file(i32 %13, i32 %14, i32 %15, i32 0)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %234

20:                                               ; preds = %2
  %21 = load i32, i32* @F_WRLCK, align 4
  %22 = getelementptr inbounds %struct.flock, %struct.flock* %6, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @SEEK_SET, align 4
  %24 = getelementptr inbounds %struct.flock, %struct.flock* %6, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.flock, %struct.flock* %6, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.flock, %struct.flock* %6, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @F_SETLKW, align 4
  %29 = call i32 @fcntl(i32 %27, i32 %28, %struct.flock* %6)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @ngx_close_file(i32 %33)
  br label %234

35:                                               ; preds = %20
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %100

40:                                               ; preds = %35
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ngx_file_info(i32 %45, %struct.TYPE_8__* %9)
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %57

48:                                               ; preds = %40
  store i32 1, i32* %10, align 4
  %49 = load i32, i32* @NGX_LOG_INFO, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i32, i32, i8*, i32, ...) @ngx_log_error(i32 %49, i32 %52, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %99

57:                                               ; preds = %40
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sdiv i32 %59, %62
  %64 = call i32 (...) @ngx_time()
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sdiv i32 %64, %67
  %69 = icmp slt i32 %63, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %57
  store i32 1, i32* %10, align 4
  %71 = load i32, i32* @NGX_LOG_INFO, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32, i32, i32, i8*, i32, ...) @ngx_log_error(i32 %71, i32 %74, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %79, i32 %82)
  br label %98

84:                                               ; preds = %57
  %85 = load i32, i32* @NGX_LOG_INFO, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (i32, i32, i32, i8*, i32, ...) @ngx_log_error(i32 %85, i32 %88, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %84, %70
  br label %99

99:                                               ; preds = %98, %48
  br label %109

100:                                              ; preds = %35
  %101 = load i32, i32* @NGX_LOG_INFO, align 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i32, i32, i32, i8*, i32, ...) @ngx_log_error(i32 %101, i32 %104, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %100, %99
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %114, label %148

114:                                              ; preds = %109
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ngx_file_info(i32 %117, %struct.TYPE_8__* %9)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp sge i64 %122, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %120
  store i32 1, i32* %10, align 4
  %128 = load i32, i32* @NGX_LOG_INFO, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i32 (i32, i32, i32, i8*, i32, ...) @ngx_log_error(i32 %128, i32 %131, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %134, i64 %136)
  br label %147

138:                                              ; preds = %120, %114
  %139 = load i32, i32* @NGX_LOG_INFO, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i32, i32, i32, i8*, i32, ...) @ngx_log_error(i32 %139, i32 %142, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %138, %127
  br label %157

148:                                              ; preds = %109
  %149 = load i32, i32* @NGX_LOG_INFO, align 4
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i32, i32, i32, i8*, i32, ...) @ngx_log_error(i32 %149, i32 %152, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %148, %147
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %231

160:                                              ; preds = %157
  store i32 1, i32* %8, align 4
  br label %161

161:                                              ; preds = %192, %160
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %195

167:                                              ; preds = %161
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sub nsw i32 %173, %174
  %176 = sub nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %170, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 4
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sub nsw i32 %185, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %182, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @ngx_rename_file(i32 %179, i32 %190)
  br label %192

192:                                              ; preds = %167
  %193 = load i32, i32* %8, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %8, align 4
  br label %161

195:                                              ; preds = %161
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 4
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @ngx_rename_file(i32 %198, i32 %203)
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %221

206:                                              ; preds = %195
  %207 = load i32, i32* @NGX_LOG_EMERG, align 4
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @ngx_errno, align 4
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 4
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 (i32, i32, i32, i8*, i32, ...) @ngx_log_error(i32 %207, i32 %210, i32 %211, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %214, i32 %219)
  br label %230

221:                                              ; preds = %195
  %222 = load i32, i32* @NGX_LOG_WARN, align 4
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = call i32 (i32, i32, i32, i8*, i32, ...) @ngx_log_error(i32 %222, i32 %225, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %228)
  br label %230

230:                                              ; preds = %221, %206
  br label %231

231:                                              ; preds = %230, %157
  %232 = load i32, i32* %5, align 4
  %233 = call i32 @ngx_close_file(i32 %232)
  br label %234

234:                                              ; preds = %231, %32, %19
  ret void
}

declare dso_local i32 @ngx_open_file(i32, i32, i32, i32) #1

declare dso_local i32 @fcntl(i32, i32, %struct.flock*) #1

declare dso_local i32 @ngx_close_file(i32) #1

declare dso_local i32 @ngx_file_info(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @ngx_time(...) #1

declare dso_local i32 @ngx_rename_file(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

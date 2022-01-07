; ModuleID = '/home/carl/AnghaBench/systemd/src/timesync/extr_timesyncd-manager.c_manager_connect.c'
source_filename = "/home/carl/AnghaBench/systemd/src/timesync/extr_timesyncd-manager.c_manager_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i64, %struct.TYPE_14__*, i32, i32, i32, i32, i32*, i32*, i32*, %struct.TYPE_12__*, i32 }
%struct.TYPE_14__ = type { i64, i32, i32* }
%struct.TYPE_12__ = type { i64 }
%struct.addrinfo = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Delaying attempts to contact servers.\00", align 1
@RETRY_USEC = common dso_local global i64 0, align 8
@manager_retry_connect = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to create retry timer: %m\00", align 1
@AI_NUMERICSERV = common dso_local global i32 0, align 4
@AI_ADDRCONFIG = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SERVER_LINK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"No server found.\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Waiting after exhausting servers.\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Resolving %s...\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@manager_resolve_handler = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Failed to create resolver: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @manager_connect(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.addrinfo, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = call i32 @assert(%struct.TYPE_13__* %8)
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = call i32 @manager_disconnect(%struct.TYPE_13__* %10)
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @sd_event_source_unref(i32 %14)
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 12
  %20 = call i32 @ratelimit_below(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %1
  %23 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 6
  %29 = call i32 (...) @clock_boottime_or_monotonic()
  %30 = call i32 (...) @clock_boottime_or_monotonic()
  %31 = call i64 @now(i32 %30)
  %32 = load i64, i64* @RETRY_USEC, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* @manager_retry_connect, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = call i32 @sd_event_add_time(i32 %26, i32* %28, i32 %29, i64 %33, i32 0, i32 %34, %struct.TYPE_13__* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %22
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @log_error_errno(i32 %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 %41, i32* %2, align 4
  br label %235

42:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %235

43:                                               ; preds = %1
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 11
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = icmp ne %struct.TYPE_12__* %46, null
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 11
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 11
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @manager_set_server_address(%struct.TYPE_13__* %56, i64 %61)
  br label %227

63:                                               ; preds = %48, %43
  %64 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 0
  %65 = load i32, i32* @AI_NUMERICSERV, align 4
  %66 = load i32, i32* @AI_ADDRCONFIG, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %64, align 4
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 1
  %69 = load i32, i32* @SOCK_DGRAM, align 4
  store i32 %69, i32* %68, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = icmp ne %struct.TYPE_14__* %72, null
  br i1 %73, label %74, label %89

74:                                               ; preds = %63
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @manager_set_server_name(%struct.TYPE_13__* %82, i32* %87)
  br label %196

89:                                               ; preds = %74, %63
  store i32 1, i32* %7, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = icmp ne %struct.TYPE_14__* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SERVER_LINK, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %94, %89
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 9
  %105 = load i32*, i32** %104, align 8
  store i32* %105, i32** %6, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %102
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 10
  %111 = load i32*, i32** %110, align 8
  store i32* %111, i32** %6, align 8
  br label %112

112:                                              ; preds = %108, %102
  br label %125

113:                                              ; preds = %94
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 10
  %116 = load i32*, i32** %115, align 8
  store i32* %116, i32** %6, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %123, label %119

119:                                              ; preds = %113
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 9
  %122 = load i32*, i32** %121, align 8
  store i32* %122, i32** %6, align 8
  br label %124

123:                                              ; preds = %113
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %123, %119
  br label %125

125:                                              ; preds = %124, %112
  %126 = load i32*, i32** %6, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %125
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 8
  %131 = load i32*, i32** %130, align 8
  store i32* %131, i32** %6, align 8
  br label %132

132:                                              ; preds = %128, %125
  %133 = load i32*, i32** %6, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %139, label %135

135:                                              ; preds = %132
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %137 = call i32 @manager_set_server_name(%struct.TYPE_13__* %136, i32* null)
  %138 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %235

139:                                              ; preds = %132
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %190

142:                                              ; preds = %139
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %190, label %147

147:                                              ; preds = %142
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %190

152:                                              ; preds = %147
  %153 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 6
  %159 = call i32 (...) @clock_boottime_or_monotonic()
  %160 = call i32 (...) @clock_boottime_or_monotonic()
  %161 = call i64 @now(i32 %160)
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %161, %164
  %166 = load i32, i32* @manager_retry_connect, align 4
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %168 = call i32 @sd_event_add_time(i32 %156, i32* %158, i32 %159, i64 %165, i32 0, i32 %166, %struct.TYPE_13__* %167)
  store i32 %168, i32* %4, align 4
  %169 = load i32, i32* %4, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %152
  %172 = load i32, i32* %4, align 4
  %173 = call i32 @log_error_errno(i32 %172, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 %173, i32* %2, align 4
  br label %235

174:                                              ; preds = %152
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 0
  store i32 1, i32* %176, align 8
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = icmp slt i64 %179, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %174
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = mul nsw i64 %187, 2
  store i64 %188, i64* %186, align 8
  br label %189

189:                                              ; preds = %184, %174
  store i32 0, i32* %2, align 4
  br label %235

190:                                              ; preds = %147, %142, %139
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 0
  store i32 0, i32* %192, align 8
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %194 = load i32*, i32** %6, align 8
  %195 = call i32 @manager_set_server_name(%struct.TYPE_13__* %193, i32* %194)
  br label %196

196:                                              ; preds = %190, %81
  %197 = call i32 (...) @res_init()
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 3
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %199, align 8
  %201 = call i32 @server_name_flush_addresses(%struct.TYPE_14__* %200)
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 3
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %206)
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 4
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 3
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @manager_resolve_handler, align 4
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %220 = call i32 @resolve_getaddrinfo(i32 %210, i32* %212, i32 %217, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %struct.addrinfo* %5, i32 %218, i32* null, %struct.TYPE_13__* %219)
  store i32 %220, i32* %4, align 4
  %221 = load i32, i32* %4, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %196
  %224 = load i32, i32* %4, align 4
  %225 = call i32 @log_error_errno(i32 %224, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  store i32 %225, i32* %2, align 4
  br label %235

226:                                              ; preds = %196
  store i32 1, i32* %2, align 4
  br label %235

227:                                              ; preds = %55
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %229 = call i32 @manager_begin(%struct.TYPE_13__* %228)
  store i32 %229, i32* %4, align 4
  %230 = load i32, i32* %4, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %227
  %233 = load i32, i32* %4, align 4
  store i32 %233, i32* %2, align 4
  br label %235

234:                                              ; preds = %227
  store i32 1, i32* %2, align 4
  br label %235

235:                                              ; preds = %234, %232, %226, %223, %189, %171, %135, %42, %39
  %236 = load i32, i32* %2, align 4
  ret i32 %236
}

declare dso_local i32 @assert(%struct.TYPE_13__*) #1

declare dso_local i32 @manager_disconnect(%struct.TYPE_13__*) #1

declare dso_local i32 @sd_event_source_unref(i32) #1

declare dso_local i32 @ratelimit_below(i32*) #1

declare dso_local i32 @log_debug(i8*, ...) #1

declare dso_local i32 @sd_event_add_time(i32, i32*, i32, i64, i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @clock_boottime_or_monotonic(...) #1

declare dso_local i64 @now(i32) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @manager_set_server_address(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @manager_set_server_name(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @res_init(...) #1

declare dso_local i32 @server_name_flush_addresses(%struct.TYPE_14__*) #1

declare dso_local i32 @resolve_getaddrinfo(i32, i32*, i32, i8*, %struct.addrinfo*, i32, i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @manager_begin(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

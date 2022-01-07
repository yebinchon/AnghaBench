; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_do_friends.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_do_friends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_13__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i32, i32, i32, i32, i8*, i32, i8*, i32, i32, i32, i32 }

@FRIEND_ADDED = common dso_local global i64 0, align 8
@FRIEND_REQUESTED = common dso_local global i64 0, align 8
@FRIEND_CONFIRMED = common dso_local global i64 0, align 8
@FRIEND_ONLINE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_friends(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %6 = call i8* (...) @unix_time()
  store i8* %6, i8** %4, align 8
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %246, %1
  %8 = load i64, i64* %3, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %249

13:                                               ; preds = %7
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FRIEND_ADDED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %71

23:                                               ; preds = %13
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 11
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = load i64, i64* %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = load i64, i64* %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @send_friend_request_packet(i32 %26, i32 %33, i32 %40, i32 %47, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %23
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %60 = load i64, i64* %3, align 8
  %61 = load i64, i64* @FRIEND_REQUESTED, align 8
  %62 = call i32 @set_friend_status(%struct.TYPE_14__* %59, i64 %60, i64 %61)
  %63 = load i8*, i8** %4, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = load i64, i64* %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 7
  store i8* %63, i8** %69, align 8
  br label %70

70:                                               ; preds = %58, %23
  br label %71

71:                                               ; preds = %70, %13
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = load i64, i64* %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @FRIEND_REQUESTED, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %91, label %81

81:                                               ; preds = %71
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = load i64, i64* %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @FRIEND_CONFIRMED, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %81, %71
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = load i64, i64* %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @FRIEND_REQUESTED, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %91
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %103 = load i64, i64* %3, align 8
  %104 = load i8*, i8** %4, align 8
  %105 = call i32 @check_friend_request_timed_out(%struct.TYPE_14__* %102, i64 %103, i8* %104)
  br label %106

106:                                              ; preds = %101, %91
  br label %107

107:                                              ; preds = %106, %81
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = load i64, i64* %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @FRIEND_ONLINE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %245

117:                                              ; preds = %107
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = load i64, i64* %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %145

126:                                              ; preds = %117
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %128 = load i64, i64* %3, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @m_sendname(%struct.TYPE_14__* %127, i64 %128, i32 %131, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %126
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %139, align 8
  %141 = load i64, i64* %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  store i32 1, i32* %143, align 8
  br label %144

144:                                              ; preds = %137, %126
  br label %145

145:                                              ; preds = %144, %117
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  %149 = load i64, i64* %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %173

154:                                              ; preds = %145
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %156 = load i64, i64* %3, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @send_statusmessage(%struct.TYPE_14__* %155, i64 %156, i32 %159, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %154
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %167, align 8
  %169 = load i64, i64* %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 2
  store i32 1, i32* %171, align 4
  br label %172

172:                                              ; preds = %165, %154
  br label %173

173:                                              ; preds = %172, %145
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %175, align 8
  %177 = load i64, i64* %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %198

182:                                              ; preds = %173
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %184 = load i64, i64* %3, align 8
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i64 @send_userstatus(%struct.TYPE_14__* %183, i64 %184, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %182
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %192, align 8
  %194 = load i64, i64* %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 3
  store i32 1, i32* %196, align 8
  br label %197

197:                                              ; preds = %190, %182
  br label %198

198:                                              ; preds = %197, %173
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %200, align 8
  %202 = load i64, i64* %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %227

207:                                              ; preds = %198
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %209 = load i64, i64* %3, align 8
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %211, align 8
  %213 = load i64, i64* %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 8
  %217 = call i64 @send_user_istyping(%struct.TYPE_14__* %208, i64 %209, i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %207
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %221, align 8
  %223 = load i64, i64* %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 4
  store i32 1, i32* %225, align 4
  br label %226

226:                                              ; preds = %219, %207
  br label %227

227:                                              ; preds = %226, %198
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %229 = load i64, i64* %3, align 8
  %230 = call i32 @check_friend_tcp_udp(%struct.TYPE_14__* %228, i64 %229)
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %232 = load i64, i64* %3, align 8
  %233 = call i32 @do_receipts(%struct.TYPE_14__* %231, i64 %232)
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %235 = load i64, i64* %3, align 8
  %236 = call i32 @do_reqchunk_filecb(%struct.TYPE_14__* %234, i64 %235)
  %237 = call i64 @time(i32* null)
  %238 = inttoptr i64 %237 to i8*
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 1
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %240, align 8
  %242 = load i64, i64* %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 5
  store i8* %238, i8** %244, align 8
  br label %245

245:                                              ; preds = %227, %107
  br label %246

246:                                              ; preds = %245
  %247 = load i64, i64* %3, align 8
  %248 = add i64 %247, 1
  store i64 %248, i64* %3, align 8
  br label %7

249:                                              ; preds = %7
  ret void
}

declare dso_local i8* @unix_time(...) #1

declare dso_local i32 @send_friend_request_packet(i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_friend_status(%struct.TYPE_14__*, i64, i64) #1

declare dso_local i32 @check_friend_request_timed_out(%struct.TYPE_14__*, i64, i8*) #1

declare dso_local i64 @m_sendname(%struct.TYPE_14__*, i64, i32, i32) #1

declare dso_local i64 @send_statusmessage(%struct.TYPE_14__*, i64, i32, i32) #1

declare dso_local i64 @send_userstatus(%struct.TYPE_14__*, i64, i32) #1

declare dso_local i64 @send_user_istyping(%struct.TYPE_14__*, i64, i32) #1

declare dso_local i32 @check_friend_tcp_udp(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @do_receipts(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @do_reqchunk_filecb(%struct.TYPE_14__*, i64) #1

declare dso_local i64 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

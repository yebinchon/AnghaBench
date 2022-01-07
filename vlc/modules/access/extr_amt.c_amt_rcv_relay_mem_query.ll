; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_amt.c_amt_rcv_relay_mem_query.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_amt.c_amt_rcv_relay_mem_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_9__, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_9__ = type { i8, i8, i64, i64, i8, i32, i64 }
%struct.TYPE_8__ = type { i64, i64*, i64 }
%struct.pollfd = type { i32, i32 }

@RELAY_QUERY_MSG_LEN = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"AMT relay membership query receive time-out\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"length less than zero\00", align 1
@MSG_TYPE_LEN = common dso_local global i32 0, align 4
@AMT_HDR_LEN = common dso_local global i64 0, align 8
@MAC_LEN = common dso_local global i64 0, align 8
@NONCE_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Nonces are different rcvd: %x glob: %x\00", align 1
@IP_HDR_IGMP_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @amt_rcv_relay_mem_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amt_rcv_relay_mem_query(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [1 x %struct.pollfd], align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %11 = load i32, i32* @RELAY_QUERY_MSG_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load i32, i32* @RELAY_QUERY_MSG_LEN, align 4
  %16 = call i32 @memset(i8* %14, i32 0, i32 %15)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %7, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %6, i64 0, i64 0
  %24 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @POLLIN, align 4
  %26 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %6, i64 0, i64 0
  %27 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %6, i64 0, i64 0
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @vlc_poll_i11e(%struct.pollfd* %28, i32 1, i32 %31)
  switch i32 %32, label %37 [
    i32 0, label %33
    i32 -1, label %36
  ]

33:                                               ; preds = %1
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = call i32 @msg_Err(%struct.TYPE_10__* %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %1, %33
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %218

37:                                               ; preds = %1
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @RELAY_QUERY_MSG_LEN, align 4
  %42 = call i64 @recv(i32 %40, i8* %14, i32 %41, i32 0)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %37
  %46 = load i64, i64* %9, align 8
  %47 = load i32, i32* @RELAY_QUERY_MSG_LEN, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ne i64 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45, %37
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = call i32 @msg_Err(%struct.TYPE_10__* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %218

53:                                               ; preds = %45
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds i8, i8* %14, i64 0
  %58 = load i32, i32* @MSG_TYPE_LEN, align 4
  %59 = call i32 @memcpy(i64* %56, i8* %57, i32 %58)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* @AMT_HDR_LEN, align 8
  %66 = getelementptr inbounds i8, i8* %14, i64 %65
  %67 = load i64, i64* @MAC_LEN, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @memcpy(i64* %64, i8* %66, i32 %68)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i64, i64* @AMT_HDR_LEN, align 8
  %74 = load i64, i64* @MAC_LEN, align 8
  %75 = add i64 %73, %74
  %76 = getelementptr inbounds i8, i8* %14, i64 %75
  %77 = load i64, i64* @NONCE_LEN, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @memcpy(i64* %72, i8* %76, i32 %78)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %53
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @msg_Warn(%struct.TYPE_10__* %89, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %93, i64 %96)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %218

98:                                               ; preds = %53
  %99 = load i64, i64* @AMT_HDR_LEN, align 8
  %100 = load i64, i64* @MAC_LEN, align 8
  %101 = add i64 %99, %100
  %102 = load i64, i64* @NONCE_LEN, align 8
  %103 = add i64 %101, %102
  %104 = load i64, i64* @IP_HDR_IGMP_LEN, align 8
  %105 = add i64 %103, %104
  store i64 %105, i64* %10, align 8
  %106 = load i64, i64* %10, align 8
  %107 = getelementptr inbounds i8, i8* %14, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  store i8 %108, i8* %111, align 8
  %112 = load i64, i64* %10, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %10, align 8
  %114 = load i64, i64* %10, align 8
  %115 = load i32, i32* @RELAY_QUERY_MSG_LEN, align 4
  %116 = sext i32 %115 to i64
  %117 = icmp ult i64 %114, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load i64, i64* %10, align 8
  %121 = getelementptr inbounds i8, i8* %14, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  store i8 %122, i8* %125, align 1
  %126 = load i64, i64* %10, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %10, align 8
  %128 = load i64, i64* %10, align 8
  %129 = load i32, i32* @RELAY_QUERY_MSG_LEN, align 4
  %130 = sext i32 %129 to i64
  %131 = icmp ult i64 %128, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  %137 = load i64, i64* %10, align 8
  %138 = getelementptr inbounds i8, i8* %14, i64 %137
  %139 = call i32 @memcpy(i64* %136, i8* %138, i32 2)
  %140 = load i64, i64* %10, align 8
  %141 = add i64 %140, 2
  store i64 %141, i64* %10, align 8
  %142 = load i64, i64* %10, align 8
  %143 = load i32, i32* @RELAY_QUERY_MSG_LEN, align 4
  %144 = sext i32 %143 to i64
  %145 = icmp ult i64 %142, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 3
  %151 = load i64, i64* %10, align 8
  %152 = getelementptr inbounds i8, i8* %14, i64 %151
  %153 = call i32 @memcpy(i64* %150, i8* %152, i32 4)
  %154 = load i64, i64* %10, align 8
  %155 = add i64 %154, 4
  store i64 %155, i64* %10, align 8
  %156 = load i64, i64* %10, align 8
  %157 = load i32, i32* @RELAY_QUERY_MSG_LEN, align 4
  %158 = sext i32 %157 to i64
  %159 = icmp ult i64 %156, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  %162 = load i64, i64* %10, align 8
  %163 = getelementptr inbounds i8, i8* %14, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 4
  store i8 %164, i8* %167, align 8
  %168 = load i64, i64* %10, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %10, align 8
  %170 = load i64, i64* %10, align 8
  %171 = load i32, i32* @RELAY_QUERY_MSG_LEN, align 4
  %172 = sext i32 %171 to i64
  %173 = icmp ult i64 %170, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert(i32 %174)
  %176 = load i64, i64* %10, align 8
  %177 = getelementptr inbounds i8, i8* %14, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %98
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 5
  store i32 125, i32* %184, align 4
  br label %193

185:                                              ; preds = %98
  %186 = load i64, i64* %10, align 8
  %187 = getelementptr inbounds i8, i8* %14, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 5
  store i32 %189, i32* %192, align 4
  br label %193

193:                                              ; preds = %185, %181
  %194 = load i64, i64* %10, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %10, align 8
  %196 = load i64, i64* %10, align 8
  %197 = load i32, i32* @RELAY_QUERY_MSG_LEN, align 4
  %198 = sext i32 %197 to i64
  %199 = icmp ult i64 %196, %198
  %200 = zext i1 %199 to i32
  %201 = call i32 @assert(i32 %200)
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 6
  %205 = load i64, i64* %10, align 8
  %206 = getelementptr inbounds i8, i8* %14, i64 %205
  %207 = call i32 @memcpy(i64* %204, i8* %206, i32 2)
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 4
  %215 = trunc i32 %214 to i8
  %216 = call i32 @VLC_TICK_FROM_SEC(i8 signext %215)
  %217 = call i32 @vlc_timer_schedule(i32 %210, i32 0, i32 %216, i32 0)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %218

218:                                              ; preds = %193, %88, %50, %36
  %219 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %219)
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @vlc_poll_i11e(%struct.pollfd*, i32, i32) #2

declare dso_local i32 @msg_Err(%struct.TYPE_10__*, i8*) #2

declare dso_local i64 @recv(i32, i8*, i32, i32) #2

declare dso_local i32 @memcpy(i64*, i8*, i32) #2

declare dso_local i32 @msg_Warn(%struct.TYPE_10__*, i8*, i64, i64) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @vlc_timer_schedule(i32, i32, i32, i32) #2

declare dso_local i32 @VLC_TICK_FROM_SEC(i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

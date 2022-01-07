; ModuleID = '/home/carl/AnghaBench/redis/src/extr_ae_evport.c_aeApiPoll.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_ae_evport.c_aeApiPoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32*, i64*, i32 }
%struct.timeval = type { i32, i32 }
%struct.timespec = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i64 }

@MAX_EVENT_BATCHSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"aeApiPoll\00", align 1
@AE_NONE = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ETIME = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"aeApiPoll: port_get\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@AE_READABLE = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@AE_WRITABLE = common dso_local global i32 0, align 4
@evport_debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"aeApiPoll: fd %d mask 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.timeval*)* @aeApiPoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aeApiPoll(%struct.TYPE_9__* %0, %struct.timeval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.timespec, align 4
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %6, align 8
  %18 = load i32, i32* @MAX_EVENT_BATCHSZ, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca %struct.TYPE_8__, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %74, %2
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %77

28:                                               ; preds = %22
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %74

38:                                               ; preds = %28
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @aeApiAssociate(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %48, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %38
  %59 = call i32 (...) @abort() #4
  unreachable

60:                                               ; preds = %38
  %61 = load i64, i64* @AE_NONE, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 %61, i64* %67, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 -1, i32* %73, align 4
  br label %74

74:                                               ; preds = %60, %37
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %22

77:                                               ; preds = %22
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  %80 = load %struct.timeval*, %struct.timeval** %5, align 8
  %81 = icmp ne %struct.timeval* %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load %struct.timeval*, %struct.timeval** %5, align 8
  %84 = getelementptr inbounds %struct.timeval, %struct.timeval* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  %87 = load %struct.timeval*, %struct.timeval** %5, align 8
  %88 = getelementptr inbounds %struct.timeval, %struct.timeval* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %89, 1000
  %91 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  store i32 %90, i32* %91, align 4
  store %struct.timespec* %7, %struct.timespec** %8, align 8
  br label %93

92:                                               ; preds = %77
  store %struct.timespec* null, %struct.timespec** %8, align 8
  br label %93

93:                                               ; preds = %92, %82
  store i32 1, i32* %11, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @MAX_EVENT_BATCHSZ, align 4
  %98 = load %struct.timespec*, %struct.timespec** %8, align 8
  %99 = call i32 @port_getn(i32 %96, %struct.TYPE_8__* %21, i32 %97, i32* %11, %struct.timespec* %98)
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %120

101:                                              ; preds = %93
  %102 = load i64, i64* @errno, align 8
  %103 = load i64, i64* @ETIME, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %11, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %105, %101
  %109 = load i64, i64* @errno, align 8
  %110 = load i64, i64* @ETIME, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i64, i64* @errno, align 8
  %114 = load i64, i64* @EINTR, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112, %108
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %214

117:                                              ; preds = %112
  %118 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %119 = call i32 (...) @abort() #4
  unreachable

120:                                              ; preds = %105, %93
  %121 = load i32, i32* %11, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  store i32 0, i32* %10, align 4
  br label %124

124:                                              ; preds = %209, %120
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %212

128:                                              ; preds = %124
  store i32 0, i32* %9, align 4
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 16
  %134 = load i32, i32* @POLLIN, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %128
  %138 = load i32, i32* @AE_READABLE, align 4
  %139 = load i32, i32* %9, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %9, align 4
  br label %141

141:                                              ; preds = %137, %128
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 16
  %147 = load i32, i32* @POLLOUT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %141
  %151 = load i32, i32* @AE_WRITABLE, align 4
  %152 = load i32, i32* %9, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %9, align 4
  br label %154

154:                                              ; preds = %150, %141
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  store i32 %159, i32* %166, align 4
  %167 = load i32, i32* %9, align 4
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  store i32 %167, i32* %174, align 4
  %175 = load i64, i64* @evport_debug, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %154
  %178 = load i32, i32* @stderr, align 4
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @fprintf(i32 %178, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %177, %154
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %10, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  store i32 %191, i32* %197, align 4
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 2
  %205 = load i64*, i64** %204, align 8
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %205, i64 %207
  store i64 %202, i64* %208, align 8
  br label %209

209:                                              ; preds = %186
  %210 = load i32, i32* %10, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %10, align 4
  br label %124

212:                                              ; preds = %124
  %213 = load i32, i32* %11, align 4
  store i32 %213, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %214

214:                                              ; preds = %212, %116
  %215 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %215)
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @aeApiAssociate(i8*, i32, i32, i64) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i32 @port_getn(i32, %struct.TYPE_8__*, i32, i32*, %struct.timespec*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_rist.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_rist.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_16__*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_16__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_17__ = type { i32, i32 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to parse input URL (%s)\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to open rist flow (%s)\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"disable-nacks\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"mcast-blind-nacks\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"nack-type\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"packet-size\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"maximum-jitter\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"retry-interval\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"max-retries\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"latency\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"reorder-buffer\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Setting queue latency to %d ms\00", align 1
@rist_thread = common dso_local global i32 0, align 4
@VLC_THREAD_PRIORITY_INPUT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [32 x i8] c"Failed to create worker thread.\00", align 1
@BlockRIST = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_17__, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %8, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %5, align 8
  %9 = bitcast %struct.TYPE_17__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.TYPE_19__* @vlc_obj_calloc(i32* %10, i32 1, i32 72)
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %5, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %13 = icmp eq %struct.TYPE_19__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %18, i32* %2, align 4
  br label %215

19:                                               ; preds = %1
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 3
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %22, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 11
  %25 = call i32 @vlc_mutex_init(i32* %24)
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @vlc_UrlParse(%struct.TYPE_17__* %6, i32 %28)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %37

31:                                               ; preds = %19
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (%struct.TYPE_18__*, i8*, ...) @msg_Err(%struct.TYPE_18__* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %211

37:                                               ; preds = %19
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @is_multicast_address(i32 %39)
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 10
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.TYPE_16__* @rist_udp_receiver(%struct.TYPE_18__* %43, %struct.TYPE_17__* %6, i32 %46)
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 5
  store %struct.TYPE_16__* %47, %struct.TYPE_16__** %49, align 8
  %50 = call i32 @vlc_UrlClean(%struct.TYPE_17__* %6)
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 5
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = icmp ne %struct.TYPE_16__* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %37
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (%struct.TYPE_18__*, i8*, ...) @msg_Err(%struct.TYPE_18__* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %211

61:                                               ; preds = %37
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %65 = call i8* @var_InheritBool(%struct.TYPE_18__* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %70 = call i8* @var_InheritBool(%struct.TYPE_18__* %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 9
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 9
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %61
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 2
  store i32 1, i32* %84, align 8
  br label %88

85:                                               ; preds = %77, %61
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 2
  store i32 0, i32* %87, align 8
  br label %88

88:                                               ; preds = %85, %82
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %90 = call i8* @var_InheritInteger(%struct.TYPE_18__* %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 8
  store i8* %90, i8** %92, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %94 = call i8* @var_InheritInteger(%struct.TYPE_18__* %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 7
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %98 = call i8* @var_InheritInteger(%struct.TYPE_18__* %97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 6
  store i8* %98, i8** %100, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %102 = call i8* @var_InheritInteger(%struct.TYPE_18__* %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 5
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  store i8* %102, i8** %106, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %108 = call i8* @var_InheritInteger(%struct.TYPE_18__* %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 5
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 4
  store i8* %108, i8** %112, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %114 = call i8* @var_InheritInteger(%struct.TYPE_18__* %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 5
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 2
  store i8* %114, i8** %118, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %88
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 5
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 5
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  store i8* %128, i8** %132, align 8
  br label %140

133:                                              ; preds = %88
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %135 = call i8* @var_InheritInteger(%struct.TYPE_18__* %134, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 5
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  store i8* %135, i8** %139, align 8
  br label %140

140:                                              ; preds = %133, %123
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 5
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @msg_Info(%struct.TYPE_18__* %141, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8* %146)
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 5
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 2
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @VLC_TICK_FROM_MS(i8* %152)
  %154 = call i8* @rtp_get_ts(i32 %153)
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 5
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 3
  store i8* %154, i8** %158, align 8
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 5
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @VLC_TICK_FROM_MS(i8* %163)
  %165 = call i8* @rtp_get_ts(i32 %164)
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 5
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 1
  store i8* %165, i8** %169, align 8
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 5
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @VLC_TICK_FROM_MS(i8* %174)
  %176 = call i8* @rtp_get_ts(i32 %175)
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 5
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 0
  store i8* %176, i8** %180, align 8
  %181 = call i32* (...) @block_FifoNew()
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 4
  store i32* %181, i32** %183, align 8
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 4
  %186 = load i32*, i32** %185, align 8
  %187 = icmp eq i32* %186, null
  %188 = zext i1 %187 to i32
  %189 = call i64 @unlikely(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %140
  br label %211

192:                                              ; preds = %140
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 3
  %195 = load i32, i32* @rist_thread, align 4
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %197 = load i32, i32* @VLC_THREAD_PRIORITY_INPUT, align 4
  %198 = call i64 @vlc_clone(i32* %194, i32 %195, %struct.TYPE_18__* %196, i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %192
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %202 = call i32 (%struct.TYPE_18__*, i8*, ...) @msg_Err(%struct.TYPE_18__* %201, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  br label %211

203:                                              ; preds = %192
  %204 = load i32, i32* @BlockRIST, align 4
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  %207 = load i32, i32* @Control, align 4
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  store i32 %207, i32* %209, align 8
  %210 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %210, i32* %2, align 4
  br label %215

211:                                              ; preds = %200, %191, %55, %31
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %213 = call i32 @Clean(%struct.TYPE_18__* %212)
  %214 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %214, i32* %2, align 4
  br label %215

215:                                              ; preds = %211, %203, %17
  %216 = load i32, i32* %2, align 4
  ret i32 %216
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_19__* @vlc_obj_calloc(i32*, i32, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @vlc_mutex_init(i32*) #2

declare dso_local i32 @vlc_UrlParse(%struct.TYPE_17__*, i32) #2

declare dso_local i32 @msg_Err(%struct.TYPE_18__*, i8*, ...) #2

declare dso_local i32 @is_multicast_address(i32) #2

declare dso_local %struct.TYPE_16__* @rist_udp_receiver(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #2

declare dso_local i32 @vlc_UrlClean(%struct.TYPE_17__*) #2

declare dso_local i8* @var_InheritBool(%struct.TYPE_18__*, i8*) #2

declare dso_local i8* @var_InheritInteger(%struct.TYPE_18__*, i8*) #2

declare dso_local i32 @msg_Info(%struct.TYPE_18__*, i8*, i8*) #2

declare dso_local i8* @rtp_get_ts(i32) #2

declare dso_local i32 @VLC_TICK_FROM_MS(i8*) #2

declare dso_local i32* @block_FifoNew(...) #2

declare dso_local i64 @vlc_clone(i32*, i32, %struct.TYPE_18__*, i32) #2

declare dso_local i32 @Clean(%struct.TYPE_18__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

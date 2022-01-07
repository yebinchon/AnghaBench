; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_dv.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_dv.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, i32, %struct.TYPE_15__*, %struct.TYPE_12__, i32*, i64, i32*, i64, i32, i32* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_13__*, i32*, i32** }
%struct.TYPE_12__ = type { i32, i32 }
%struct.raw1394_portinfo = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"opening device\00", align 1
@Block = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"failed to open a Firewire (IEEE1394) connection\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"no Digital Video Control device found\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"no Digital Video device found\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"failed to get port info\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"failed to set port info\00", align 1
@Raw1394Handler = common dso_local global i32 0, align 4
@ISOCHRONOUS_QUEUE_LENGTH = common dso_local global i32 0, align 4
@ISOCHRONOUS_MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@RAW1394_DMA_PACKET_PER_BUFFER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"failed to init isochronous recv\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"failed to create event thread struct\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@Raw1394EventThread = common dso_local global i32 0, align 4
@VLC_THREAD_PRIORITY_OUTPUT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"failed to clone event thread\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca [16 x %struct.raw1394_portinfo], align 16
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %4, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = call i32 @msg_Dbg(%struct.TYPE_13__* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @Block, align 4
  %12 = load i32, i32* @Control, align 4
  %13 = call i32 @ACCESS_SET_CALLBACKS(i32* null, i32 %11, i32 %12, i32* null)
  %14 = load i32*, i32** %3, align 8
  %15 = call %struct.TYPE_14__* @vlc_obj_malloc(i32* %14, i32 88)
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %5, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %17, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = icmp ne %struct.TYPE_14__* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %21, i32* %2, align 4
  br label %225

22:                                               ; preds = %1
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 6
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 8
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 2
  store i32 63, i32* %32, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 5
  store i32* null, i32** %34, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 7
  store i32* null, i32** %36, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 10
  store i32* null, i32** %38, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 3
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %40, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 9
  %43 = call i32 @vlc_mutex_init(i32* %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 6
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 8
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @DiscoverAVC(%struct.TYPE_13__* %44, i64* %46, i64 %49)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %22
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %59 = call i32 @msg_Err(%struct.TYPE_13__* %58, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @Close(i32* %60)
  %62 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %62, i32* %2, align 4
  br label %225

63:                                               ; preds = %22
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = call i32* @AVCOpen(%struct.TYPE_13__* %64, i64 %67)
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 7
  store i32* %68, i32** %70, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 7
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %63
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %77 = call i32 @msg_Err(%struct.TYPE_13__* %76, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @Close(i32* %78)
  %80 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %80, i32* %2, align 4
  br label %225

81:                                               ; preds = %63
  %82 = call i32* (...) @raw1394_new_handle()
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 5
  store i32* %82, i32** %84, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 5
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %81
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %91 = call i32 @msg_Err(%struct.TYPE_13__* %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @Close(i32* %92)
  %94 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %94, i32* %2, align 4
  br label %225

95:                                               ; preds = %81
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 5
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds [16 x %struct.raw1394_portinfo], [16 x %struct.raw1394_portinfo]* %6, i64 0, i64 0
  %100 = call i64 @raw1394_get_port_info(i32* %98, %struct.raw1394_portinfo* %99, i32 16)
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %95
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %109 = call i32 @msg_Err(%struct.TYPE_13__* %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 @Close(i32* %110)
  %112 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %112, i32* %2, align 4
  br label %225

113:                                              ; preds = %95
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 5
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @raw1394_set_port(i32* %116, i64 %119)
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %113
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %124 = call i32 @msg_Err(%struct.TYPE_13__* %123, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @Close(i32* %125)
  %127 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %127, i32* %2, align 4
  br label %225

128:                                              ; preds = %113
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 5
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* @Raw1394Handler, align 4
  %133 = load i32, i32* @ISOCHRONOUS_QUEUE_LENGTH, align 4
  %134 = load i32, i32* @ISOCHRONOUS_MAX_PACKET_SIZE, align 4
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @RAW1394_DMA_PACKET_PER_BUFFER, align 4
  %139 = call i64 @raw1394_iso_recv_init(i32* %131, i32 %132, i32 %133, i32 %134, i32 %137, i32 %138, i32 -1)
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %128
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %143 = call i32 @msg_Err(%struct.TYPE_13__* %142, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %144 = load i32*, i32** %3, align 8
  %145 = call i32 @Close(i32* %144)
  %146 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %146, i32* %2, align 4
  br label %225

147:                                              ; preds = %128
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 5
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %152 = call i32 @raw1394_set_userdata(i32* %150, %struct.TYPE_13__* %151)
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 5
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @raw1394_iso_recv_start(i32* %155, i32 -1, i32 -1, i32 0)
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 5
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @raw1394_get_fd(i32* %159)
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  store i32 %160, i32* %163, align 4
  %164 = load i32, i32* @POLLIN, align 4
  %165 = load i32, i32* @POLLPRI, align 4
  %166 = or i32 %164, %165
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  store i32 %166, i32* %169, align 8
  %170 = call %struct.TYPE_15__* @calloc(i32 1, i32 32)
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 3
  store %struct.TYPE_15__* %170, %struct.TYPE_15__** %172, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 3
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %174, align 8
  %176 = icmp ne %struct.TYPE_15__* %175, null
  br i1 %176, label %183, label %177

177:                                              ; preds = %147
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %179 = call i32 @msg_Err(%struct.TYPE_13__* %178, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %180 = load i32*, i32** %3, align 8
  %181 = call i32 @Close(i32* %180)
  %182 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %182, i32* %2, align 4
  br label %225

183:                                              ; preds = %147
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 3
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 3
  store i32* null, i32** %187, align 8
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 3
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 3
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 3
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 4
  store i32** %191, i32*** %195, align 8
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 3
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 2
  store %struct.TYPE_13__* %196, %struct.TYPE_13__** %200, align 8
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 3
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 1
  %205 = call i32 @vlc_mutex_init(i32* %204)
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 3
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 0
  %210 = load i32, i32* @Raw1394EventThread, align 4
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 3
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %212, align 8
  %214 = load i32, i32* @VLC_THREAD_PRIORITY_OUTPUT, align 4
  %215 = call i64 @vlc_clone(i32* %209, i32 %210, %struct.TYPE_15__* %213, i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %183
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %219 = call i32 @msg_Err(%struct.TYPE_13__* %218, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %220 = load i32*, i32** %3, align 8
  %221 = call i32 @Close(i32* %220)
  %222 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %222, i32* %2, align 4
  br label %225

223:                                              ; preds = %183
  %224 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %224, i32* %2, align 4
  br label %225

225:                                              ; preds = %223, %217, %177, %141, %122, %107, %89, %75, %57, %20
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @ACCESS_SET_CALLBACKS(i32*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_14__* @vlc_obj_malloc(i32*, i32) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i64 @DiscoverAVC(%struct.TYPE_13__*, i64*, i64) #1

declare dso_local i32 @msg_Err(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @Close(i32*) #1

declare dso_local i32* @AVCOpen(%struct.TYPE_13__*, i64) #1

declare dso_local i32* @raw1394_new_handle(...) #1

declare dso_local i64 @raw1394_get_port_info(i32*, %struct.raw1394_portinfo*, i32) #1

declare dso_local i64 @raw1394_set_port(i32*, i64) #1

declare dso_local i64 @raw1394_iso_recv_init(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @raw1394_set_userdata(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @raw1394_iso_recv_start(i32*, i32, i32, i32) #1

declare dso_local i32 @raw1394_get_fd(i32*) #1

declare dso_local %struct.TYPE_15__* @calloc(i32, i32) #1

declare dso_local i64 @vlc_clone(i32*, i32, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

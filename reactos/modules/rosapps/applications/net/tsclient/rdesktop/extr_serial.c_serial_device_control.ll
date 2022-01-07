; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_serial.c_serial_device_control.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_serial.c_serial_device_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termios* }
%struct.termios = type { i32 }

@FILE_DEVICE_SERIAL_PORT = common dso_local global i32 0, align 4
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"serial_ioctl -> SERIAL_SET_BAUD_RATE %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"serial_ioctl -> SERIAL_GET_BAUD_RATE %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"serial_ioctl -> SERIAL_SET_QUEUE_SIZE in %d out %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"serial_ioctl -> SERIAL_SET_LINE_CONTROL stop %d parity %d word %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"serial_ioctl -> SERIAL_GET_LINE_CONTROL\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"serial_ioctl -> SERIAL_IMMEDIATE_CHAR\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"serial_ioctl -> SERIAL_CONFIG_SIZE\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"serial_ioctl -> SERIAL_GET_CHARS\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"serial_ioctl -> SERIAL_SET_CHARS\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"serial_ioctl -> SERIAL_GET_HANDFLOW\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"serial_ioctl -> SERIAL_SET_HANDFLOW %x %x %x %x\0A\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"serial_ioctl -> SERIAL_SET_TIMEOUTS read timeout %d %d %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"serial_ioctl -> SERIAL_GET_TIMEOUTS read timeout %d %d %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"serial_ioctl -> SERIAL_GET_WAIT_MASK %X\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"serial_ioctl -> SERIAL_SET_WAIT_MASK %X\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"serial_ioctl -> SERIAL_SET_DTR\0A\00", align 1
@TIOCMGET = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCMSET = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [32 x i8] c"serial_ioctl -> SERIAL_CLR_DTR\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"serial_ioctl -> SERIAL_SET_RTS\0A\00", align 1
@TIOCM_RTS = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [32 x i8] c"serial_ioctl -> SERIAL_CLR_RTS\0A\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"serial_ioctl -> SERIAL_GET_MODEMSTATUS %X\0A\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"serial_ioctl -> SERIAL_GET_COMMSTATUS in queue %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [52 x i8] c"serial_ioctl -> SERIAL_GET_COMMSTATUS out queue %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"serial_ioctl -> SERIAL_PURGE purge_mask %X\0A\00", align 1
@SERIAL_PURGE_TXCLEAR = common dso_local global i32 0, align 4
@TCOFLUSH = common dso_local global i32 0, align 4
@SERIAL_PURGE_RXCLEAR = common dso_local global i32 0, align 4
@TCIFLUSH = common dso_local global i32 0, align 4
@SERIAL_PURGE_TXABORT = common dso_local global i32 0, align 4
@STATUS_CANCELLED = common dso_local global i32 0, align 4
@SERIAL_PURGE_RXABORT = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [40 x i8] c"serial_ioctl -> SERIAL_WAIT_ON_MASK %X\0A\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"WAIT end  event = %x\0A\00", align 1
@STATUS_PENDING = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [37 x i8] c"serial_ioctl -> SERIAL_SET_BREAK_ON\0A\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"serial_ioctl -> SERIAL_RESET_DEVICE\0A\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"serial_ioctl -> SERIAL_SET_BREAK_OFF\0A\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"serial_ioctl -> SERIAL_SET_XOFF\0A\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"serial_ioctl -> SERIAL_SET_XON\0A\00", align 1
@TCION = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [17 x i8] c"SERIAL IOCTL %d\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SERIAL_MS_CAR = common dso_local global i32 0, align 4
@SERIAL_MS_CTS = common dso_local global i32 0, align 4
@SERIAL_MS_DSR = common dso_local global i32 0, align 4
@SERIAL_MS_DTR = common dso_local global i32 0, align 4
@SERIAL_MS_RNG = common dso_local global i32 0, align 4
@SERIAL_MS_RTS = common dso_local global i32 0, align 4
@TIOCINQ = common dso_local global i32 0, align 4
@TIOCM_CAR = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@TIOCM_RNG = common dso_local global i32 0, align 4
@TIOCOUTQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32)* @serial_device_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_device_control(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca %struct.termios*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = ashr i32 %19, 16
  %21 = load i32, i32* @FILE_DEVICE_SERIAL_PORT, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %24, i32* %6, align 4
  br label %515

25:                                               ; preds = %5
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.TYPE_5__* @get_serial_info(i32* %26, i32 %27)
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %17, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 20
  %31 = load %struct.termios*, %struct.termios** %30, align 8
  store %struct.termios* %31, %struct.termios** %18, align 8
  %32 = load i32, i32* %9, align 4
  %33 = ashr i32 %32, 2
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 4095
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  switch i32 %36, label %509 [
    i32 141, label %37
    i32 152, label %52
    i32 134, label %64
    i32 135, label %84
    i32 148, label %115
    i32 144, label %132
    i32 153, label %140
    i32 151, label %144
    i32 138, label %151
    i32 149, label %161
    i32 136, label %186
    i32 132, label %225
    i32 146, label %263
    i32 145, label %301
    i32 131, label %313
    i32 137, label %325
    i32 155, label %338
    i32 133, label %352
    i32 154, label %365
    i32 147, label %379
    i32 150, label %387
    i32 143, label %418
    i32 128, label %471
    i32 139, label %494
    i32 142, label %498
    i32 140, label %500
    i32 130, label %502
    i32 129, label %504
  ]

37:                                               ; preds = %25
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @in_uint32_le(i32 %38, i32 %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @set_termios(%struct.TYPE_5__* %43, i32 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @DEBUG_SERIAL(i8* %50)
  br label %513

52:                                               ; preds = %25
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @out_uint32_le(i32 %53, i32 %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 @DEBUG_SERIAL(i8* %62)
  br label %513

64:                                               ; preds = %25
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @in_uint32_le(i32 %65, i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @in_uint32_le(i32 %70, i32 %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 @DEBUG_SERIAL(i8* %82)
  br label %513

84:                                               ; preds = %25
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 19
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @in_uint8(i32 %85, i32 %88)
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 18
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @in_uint8(i32 %90, i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 17
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @in_uint8(i32 %95, i32 %98)
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @set_termios(%struct.TYPE_5__* %100, i32 %101)
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 19
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 18
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 17
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i8*
  %114 = call i32 @DEBUG_SERIAL(i8* %113)
  br label %513

115:                                              ; preds = %25
  %116 = call i32 @DEBUG_SERIAL(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 19
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @out_uint8(i32 %117, i32 %120)
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 18
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @out_uint8(i32 %122, i32 %125)
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 17
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @out_uint8(i32 %127, i32 %130)
  br label %513

132:                                              ; preds = %25
  %133 = call i32 @DEBUG_SERIAL(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %16, align 4
  %136 = call i32 @in_uint8(i32 %134, i32 %135)
  %137 = load i32*, i32** %7, align 8
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @serial_write(i32* %137, i32 %138, i32* %16, i32 1, i32 0, i32* %14)
  br label %513

140:                                              ; preds = %25
  %141 = call i32 @DEBUG_SERIAL(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @out_uint32_le(i32 %142, i32 0)
  br label %513

144:                                              ; preds = %25
  %145 = call i32 @DEBUG_SERIAL(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %146 = load i32, i32* %11, align 4
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 16
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @out_uint8a(i32 %146, i32 %149, i32 6)
  br label %513

151:                                              ; preds = %25
  %152 = call i32 @DEBUG_SERIAL(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %153 = load i32, i32* %10, align 4
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 16
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @in_uint8a(i32 %153, i32 %156, i32 6)
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @set_termios(%struct.TYPE_5__* %158, i32 %159)
  br label %513

161:                                              ; preds = %25
  %162 = call i32 @DEBUG_SERIAL(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @get_termios(%struct.TYPE_5__* %163, i32 %164)
  %166 = load i32, i32* %11, align 4
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @out_uint32_le(i32 %166, i32 %169)
  %171 = load i32, i32* %11, align 4
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @out_uint32_le(i32 %171, i32 %174)
  %176 = load i32, i32* %11, align 4
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @out_uint32_le(i32 %176, i32 %179)
  %181 = load i32, i32* %11, align 4
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @out_uint32_le(i32 %181, i32 %184)
  br label %513

186:                                              ; preds = %25
  %187 = load i32, i32* %10, align 4
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @in_uint32_le(i32 %187, i32 %190)
  %192 = load i32, i32* %10, align 4
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @in_uint32_le(i32 %192, i32 %195)
  %197 = load i32, i32* %10, align 4
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @in_uint32_le(i32 %197, i32 %200)
  %202 = load i32, i32* %10, align 4
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @in_uint32_le(i32 %202, i32 %205)
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = inttoptr i64 %219 to i8*
  %221 = call i32 @DEBUG_SERIAL(i8* %220)
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %223 = load i32, i32* %8, align 4
  %224 = call i32 @set_termios(%struct.TYPE_5__* %222, i32 %223)
  br label %513

225:                                              ; preds = %25
  %226 = load i32, i32* %10, align 4
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 7
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @in_uint32(i32 %226, i32 %229)
  %231 = load i32, i32* %10, align 4
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 8
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @in_uint32(i32 %231, i32 %234)
  %236 = load i32, i32* %10, align 4
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 9
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @in_uint32(i32 %236, i32 %239)
  %241 = load i32, i32* %10, align 4
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 10
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @in_uint32(i32 %241, i32 %244)
  %246 = load i32, i32* %10, align 4
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 11
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @in_uint32(i32 %246, i32 %249)
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 7
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 8
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 9
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = inttoptr i64 %260 to i8*
  %262 = call i32 @DEBUG_SERIAL(i8* %261)
  br label %513

263:                                              ; preds = %25
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 7
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 8
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 9
  %272 = load i32, i32* %271, align 4
  %273 = sext i32 %272 to i64
  %274 = inttoptr i64 %273 to i8*
  %275 = call i32 @DEBUG_SERIAL(i8* %274)
  %276 = load i32, i32* %11, align 4
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 7
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @out_uint32(i32 %276, i32 %279)
  %281 = load i32, i32* %11, align 4
  %282 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 8
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @out_uint32(i32 %281, i32 %284)
  %286 = load i32, i32* %11, align 4
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 9
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @out_uint32(i32 %286, i32 %289)
  %291 = load i32, i32* %11, align 4
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 10
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @out_uint32(i32 %291, i32 %294)
  %296 = load i32, i32* %11, align 4
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 11
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @out_uint32(i32 %296, i32 %299)
  br label %513

301:                                              ; preds = %25
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 12
  %304 = load i32, i32* %303, align 8
  %305 = sext i32 %304 to i64
  %306 = inttoptr i64 %305 to i8*
  %307 = call i32 @DEBUG_SERIAL(i8* %306)
  %308 = load i32, i32* %11, align 4
  %309 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i32 0, i32 12
  %311 = load i32, i32* %310, align 8
  %312 = call i32 @out_uint32(i32 %308, i32 %311)
  br label %513

313:                                              ; preds = %25
  %314 = load i32, i32* %10, align 4
  %315 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 12
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @in_uint32(i32 %314, i32 %317)
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 12
  %321 = load i32, i32* %320, align 8
  %322 = sext i32 %321 to i64
  %323 = inttoptr i64 %322 to i8*
  %324 = call i32 @DEBUG_SERIAL(i8* %323)
  br label %513

325:                                              ; preds = %25
  %326 = call i32 @DEBUG_SERIAL(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  %327 = load i32, i32* %8, align 4
  %328 = load i32, i32* @TIOCMGET, align 4
  %329 = call i32 @ioctl(i32 %327, i32 %328, i32* %14)
  %330 = load i32, i32* @TIOCM_DTR, align 4
  %331 = load i32, i32* %14, align 4
  %332 = or i32 %331, %330
  store i32 %332, i32* %14, align 4
  %333 = load i32, i32* %8, align 4
  %334 = load i32, i32* @TIOCMSET, align 4
  %335 = call i32 @ioctl(i32 %333, i32 %334, i32* %14)
  %336 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %337 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %336, i32 0, i32 13
  store i32 1, i32* %337, align 4
  br label %513

338:                                              ; preds = %25
  %339 = call i32 @DEBUG_SERIAL(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0))
  %340 = load i32, i32* %8, align 4
  %341 = load i32, i32* @TIOCMGET, align 4
  %342 = call i32 @ioctl(i32 %340, i32 %341, i32* %14)
  %343 = load i32, i32* @TIOCM_DTR, align 4
  %344 = xor i32 %343, -1
  %345 = load i32, i32* %14, align 4
  %346 = and i32 %345, %344
  store i32 %346, i32* %14, align 4
  %347 = load i32, i32* %8, align 4
  %348 = load i32, i32* @TIOCMSET, align 4
  %349 = call i32 @ioctl(i32 %347, i32 %348, i32* %14)
  %350 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i32 0, i32 13
  store i32 0, i32* %351, align 4
  br label %513

352:                                              ; preds = %25
  %353 = call i32 @DEBUG_SERIAL(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0))
  %354 = load i32, i32* %8, align 4
  %355 = load i32, i32* @TIOCMGET, align 4
  %356 = call i32 @ioctl(i32 %354, i32 %355, i32* %14)
  %357 = load i32, i32* @TIOCM_RTS, align 4
  %358 = load i32, i32* %14, align 4
  %359 = or i32 %358, %357
  store i32 %359, i32* %14, align 4
  %360 = load i32, i32* %8, align 4
  %361 = load i32, i32* @TIOCMSET, align 4
  %362 = call i32 @ioctl(i32 %360, i32 %361, i32* %14)
  %363 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %364 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %363, i32 0, i32 14
  store i32 1, i32* %364, align 8
  br label %513

365:                                              ; preds = %25
  %366 = call i32 @DEBUG_SERIAL(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0))
  %367 = load i32, i32* %8, align 4
  %368 = load i32, i32* @TIOCMGET, align 4
  %369 = call i32 @ioctl(i32 %367, i32 %368, i32* %14)
  %370 = load i32, i32* @TIOCM_RTS, align 4
  %371 = xor i32 %370, -1
  %372 = load i32, i32* %14, align 4
  %373 = and i32 %372, %371
  store i32 %373, i32* %14, align 4
  %374 = load i32, i32* %8, align 4
  %375 = load i32, i32* @TIOCMSET, align 4
  %376 = call i32 @ioctl(i32 %374, i32 %375, i32* %14)
  %377 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %378 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %377, i32 0, i32 14
  store i32 0, i32* %378, align 8
  br label %513

379:                                              ; preds = %25
  store i32 0, i32* %15, align 4
  %380 = load i32, i32* %15, align 4
  %381 = sext i32 %380 to i64
  %382 = inttoptr i64 %381 to i8*
  %383 = call i32 @DEBUG_SERIAL(i8* %382)
  %384 = load i32, i32* %11, align 4
  %385 = load i32, i32* %15, align 4
  %386 = call i32 @out_uint32_le(i32 %384, i32 %385)
  br label %513

387:                                              ; preds = %25
  %388 = load i32, i32* %11, align 4
  %389 = call i32 @out_uint32_le(i32 %388, i32 0)
  %390 = load i32, i32* %11, align 4
  %391 = call i32 @out_uint32_le(i32 %390, i32 0)
  store i32 0, i32* %14, align 4
  %392 = load i32, i32* %11, align 4
  %393 = load i32, i32* %14, align 4
  %394 = call i32 @out_uint32_le(i32 %392, i32 %393)
  %395 = load i32, i32* %14, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %402

397:                                              ; preds = %387
  %398 = load i32, i32* %14, align 4
  %399 = sext i32 %398 to i64
  %400 = inttoptr i64 %399 to i8*
  %401 = call i32 @DEBUG_SERIAL(i8* %400)
  br label %402

402:                                              ; preds = %397, %387
  store i32 0, i32* %14, align 4
  %403 = load i32, i32* %11, align 4
  %404 = load i32, i32* %14, align 4
  %405 = call i32 @out_uint32_le(i32 %403, i32 %404)
  %406 = load i32, i32* %14, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %413

408:                                              ; preds = %402
  %409 = load i32, i32* %14, align 4
  %410 = sext i32 %409 to i64
  %411 = inttoptr i64 %410 to i8*
  %412 = call i32 @DEBUG_SERIAL(i8* %411)
  br label %413

413:                                              ; preds = %408, %402
  %414 = load i32, i32* %11, align 4
  %415 = call i32 @out_uint8(i32 %414, i32 0)
  %416 = load i32, i32* %11, align 4
  %417 = call i32 @out_uint8(i32 %416, i32 0)
  br label %513

418:                                              ; preds = %25
  %419 = load i32, i32* %10, align 4
  %420 = load i32, i32* %13, align 4
  %421 = call i32 @in_uint32(i32 %419, i32 %420)
  %422 = load i32, i32* %13, align 4
  %423 = sext i32 %422 to i64
  %424 = inttoptr i64 %423 to i8*
  %425 = call i32 @DEBUG_SERIAL(i8* %424)
  store i32 0, i32* %12, align 4
  %426 = load i32, i32* %13, align 4
  %427 = load i32, i32* @SERIAL_PURGE_TXCLEAR, align 4
  %428 = and i32 %426, %427
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %434

430:                                              ; preds = %418
  %431 = load i32, i32* @TCOFLUSH, align 4
  %432 = load i32, i32* %12, align 4
  %433 = or i32 %432, %431
  store i32 %433, i32* %12, align 4
  br label %434

434:                                              ; preds = %430, %418
  %435 = load i32, i32* %13, align 4
  %436 = load i32, i32* @SERIAL_PURGE_RXCLEAR, align 4
  %437 = and i32 %435, %436
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %443

439:                                              ; preds = %434
  %440 = load i32, i32* @TCIFLUSH, align 4
  %441 = load i32, i32* %12, align 4
  %442 = or i32 %441, %440
  store i32 %442, i32* %12, align 4
  br label %443

443:                                              ; preds = %439, %434
  %444 = load i32, i32* %12, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %450

446:                                              ; preds = %443
  %447 = load i32, i32* %8, align 4
  %448 = load i32, i32* %12, align 4
  %449 = call i32 @tcflush(i32 %447, i32 %448)
  br label %450

450:                                              ; preds = %446, %443
  %451 = load i32, i32* %13, align 4
  %452 = load i32, i32* @SERIAL_PURGE_TXABORT, align 4
  %453 = and i32 %451, %452
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %460

455:                                              ; preds = %450
  %456 = load i32*, i32** %7, align 8
  %457 = load i32, i32* %8, align 4
  %458 = load i32, i32* @STATUS_CANCELLED, align 4
  %459 = call i32 @rdpdr_abort_io(i32* %456, i32 %457, i32 4, i32 %458)
  br label %460

460:                                              ; preds = %455, %450
  %461 = load i32, i32* %13, align 4
  %462 = load i32, i32* @SERIAL_PURGE_RXABORT, align 4
  %463 = and i32 %461, %462
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %470

465:                                              ; preds = %460
  %466 = load i32*, i32** %7, align 8
  %467 = load i32, i32* %8, align 4
  %468 = load i32, i32* @STATUS_CANCELLED, align 4
  %469 = call i32 @rdpdr_abort_io(i32* %466, i32 %467, i32 3, i32 %468)
  br label %470

470:                                              ; preds = %465, %460
  br label %513

471:                                              ; preds = %25
  %472 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %473 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %472, i32 0, i32 12
  %474 = load i32, i32* %473, align 8
  %475 = sext i32 %474 to i64
  %476 = inttoptr i64 %475 to i8*
  %477 = call i32 @DEBUG_SERIAL(i8* %476)
  %478 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %479 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %478, i32 0, i32 15
  store i32 1, i32* %479, align 4
  %480 = load i32*, i32** %7, align 8
  %481 = load i32, i32* %8, align 4
  %482 = call i32 @serial_get_event(i32* %480, i32 %481, i32* %14)
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %492

484:                                              ; preds = %471
  %485 = load i32, i32* %14, align 4
  %486 = sext i32 %485 to i64
  %487 = inttoptr i64 %486 to i8*
  %488 = call i32 @DEBUG_SERIAL(i8* %487)
  %489 = load i32, i32* %11, align 4
  %490 = load i32, i32* %14, align 4
  %491 = call i32 @out_uint32_le(i32 %489, i32 %490)
  br label %513

492:                                              ; preds = %471
  %493 = load i32, i32* @STATUS_PENDING, align 4
  store i32 %493, i32* %6, align 4
  br label %515

494:                                              ; preds = %25
  %495 = call i32 @DEBUG_SERIAL(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i64 0, i64 0))
  %496 = load i32, i32* %8, align 4
  %497 = call i32 @tcsendbreak(i32 %496, i32 0)
  br label %513

498:                                              ; preds = %25
  %499 = call i32 @DEBUG_SERIAL(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i64 0, i64 0))
  br label %513

500:                                              ; preds = %25
  %501 = call i32 @DEBUG_SERIAL(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i64 0, i64 0))
  br label %513

502:                                              ; preds = %25
  %503 = call i32 @DEBUG_SERIAL(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i64 0, i64 0))
  br label %513

504:                                              ; preds = %25
  %505 = call i32 @DEBUG_SERIAL(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0))
  %506 = load i32, i32* %8, align 4
  %507 = load i32, i32* @TCION, align 4
  %508 = call i32 @tcflow(i32 %506, i32 %507)
  br label %513

509:                                              ; preds = %25
  %510 = load i32, i32* %9, align 4
  %511 = call i32 @unimpl(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0), i32 %510)
  %512 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %512, i32* %6, align 4
  br label %515

513:                                              ; preds = %504, %502, %500, %498, %494, %484, %470, %413, %379, %365, %352, %338, %325, %313, %301, %263, %225, %186, %161, %151, %144, %140, %132, %115, %84, %64, %52, %37
  %514 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %514, i32* %6, align 4
  br label %515

515:                                              ; preds = %513, %509, %492, %23
  %516 = load i32, i32* %6, align 4
  ret i32 %516
}

declare dso_local %struct.TYPE_5__* @get_serial_info(i32*, i32) #1

declare dso_local i32 @in_uint32_le(i32, i32) #1

declare dso_local i32 @set_termios(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @DEBUG_SERIAL(i8*) #1

declare dso_local i32 @out_uint32_le(i32, i32) #1

declare dso_local i32 @in_uint8(i32, i32) #1

declare dso_local i32 @out_uint8(i32, i32) #1

declare dso_local i32 @serial_write(i32*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @out_uint8a(i32, i32, i32) #1

declare dso_local i32 @in_uint8a(i32, i32, i32) #1

declare dso_local i32 @get_termios(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @in_uint32(i32, i32) #1

declare dso_local i32 @out_uint32(i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @tcflush(i32, i32) #1

declare dso_local i32 @rdpdr_abort_io(i32*, i32, i32, i32) #1

declare dso_local i32 @serial_get_event(i32*, i32, i32*) #1

declare dso_local i32 @tcsendbreak(i32, i32) #1

declare dso_local i32 @tcflow(i32, i32) #1

declare dso_local i32 @unimpl(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_serial.c_set_termios.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_serial.c_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32*, i64, i64, %struct.termios* }
%struct.termios = type { i32, i32, i32* }

@B9600 = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@CS5 = common dso_local global i32 0, align 4
@CS6 = common dso_local global i32 0, align 4
@CS7 = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@SERIAL_CTS_HANDSHAKE = common dso_local global i32 0, align 4
@SERIAL_XON_HANDSHAKE = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@IMAXBEL = common dso_local global i32 0, align 4
@SERIAL_XOFF_HANDSHAKE = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@SERIAL_CHAR_XON = common dso_local global i64 0, align 8
@VSTART = common dso_local global i64 0, align 8
@SERIAL_CHAR_XOFF = common dso_local global i64 0, align 8
@VSTOP = common dso_local global i64 0, align 8
@SERIAL_CHAR_EOF = common dso_local global i64 0, align 8
@VEOF = common dso_local global i64 0, align 8
@SERIAL_CHAR_BREAK = common dso_local global i64 0, align 8
@VINTR = common dso_local global i64 0, align 8
@SERIAL_CHAR_ERROR = common dso_local global i64 0, align 8
@VKILL = common dso_local global i64 0, align 8
@TCSANOW = common dso_local global i32 0, align 4
@B110 = common dso_local global i32 0, align 4
@B115200 = common dso_local global i32 0, align 4
@B1200 = common dso_local global i32 0, align 4
@B134 = common dso_local global i32 0, align 4
@B150 = common dso_local global i32 0, align 4
@B1800 = common dso_local global i32 0, align 4
@B19200 = common dso_local global i32 0, align 4
@B2400 = common dso_local global i32 0, align 4
@B300 = common dso_local global i32 0, align 4
@B38400 = common dso_local global i32 0, align 4
@B4800 = common dso_local global i32 0, align 4
@B57600 = common dso_local global i32 0, align 4
@B600 = common dso_local global i32 0, align 4
@B75 = common dso_local global i32 0, align 4
@CBAUD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_termios(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.termios*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 9
  %9 = load %struct.termios*, %struct.termios** %8, align 8
  store %struct.termios* %9, %struct.termios** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %13 [
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @B9600, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %13
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 9
  %18 = load %struct.termios*, %struct.termios** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @cfsetispeed(%struct.termios* %18, i32 %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 9
  %23 = load %struct.termios*, %struct.termios** %22, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load i32, i32* %5, align 4
  br label %31

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %33 = call i32 @cfsetospeed(%struct.termios* %23, i32 %32)
  %34 = load i32, i32* @CSTOPB, align 4
  %35 = load i32, i32* @PARENB, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @PARODD, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @CSIZE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @CRTSCTS, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load %struct.termios*, %struct.termios** %6, align 8
  %45 = getelementptr inbounds %struct.termios, %struct.termios* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %57 [
    i32 128, label %51
  ]

51:                                               ; preds = %31
  %52 = load i32, i32* @CSTOPB, align 4
  %53 = load %struct.termios*, %struct.termios** %6, align 8
  %54 = getelementptr inbounds %struct.termios, %struct.termios* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %64

57:                                               ; preds = %31
  %58 = load i32, i32* @CSTOPB, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.termios*, %struct.termios** %6, align 8
  %61 = getelementptr inbounds %struct.termios, %struct.termios* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %57, %51
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %91 [
    i32 131, label %68
    i32 129, label %74
    i32 130, label %82
  ]

68:                                               ; preds = %64
  %69 = load i32, i32* @PARENB, align 4
  %70 = load %struct.termios*, %struct.termios** %6, align 8
  %71 = getelementptr inbounds %struct.termios, %struct.termios* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %91

74:                                               ; preds = %64
  %75 = load i32, i32* @PARENB, align 4
  %76 = load i32, i32* @PARODD, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.termios*, %struct.termios** %6, align 8
  %79 = getelementptr inbounds %struct.termios, %struct.termios* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %91

82:                                               ; preds = %64
  %83 = load i32, i32* @PARENB, align 4
  %84 = load i32, i32* @PARODD, align 4
  %85 = or i32 %83, %84
  %86 = xor i32 %85, -1
  %87 = load %struct.termios*, %struct.termios** %6, align 8
  %88 = getelementptr inbounds %struct.termios, %struct.termios* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %64, %82, %74, %68
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  switch i32 %94, label %113 [
    i32 5, label %95
    i32 6, label %101
    i32 7, label %107
  ]

95:                                               ; preds = %91
  %96 = load i32, i32* @CS5, align 4
  %97 = load %struct.termios*, %struct.termios** %6, align 8
  %98 = getelementptr inbounds %struct.termios, %struct.termios* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %119

101:                                              ; preds = %91
  %102 = load i32, i32* @CS6, align 4
  %103 = load %struct.termios*, %struct.termios** %6, align 8
  %104 = getelementptr inbounds %struct.termios, %struct.termios* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %119

107:                                              ; preds = %91
  %108 = load i32, i32* @CS7, align 4
  %109 = load %struct.termios*, %struct.termios** %6, align 8
  %110 = getelementptr inbounds %struct.termios, %struct.termios* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %119

113:                                              ; preds = %91
  %114 = load i32, i32* @CS8, align 4
  %115 = load %struct.termios*, %struct.termios** %6, align 8
  %116 = getelementptr inbounds %struct.termios, %struct.termios* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %113, %107, %101, %95
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @SERIAL_CTS_HANDSHAKE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %119
  %127 = load i32, i32* @CRTSCTS, align 4
  %128 = load %struct.termios*, %struct.termios** %6, align 8
  %129 = getelementptr inbounds %struct.termios, %struct.termios* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %139

132:                                              ; preds = %119
  %133 = load i32, i32* @CRTSCTS, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.termios*, %struct.termios** %6, align 8
  %136 = getelementptr inbounds %struct.termios, %struct.termios* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %132, %126
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @SERIAL_XON_HANDSHAKE, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %139
  %147 = load i32, i32* @IXON, align 4
  %148 = load i32, i32* @IMAXBEL, align 4
  %149 = or i32 %147, %148
  %150 = load %struct.termios*, %struct.termios** %6, align 8
  %151 = getelementptr inbounds %struct.termios, %struct.termios* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %146, %139
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @SERIAL_XOFF_HANDSHAKE, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %154
  %162 = load i32, i32* @IXOFF, align 4
  %163 = load i32, i32* @IMAXBEL, align 4
  %164 = or i32 %162, %163
  %165 = load %struct.termios*, %struct.termios** %6, align 8
  %166 = getelementptr inbounds %struct.termios, %struct.termios* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %161, %154
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @SERIAL_XOFF_HANDSHAKE, align 4
  %174 = load i32, i32* @SERIAL_XON_HANDSHAKE, align 4
  %175 = or i32 %173, %174
  %176 = and i32 %172, %175
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %191

178:                                              ; preds = %169
  %179 = load i32, i32* @IXON, align 4
  %180 = xor i32 %179, -1
  %181 = load %struct.termios*, %struct.termios** %6, align 8
  %182 = getelementptr inbounds %struct.termios, %struct.termios* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, %180
  store i32 %184, i32* %182, align 4
  %185 = load i32, i32* @IXOFF, align 4
  %186 = xor i32 %185, -1
  %187 = load %struct.termios*, %struct.termios** %6, align 8
  %188 = getelementptr inbounds %struct.termios, %struct.termios* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, %186
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %178, %169
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 6
  %194 = load i32*, i32** %193, align 8
  %195 = load i64, i64* @SERIAL_CHAR_XON, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.termios*, %struct.termios** %6, align 8
  %199 = getelementptr inbounds %struct.termios, %struct.termios* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* @VSTART, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  store i32 %197, i32* %202, align 4
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 6
  %205 = load i32*, i32** %204, align 8
  %206 = load i64, i64* @SERIAL_CHAR_XOFF, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.termios*, %struct.termios** %6, align 8
  %210 = getelementptr inbounds %struct.termios, %struct.termios* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = load i64, i64* @VSTOP, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  store i32 %208, i32* %213, align 4
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 6
  %216 = load i32*, i32** %215, align 8
  %217 = load i64, i64* @SERIAL_CHAR_EOF, align 8
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.termios*, %struct.termios** %6, align 8
  %221 = getelementptr inbounds %struct.termios, %struct.termios* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  %223 = load i64, i64* @VEOF, align 8
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  store i32 %219, i32* %224, align 4
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 6
  %227 = load i32*, i32** %226, align 8
  %228 = load i64, i64* @SERIAL_CHAR_BREAK, align 8
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.termios*, %struct.termios** %6, align 8
  %232 = getelementptr inbounds %struct.termios, %struct.termios* %231, i32 0, i32 2
  %233 = load i32*, i32** %232, align 8
  %234 = load i64, i64* @VINTR, align 8
  %235 = getelementptr inbounds i32, i32* %233, i64 %234
  store i32 %230, i32* %235, align 4
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 6
  %238 = load i32*, i32** %237, align 8
  %239 = load i64, i64* @SERIAL_CHAR_ERROR, align 8
  %240 = getelementptr inbounds i32, i32* %238, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.termios*, %struct.termios** %6, align 8
  %243 = getelementptr inbounds %struct.termios, %struct.termios* %242, i32 0, i32 2
  %244 = load i32*, i32** %243, align 8
  %245 = load i64, i64* @VKILL, align 8
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  store i32 %241, i32* %246, align 4
  %247 = load i32, i32* %4, align 4
  %248 = load i32, i32* @TCSANOW, align 4
  %249 = load %struct.termios*, %struct.termios** %6, align 8
  %250 = call i32 @tcsetattr(i32 %247, i32 %248, %struct.termios* %249)
  ret void
}

declare dso_local i32 @cfsetispeed(%struct.termios*, i32) #1

declare dso_local i32 @cfsetospeed(%struct.termios*, i32) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

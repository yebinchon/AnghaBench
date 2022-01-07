; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_serial.c_serial_create.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_serial.c_serial_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i64, i64, i64, i64, i64, %struct.termios*, i32, i32, i32, i32, i32, i32 }
%struct.termios = type { i32, i32, i32, i32 }

@O_RDWR = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@STATUS_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"INFO: SERIAL %s access denied\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [105 x i8] c"INFO: SERIAL %s to %s\0AINFO: speed %u baud, stop bits %u, parity %u, word length %u bits, dtr %u, rts %u\0A\00", align 1
@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@INLCR = common dso_local global i32 0, align 4
@IGNCR = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ECHONL = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@IEXTEN = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64, i64, i64, i64, i64, i8*, i32*)* @serial_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_create(%struct.TYPE_8__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_7__*, align 8
  %20 = alloca %struct.termios*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %19, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 6
  %31 = load %struct.termios*, %struct.termios** %30, align 8
  store %struct.termios* %31, %struct.termios** %20, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @O_RDWR, align 4
  %40 = load i32, i32* @O_NOCTTY, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @O_NONBLOCK, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @open(i32 %38, i32 %43)
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %18, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %8
  %48 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %49, i32* %9, align 4
  br label %203

50:                                               ; preds = %8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %52 = load i32, i32* %18, align 4
  %53 = call i32 @get_termios(%struct.TYPE_7__* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %50
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i64, i64* %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @stdout, align 4
  %65 = call i32 @fflush(i32 %64)
  %66 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %66, i32* %9, align 4
  br label %203

67:                                               ; preds = %50
  %68 = load i32, i32* %18, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load i64, i64* %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  store i32 %68, i32* %74, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i64, i64* %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i64, i64* %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 12
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 11
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 10
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 9
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = call i32 @DEBUG_SERIAL(i8* %108)
  %110 = load i32, i32* @IGNBRK, align 4
  %111 = load i32, i32* @BRKINT, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @PARMRK, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @ISTRIP, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @INLCR, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @IGNCR, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @ICRNL, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @IXON, align 4
  %124 = or i32 %122, %123
  %125 = xor i32 %124, -1
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 6
  %128 = load %struct.termios*, %struct.termios** %127, align 8
  %129 = getelementptr inbounds %struct.termios, %struct.termios* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, %125
  store i32 %131, i32* %129, align 4
  %132 = load i32, i32* @OPOST, align 4
  %133 = xor i32 %132, -1
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 6
  %136 = load %struct.termios*, %struct.termios** %135, align 8
  %137 = getelementptr inbounds %struct.termios, %struct.termios* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, %133
  store i32 %139, i32* %137, align 4
  %140 = load i32, i32* @ECHO, align 4
  %141 = load i32, i32* @ECHONL, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @ICANON, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @ISIG, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @IEXTEN, align 4
  %148 = or i32 %146, %147
  %149 = xor i32 %148, -1
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 6
  %152 = load %struct.termios*, %struct.termios** %151, align 8
  %153 = getelementptr inbounds %struct.termios, %struct.termios* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, %149
  store i32 %155, i32* %153, align 4
  %156 = load i32, i32* @CSIZE, align 4
  %157 = load i32, i32* @PARENB, align 4
  %158 = or i32 %156, %157
  %159 = xor i32 %158, -1
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 6
  %162 = load %struct.termios*, %struct.termios** %161, align 8
  %163 = getelementptr inbounds %struct.termios, %struct.termios* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, %159
  store i32 %165, i32* %163, align 4
  %166 = load i32, i32* @CS8, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 6
  %169 = load %struct.termios*, %struct.termios** %168, align 8
  %170 = getelementptr inbounds %struct.termios, %struct.termios* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %166
  store i32 %172, i32* %170, align 4
  %173 = load i32, i32* %18, align 4
  %174 = load i32, i32* @TCSANOW, align 4
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 6
  %177 = load %struct.termios*, %struct.termios** %176, align 8
  %178 = call i32 @tcsetattr(i32 %173, i32 %174, %struct.termios* %177)
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 5
  store i64 0, i64* %180, align 8
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 4
  store i64 0, i64* %182, align 8
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 3
  store i64 0, i64* %184, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 2
  store i64 0, i64* %186, align 8
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  store i64 0, i64* %188, align 8
  %189 = load i32, i32* %18, align 4
  %190 = load i32*, i32** %17, align 8
  store i32 %189, i32* %190, align 4
  %191 = load i32*, i32** %17, align 8
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @F_SETFL, align 4
  %194 = load i32, i32* @O_NONBLOCK, align 4
  %195 = call i32 @fcntl(i32 %192, i32 %193, i32 %194)
  %196 = icmp eq i32 %195, -1
  br i1 %196, label %197, label %199

197:                                              ; preds = %67
  %198 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %199

199:                                              ; preds = %197, %67
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  store i32 5, i32* %201, align 8
  %202 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %202, i32* %9, align 4
  br label %203

203:                                              ; preds = %199, %55, %47
  %204 = load i32, i32* %9, align 4
  ret i32 %204
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @get_termios(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @DEBUG_SERIAL(i8*) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

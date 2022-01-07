; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/mms/extr_mmstu.c_mms_ParsePacket.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/mms/extr_mmstu.c_mms_ParsePacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32*, i64, i32*, i64, i64 }

@.str = private unnamed_addr constant [37 x i8] c"truncated packet (header incomplete)\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"receive MMS UDP pair timing\00", align 1
@MMS_PACKET_UDP_TIMING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"incorrect Packet Id Type (0x%x)\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@MMS_PACKET_HEADER = common dso_local global i32 0, align 4
@MMS_PACKET_MEDIA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i64, i64*)* @mms_ParsePacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mms_ParsePacket(%struct.TYPE_5__* %0, i32* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %10, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64*, i64** %9, align 8
  store i64 %18, i64* %19, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ule i64 %20, 8
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = call i32 (%struct.TYPE_5__*, i8*, ...) @msg_Warn(%struct.TYPE_5__* %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %161

25:                                               ; preds = %4
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @GetDWLE(i32* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 6
  %33 = call i64 @GetWLE(i32* %32)
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %25
  %38 = load i64, i64* %12, align 8
  %39 = icmp ule i64 %38, 8
  br i1 %39, label %40, label %42

40:                                               ; preds = %37, %25
  %41 = load i64*, i64** %9, align 8
  store i64 0, i64* %41, align 8
  store i32 -1, i32* %5, align 4
  br label %161

42:                                               ; preds = %37
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i64, i64* %12, align 8
  %48 = load i64*, i64** %9, align 8
  store i64 %47, i64* %48, align 8
  br label %49

49:                                               ; preds = %46, %42
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %51, 255
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = call i32 (%struct.TYPE_5__*, i8*, ...) @msg_Warn(%struct.TYPE_5__* %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @MMS_PACKET_UDP_TIMING, align 4
  store i32 %56, i32* %5, align 4
  br label %161

57:                                               ; preds = %50
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %64, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 (%struct.TYPE_5__*, i8*, ...) @msg_Warn(%struct.TYPE_5__* %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  store i32 -1, i32* %5, align 4
  br label %161

73:                                               ; preds = %63, %57
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %73
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %126

90:                                               ; preds = %80
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %12, align 8
  %98 = add i64 %96, %97
  %99 = sub i64 %98, 8
  %100 = call i32* @realloc(i32* %93, i64 %99)
  store i32* %100, i32** %14, align 8
  %101 = load i32*, i32** %14, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %90
  %104 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %104, i32* %5, align 4
  br label %161

105:                                              ; preds = %90
  %106 = load i32*, i32** %14, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32*, i32** %7, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 8
  %113 = load i64, i64* %12, align 8
  %114 = sub i64 %113, 8
  %115 = call i32 @memcpy(i32* %110, i32* %112, i64 %114)
  %116 = load i32*, i32** %14, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  store i32* %116, i32** %118, align 8
  %119 = load i64, i64* %12, align 8
  %120 = sub i64 %119, 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = add i64 %123, %120
  store i64 %124, i64* %122, align 8
  %125 = load i32, i32* @MMS_PACKET_HEADER, align 4
  store i32 %125, i32* %5, align 4
  br label %161

126:                                              ; preds = %80
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 5
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @free(i32* %129)
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 6
  store i64 0, i64* %132, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 7
  store i64 0, i64* %134, align 8
  %135 = load i64, i64* %12, align 8
  %136 = sub i64 %135, 8
  %137 = call i32* @malloc(i64 %136)
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 5
  store i32* %137, i32** %139, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 5
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %126
  %145 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %145, i32* %5, align 4
  br label %161

146:                                              ; preds = %126
  %147 = load i64, i64* %12, align 8
  %148 = sub i64 %147, 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 6
  store i64 %148, i64* %150, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 5
  %153 = load i32*, i32** %152, align 8
  %154 = load i32*, i32** %7, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 6
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @memcpy(i32* %153, i32* %155, i64 %158)
  %160 = load i32, i32* @MMS_PACKET_MEDIA, align 4
  store i32 %160, i32* %5, align 4
  br label %161

161:                                              ; preds = %146, %144, %105, %103, %69, %53, %40, %22
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local i32 @msg_Warn(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @GetDWLE(i32*) #1

declare dso_local i64 @GetWLE(i32*) #1

declare dso_local i32* @realloc(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

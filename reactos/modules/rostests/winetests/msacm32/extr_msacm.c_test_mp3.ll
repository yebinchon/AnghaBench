; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msacm32/extr_msacm.c_test_mp3.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msacm32/extr_msacm.c_test_mp3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__, i8*, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i64 }

@WAVE_FORMAT_MPEGLAYER3 = common dso_local global i32 0, align 4
@MPEGLAYER3_ID_MPEG = common dso_local global i8* null, align 8
@WAVE_FORMAT_PCM = common dso_local global i32 0, align 4
@ACMERR_NOTPOSSIBLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"expected error ACMERR_NOTPOSSIBLE, got 0x%x\0A\00", align 1
@MMSYSERR_NOERROR = common dso_local global i64 0, align 8
@MPEGLAYER3_WFX_EXTRA_BYTES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"failed with error 0x%x\0A\00", align 1
@ACM_STREAMSIZEF_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_mp3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mp3() #0 {
  %1 = alloca %struct.TYPE_8__, align 8
  %2 = alloca %struct.TYPE_7__, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = load i32, i32* @WAVE_FORMAT_MPEGLAYER3, align 4
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 6
  store i32 %6, i32* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 11025, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 5
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  store i32 576, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  store i32 2000, i32* %18, align 4
  %19 = load i8*, i8** @MPEGLAYER3_ID_MPEG, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 3
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  store i32 576, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 6
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @WAVE_FORMAT_PCM, align 4
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 5
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i32 11025, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i32 16, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  store i32 1, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %32, %34
  %36 = sdiv i32 %35, 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %39, %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 4
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = bitcast %struct.TYPE_8__* %1 to %struct.TYPE_7__*
  %47 = call i64 @acmStreamOpen(i32* %3, i32* null, %struct.TYPE_7__* %46, %struct.TYPE_7__* %2, i32* null, i32 0, i32 0, i32 0)
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @ACMERR_NOTPOSSIBLE, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %52)
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %0
  %58 = load i32, i32* %3, align 4
  %59 = call i64 @acmStreamClose(i32 %58, i32 0)
  br label %60

60:                                               ; preds = %57, %0
  %61 = load i64, i64* @MPEGLAYER3_WFX_EXTRA_BYTES, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  store i64 %61, i64* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 3
  store i8* null, i8** %64, align 8
  %65 = bitcast %struct.TYPE_8__* %1 to %struct.TYPE_7__*
  %66 = call i64 @acmStreamOpen(i32* %3, i32* null, %struct.TYPE_7__* %65, %struct.TYPE_7__* %2, i32* null, i32 0, i32 0, i32 0)
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @ACMERR_NOTPOSSIBLE, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %71)
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %60
  %77 = load i32, i32* %3, align 4
  %78 = call i64 @acmStreamClose(i32 %77, i32 0)
  br label %79

79:                                               ; preds = %76, %60
  %80 = load i8*, i8** @MPEGLAYER3_ID_MPEG, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 3
  store i8* %80, i8** %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  store i32 0, i32* %82, align 8
  %83 = bitcast %struct.TYPE_8__* %1 to %struct.TYPE_7__*
  %84 = call i64 @acmStreamOpen(i32* %3, i32* null, %struct.TYPE_7__* %83, %struct.TYPE_7__* %2, i32* null, i32 0, i32 0, i32 0)
  store i64 %84, i64* %5, align 8
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %95, label %88

88:                                               ; preds = %79
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* @ACMERR_NOTPOSSIBLE, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i64 @broken(i32 %92)
  %94 = icmp ne i64 %93, 0
  br label %95

95:                                               ; preds = %88, %79
  %96 = phi i1 [ true, %79 ], [ %94, %88 ]
  %97 = zext i1 %96 to i32
  %98 = load i64, i64* %5, align 8
  %99 = call i32 @ok(i32 %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %98)
  %100 = load i64, i64* %5, align 8
  %101 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %95
  %104 = load i32, i32* %3, align 4
  %105 = call i64 @acmStreamClose(i32 %104, i32 0)
  store i64 %105, i64* %5, align 8
  %106 = load i64, i64* %5, align 8
  %107 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i64, i64* %5, align 8
  %111 = call i32 @ok(i32 %109, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %110)
  br label %112

112:                                              ; preds = %103, %95
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  store i32 576, i32* %113, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 3
  store i32 0, i32* %115, align 4
  %116 = bitcast %struct.TYPE_8__* %1 to %struct.TYPE_7__*
  %117 = call i64 @acmStreamOpen(i32* %3, i32* null, %struct.TYPE_7__* %116, %struct.TYPE_7__* %2, i32* null, i32 0, i32 0, i32 0)
  store i64 %117, i64* %5, align 8
  %118 = load i64, i64* %5, align 8
  %119 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %128, label %121

121:                                              ; preds = %112
  %122 = load i64, i64* %5, align 8
  %123 = load i64, i64* @ACMERR_NOTPOSSIBLE, align 8
  %124 = icmp eq i64 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i64 @broken(i32 %125)
  %127 = icmp ne i64 %126, 0
  br label %128

128:                                              ; preds = %121, %112
  %129 = phi i1 [ true, %112 ], [ %127, %121 ]
  %130 = zext i1 %129 to i32
  %131 = load i64, i64* %5, align 8
  %132 = call i32 @ok(i32 %130, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %131)
  %133 = load i64, i64* %5, align 8
  %134 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %128
  %137 = load i32, i32* %3, align 4
  %138 = call i64 @acmStreamClose(i32 %137, i32 0)
  store i64 %138, i64* %5, align 8
  %139 = load i64, i64* %5, align 8
  %140 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %141 = icmp eq i64 %139, %140
  %142 = zext i1 %141 to i32
  %143 = load i64, i64* %5, align 8
  %144 = call i32 @ok(i32 %142, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %143)
  br label %145

145:                                              ; preds = %136, %128
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 3
  store i32 2000, i32* %147, align 4
  %148 = bitcast %struct.TYPE_8__* %1 to %struct.TYPE_7__*
  %149 = call i64 @acmStreamOpen(i32* %3, i32* null, %struct.TYPE_7__* %148, %struct.TYPE_7__* %2, i32* null, i32 0, i32 0, i32 0)
  store i64 %149, i64* %5, align 8
  %150 = load i64, i64* %5, align 8
  %151 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %160, label %153

153:                                              ; preds = %145
  %154 = load i64, i64* %5, align 8
  %155 = load i64, i64* @ACMERR_NOTPOSSIBLE, align 8
  %156 = icmp eq i64 %154, %155
  %157 = zext i1 %156 to i32
  %158 = call i64 @broken(i32 %157)
  %159 = icmp ne i64 %158, 0
  br label %160

160:                                              ; preds = %153, %145
  %161 = phi i1 [ true, %145 ], [ %159, %153 ]
  %162 = zext i1 %161 to i32
  %163 = load i64, i64* %5, align 8
  %164 = call i32 @ok(i32 %162, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %163)
  %165 = load i64, i64* %5, align 8
  %166 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %186

168:                                              ; preds = %160
  %169 = load i32, i32* %3, align 4
  %170 = load i32, i32* @ACM_STREAMSIZEF_SOURCE, align 4
  %171 = call i64 @acmStreamSize(i32 %169, i32 4000, i32* %4, i32 %170)
  store i64 %171, i64* %5, align 8
  %172 = load i64, i64* %5, align 8
  %173 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %174 = icmp eq i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = load i64, i64* %5, align 8
  %177 = call i32 @ok(i32 %175, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %176)
  %178 = load i32, i32* %3, align 4
  %179 = call i64 @acmStreamClose(i32 %178, i32 0)
  store i64 %179, i64* %5, align 8
  %180 = load i64, i64* %5, align 8
  %181 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %182 = icmp eq i64 %180, %181
  %183 = zext i1 %182 to i32
  %184 = load i64, i64* %5, align 8
  %185 = call i32 @ok(i32 %183, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %184)
  br label %186

186:                                              ; preds = %168, %160
  ret void
}

declare dso_local i64 @acmStreamOpen(i32*, i32*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32*, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @acmStreamClose(i32, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @acmStreamSize(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

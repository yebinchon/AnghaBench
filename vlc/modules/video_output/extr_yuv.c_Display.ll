; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/extr_yuv.c_Display.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/extr_yuv.c_Display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_13__, %struct.TYPE_10__, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, i64, i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [69 x i8] c"Received a non progressive frame, it will be written as progressive.\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"YUV4MPEG2\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%4.4s\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%s W%d H%d F%d:%d I%c A%d:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"FRAME\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"only %zd of %d bytes written\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_15__*)* @Display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Display(%struct.TYPE_11__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca [5 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %5, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = bitcast %struct.TYPE_13__* %6 to i8*
  %21 = bitcast %struct.TYPE_13__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 8 %21, i64 32, i1 false)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @ORIENT_IS_SWAP(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %2
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  br label %50

39:                                               ; preds = %2
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %39, %28
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i8 112, i8* %7, align 1
  br label %64

56:                                               ; preds = %50
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i8 116, i8* %7, align 1
  br label %63

62:                                               ; preds = %56
  store i8 98, i8* %7, align 1
  br label %63

63:                                               ; preds = %62, %61
  br label %64

64:                                               ; preds = %63, %55
  %65 = load i8, i8* %7, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 112
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = call i32 (%struct.TYPE_11__*, i8*, ...) @msg_Warn(%struct.TYPE_11__* %69, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  store i8 112, i8* %7, align 1
  br label %71

71:                                               ; preds = %68, %64
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %110, label %76

76:                                               ; preds = %71
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %88

82:                                               ; preds = %76
  %83 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 7
  %85 = bitcast i32* %84 to i8*
  %86 = call i32 @snprintf(i8* %83, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %85)
  %87 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  store i8* %87, i8** %8, align 8
  br label %88

88:                                               ; preds = %82, %81
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load i8, i8* %7, align 1
  %102 = sext i8 %101 to i32
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %92, i32 %94, i32 %96, i32 %98, i32 %100, i32 %102, i32 %104, i32 %106)
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  br label %110

110:                                              ; preds = %88, %71
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %115

115:                                              ; preds = %186, %110
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %189

121:                                              ; preds = %115
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i64 %126
  store %struct.TYPE_14__* %127, %struct.TYPE_14__** %11, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  store i32* %130, i32** %12, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = mul nsw i32 %134, %137
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = sdiv i32 %138, %142
  %144 = load i32*, i32** %12, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  store i32* %146, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %147

147:                                              ; preds = %182, %121
  %148 = load i32, i32* %13, align 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp slt i32 %148, %151
  br i1 %152, label %153, label %185

153:                                              ; preds = %147
  %154 = load i32*, i32** %12, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @fwrite(i32* %154, i32 1, i32 %157, i32 %160)
  store i64 %161, i64* %14, align 8
  %162 = load i64, i64* %14, align 8
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = icmp ne i64 %162, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %153
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %170 = load i64, i64* %14, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 (%struct.TYPE_11__*, i8*, ...) @msg_Warn(%struct.TYPE_11__* %169, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %170, i32 %173)
  br label %175

175:                                              ; preds = %168, %153
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load i32*, i32** %12, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  store i32* %181, i32** %12, align 8
  br label %182

182:                                              ; preds = %175
  %183 = load i32, i32* %13, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %13, align 4
  br label %147

185:                                              ; preds = %147
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %10, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %10, align 4
  br label %115

189:                                              ; preds = %115
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @fflush(i32 %192)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ORIENT_IS_SWAP(i32) #2

declare dso_local i32 @msg_Warn(%struct.TYPE_11__*, i8*, ...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i64 @fwrite(i32*, i32, i32, i32) #2

declare dso_local i32 @fflush(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

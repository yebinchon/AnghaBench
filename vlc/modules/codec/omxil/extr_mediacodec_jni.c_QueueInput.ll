; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_mediacodec_jni.c_QueueInput.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_mediacodec_jni.c_QueueInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64 (%struct.TYPE_16__**, i32)*, i32 (%struct.TYPE_16__**, i32)*, i32 (%struct.TYPE_16__**, i32, i32, i32, i32, i64, i32, i32)*, i32* (%struct.TYPE_16__**, i32)*, i32 (%struct.TYPE_16__**, i32, i32, i32)*, i32 (%struct.TYPE_16__**, i32, i32)* }

@BUFFER_FLAG_CODEC_CONFIG = common dso_local global i32 0, align 4
@BUFFER_FLAG_END_OF_STREAM = common dso_local global i32 0, align 4
@jfields = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str = private unnamed_addr constant [39 x i8] c"Exception in MediaCodec.getInputBuffer\00", align 1
@MC_API_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Java buffer has invalid size\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Exception in MediaCodec.queueInputBuffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, i8*, i64, i32, i32)* @QueueInput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @QueueInput(%struct.TYPE_15__* %0, i32 %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.TYPE_16__**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %14, align 8
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* @BUFFER_FLAG_CODEC_CONFIG, align 4
  br label %28

27:                                               ; preds = %6
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = load i8*, i8** %10, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @BUFFER_FLAG_END_OF_STREAM, align 4
  br label %35

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  %37 = or i32 %29, %36
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp sge i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = call i32 (...) @GET_ENV()
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @jfields, i32 0, i32 2), align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %35
  %46 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %15, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 5
  %49 = load i32 (%struct.TYPE_16__**, i32, i32)*, i32 (%struct.TYPE_16__**, i32, i32)** %48, align 8
  %50 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %15, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 %49(%struct.TYPE_16__** %50, i32 %53, i32 %54)
  store i32 %55, i32* %17, align 4
  br label %77

56:                                               ; preds = %35
  %57 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %15, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 4
  %60 = load i32 (%struct.TYPE_16__**, i32, i32, i32)*, i32 (%struct.TYPE_16__**, i32, i32, i32)** %59, align 8
  %61 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %15, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @jfields, i32 0, i32 1), align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 %60(%struct.TYPE_16__** %61, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %17, align 4
  %68 = call i64 (...) @CHECK_EXCEPTION()
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %56
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @msg_Err(i32 %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @MC_API_ERROR, align 4
  store i32 %75, i32* %7, align 4
  br label %148

76:                                               ; preds = %56
  br label %77

77:                                               ; preds = %76, %45
  %78 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %15, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i64 (%struct.TYPE_16__**, i32)*, i64 (%struct.TYPE_16__**, i32)** %80, align 8
  %82 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %15, align 8
  %83 = load i32, i32* %17, align 4
  %84 = call i64 %81(%struct.TYPE_16__** %82, i32 %83)
  store i64 %84, i64* %18, align 8
  %85 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %15, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 3
  %88 = load i32* (%struct.TYPE_16__**, i32)*, i32* (%struct.TYPE_16__**, i32)** %87, align 8
  %89 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %15, align 8
  %90 = load i32, i32* %17, align 4
  %91 = call i32* %88(%struct.TYPE_16__** %89, i32 %90)
  store i32* %91, i32** %16, align 8
  %92 = load i64, i64* %18, align 8
  %93 = icmp ult i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %77
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @msg_Err(i32 %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %99 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %15, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  %102 = load i32 (%struct.TYPE_16__**, i32)*, i32 (%struct.TYPE_16__**, i32)** %101, align 8
  %103 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %15, align 8
  %104 = load i32, i32* %17, align 4
  %105 = call i32 %102(%struct.TYPE_16__** %103, i32 %104)
  %106 = load i32, i32* @MC_API_ERROR, align 4
  store i32 %106, i32* %7, align 4
  br label %148

107:                                              ; preds = %77
  %108 = load i64, i64* %18, align 8
  %109 = load i64, i64* %11, align 8
  %110 = icmp ugt i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load i64, i64* %11, align 8
  store i64 %112, i64* %18, align 8
  br label %113

113:                                              ; preds = %111, %107
  %114 = load i32*, i32** %16, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = load i64, i64* %18, align 8
  %117 = call i32 @memcpy(i32* %114, i8* %115, i64 %116)
  %118 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %15, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 2
  %121 = load i32 (%struct.TYPE_16__**, i32, i32, i32, i32, i64, i32, i32)*, i32 (%struct.TYPE_16__**, i32, i32, i32, i32, i64, i32, i32)** %120, align 8
  %122 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %15, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @jfields, i32 0, i32 0), align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i64, i64* %18, align 8
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %19, align 4
  %131 = call i32 %121(%struct.TYPE_16__** %122, i32 %125, i32 %126, i32 %127, i32 0, i64 %128, i32 %129, i32 %130)
  %132 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %15, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  %135 = load i32 (%struct.TYPE_16__**, i32)*, i32 (%struct.TYPE_16__**, i32)** %134, align 8
  %136 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %15, align 8
  %137 = load i32, i32* %17, align 4
  %138 = call i32 %135(%struct.TYPE_16__** %136, i32 %137)
  %139 = call i64 (...) @CHECK_EXCEPTION()
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %113
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @msg_Err(i32 %144, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %146 = load i32, i32* @MC_API_ERROR, align 4
  store i32 %146, i32* %7, align 4
  br label %148

147:                                              ; preds = %113
  store i32 0, i32* %7, align 4
  br label %148

148:                                              ; preds = %147, %141, %94, %70
  %149 = load i32, i32* %7, align 4
  ret i32 %149
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @GET_ENV(...) #1

declare dso_local i64 @CHECK_EXCEPTION(...) #1

declare dso_local i32 @msg_Err(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

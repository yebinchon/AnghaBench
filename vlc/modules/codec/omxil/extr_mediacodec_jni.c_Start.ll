; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_mediacodec_jni.c_Start.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_mediacodec_jni.c_Start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i64, i64, i32 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_20__**, i32*)*, i32 (%struct.TYPE_20__**, i32*)*, i32* (%struct.TYPE_20__**, i32, i32)*, i32* (%struct.TYPE_20__**, i32, i64)*, i32 (%struct.TYPE_20__**, i32, i32)* }

@MC_API_ERROR = common dso_local global i32 0, align 4
@jfields = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@.str = private unnamed_addr constant [39 x i8] c"Exception occurred in MediaCodec.start\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Exception in MediaCodec.getInputBuffers\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Exception in MediaCodec.getOutputBuffers\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"MediaCodec via JNI opened\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*)* @Start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Start(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_20__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  store %struct.TYPE_18__* %11, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_20__** null, %struct.TYPE_20__*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %12 = call i32 (...) @GET_ENV()
  %13 = load i32, i32* @MC_API_ERROR, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %4, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 4
  %17 = load i32 (%struct.TYPE_20__**, i32, i32)*, i32 (%struct.TYPE_20__**, i32, i32)** %16, align 8
  %18 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %4, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @jfields, i32 0, i32 4), align 8
  %23 = call i32 %17(%struct.TYPE_20__** %18, i32 %21, i32 %22)
  %24 = call i64 (...) @CHECK_EXCEPTION()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @msg_Warn(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %116

31:                                               ; preds = %1
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @jfields, i32 0, i32 3), align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %94

36:                                               ; preds = %31
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @jfields, i32 0, i32 2), align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %94

39:                                               ; preds = %36
  %40 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %4, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 3
  %43 = load i32* (%struct.TYPE_20__**, i32, i64)*, i32* (%struct.TYPE_20__**, i32, i64)** %42, align 8
  %44 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %4, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @jfields, i32 0, i32 3), align 8
  %49 = call i32* %43(%struct.TYPE_20__** %44, i32 %47, i64 %48)
  store i32* %49, i32** %5, align 8
  %50 = call i64 (...) @CHECK_EXCEPTION()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %39
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @msg_Err(i32 %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %116

57:                                               ; preds = %39
  %58 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %4, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 1
  %61 = load i32 (%struct.TYPE_20__**, i32*)*, i32 (%struct.TYPE_20__**, i32*)** %60, align 8
  %62 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %4, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 %61(%struct.TYPE_20__** %62, i32* %63)
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %4, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 3
  %70 = load i32* (%struct.TYPE_20__**, i32, i64)*, i32* (%struct.TYPE_20__**, i32, i64)** %69, align 8
  %71 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %4, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @jfields, i32 0, i32 2), align 8
  %76 = call i32* %70(%struct.TYPE_20__** %71, i32 %74, i64 %75)
  store i32* %76, i32** %6, align 8
  %77 = call i64 (...) @CHECK_EXCEPTION()
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %57
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @msg_Err(i32 %82, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %116

84:                                               ; preds = %57
  %85 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %4, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 1
  %88 = load i32 (%struct.TYPE_20__**, i32*)*, i32 (%struct.TYPE_20__**, i32*)** %87, align 8
  %89 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %4, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 %88(%struct.TYPE_20__** %89, i32* %90)
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %84, %36, %31
  %95 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %4, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 2
  %98 = load i32* (%struct.TYPE_20__**, i32, i32)*, i32* (%struct.TYPE_20__**, i32, i32)** %97, align 8
  %99 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %4, align 8
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @jfields, i32 0, i32 1), align 4
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @jfields, i32 0, i32 0), align 8
  %102 = call i32* %98(%struct.TYPE_20__** %99, i32 %100, i32 %101)
  store i32* %102, i32** %7, align 8
  %103 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %4, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  %106 = load i32 (%struct.TYPE_20__**, i32*)*, i32 (%struct.TYPE_20__**, i32*)** %105, align 8
  %107 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %4, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = call i32 %106(%struct.TYPE_20__** %107, i32* %108)
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  store i32 0, i32* %8, align 4
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @msg_Dbg(i32 %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %116

116:                                              ; preds = %94, %79, %52, %26
  %117 = load i32*, i32** %5, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %4, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = load i32 (%struct.TYPE_20__**, i32*)*, i32 (%struct.TYPE_20__**, i32*)** %122, align 8
  %124 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %4, align 8
  %125 = load i32*, i32** %5, align 8
  %126 = call i32 %123(%struct.TYPE_20__** %124, i32* %125)
  br label %127

127:                                              ; preds = %119, %116
  %128 = load i32*, i32** %6, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %4, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 0
  %134 = load i32 (%struct.TYPE_20__**, i32*)*, i32 (%struct.TYPE_20__**, i32*)** %133, align 8
  %135 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %4, align 8
  %136 = load i32*, i32** %6, align 8
  %137 = call i32 %134(%struct.TYPE_20__** %135, i32* %136)
  br label %138

138:                                              ; preds = %130, %127
  %139 = load i32*, i32** %7, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %149

141:                                              ; preds = %138
  %142 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %4, align 8
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = load i32 (%struct.TYPE_20__**, i32*)*, i32 (%struct.TYPE_20__**, i32*)** %144, align 8
  %146 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %4, align 8
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 %145(%struct.TYPE_20__** %146, i32* %147)
  br label %149

149:                                              ; preds = %141, %138
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %154 = call i32 @Stop(%struct.TYPE_19__* %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32, i32* %8, align 4
  ret i32 %156
}

declare dso_local i32 @GET_ENV(...) #1

declare dso_local i64 @CHECK_EXCEPTION(...) #1

declare dso_local i32 @msg_Warn(i32, i8*) #1

declare dso_local i32 @msg_Err(i32, i8*) #1

declare dso_local i32 @msg_Dbg(i32, i8*) #1

declare dso_local i32 @Stop(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

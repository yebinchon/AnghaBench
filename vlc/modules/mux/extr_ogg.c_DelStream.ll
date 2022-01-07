; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/extr_ogg.c_DelStream.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/extr_ogg.c_DelStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_17__**, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_17__*, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"removing input\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_16__*)* @DelStream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DelStream(%struct.TYPE_14__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %5, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %6, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = call i32 @msg_Dbg(%struct.TYPE_14__* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %110

21:                                               ; preds = %2
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %33, %26
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @block_FifoCount(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %36 = call i32 @MuxBlock(%struct.TYPE_14__* %34, %struct.TYPE_16__* %35)
  br label %27

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %21
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %69, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 4
  %47 = call i32* @OggStreamFlush(%struct.TYPE_14__* %44, i32* %46, i32 0)
  store i32* %47, i32** %7, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %69

49:                                               ; preds = %43
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @OggSetDate(i32* %50, i32 %53, i32 %56)
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i64 @sout_AccessOutWrite(i32 %60, i32* %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 8
  br label %69

69:                                               ; preds = %49, %43, %38
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %98, label %74

74:                                               ; preds = %69
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %76, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 8
  %84 = trunc i64 %83 to i32
  %85 = call %struct.TYPE_17__** @xrealloc(%struct.TYPE_17__** %77, i32 %84)
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 2
  store %struct.TYPE_17__** %85, %struct.TYPE_17__*** %87, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %90, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %91, i64 %96
  store %struct.TYPE_17__* %88, %struct.TYPE_17__** %97, align 8
  br label %109

98:                                               ; preds = %69
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %100, align 8
  %102 = call i32 @FREENULL(%struct.TYPE_17__* %101)
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %104 = call i32 @FREENULL(%struct.TYPE_17__* %103)
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %98, %74
  br label %110

110:                                              ; preds = %109, %2
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  store i32* null, i32** %112, align 8
  ret void
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_14__*, i8*) #1

declare dso_local i64 @block_FifoCount(i32) #1

declare dso_local i32 @MuxBlock(%struct.TYPE_14__*, %struct.TYPE_16__*) #1

declare dso_local i32* @OggStreamFlush(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @OggSetDate(i32*, i32, i32) #1

declare dso_local i64 @sout_AccessOutWrite(i32, i32*) #1

declare dso_local %struct.TYPE_17__** @xrealloc(%struct.TYPE_17__**, i32) #1

declare dso_local i32 @FREENULL(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

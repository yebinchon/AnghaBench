; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_copy.c_Packetize.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_copy.c_Packetize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_13__*, %struct.TYPE_15__*)*, %struct.TYPE_15__* }

@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"need valid dts\00", align 1
@VLC_CODEC_OPUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_13__*, %struct.TYPE_15__**)* @Packetize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @Packetize(%struct.TYPE_13__* %0, %struct.TYPE_15__** %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_15__**, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_15__** %1, %struct.TYPE_15__*** %5, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %7, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %8, align 8
  %15 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %16 = icmp eq %struct.TYPE_15__** %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = icmp eq %struct.TYPE_15__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %2
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %109

22:                                               ; preds = %17
  %23 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = call i32 @block_Release(%struct.TYPE_15__* %32)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %109

34:                                               ; preds = %22
  %35 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %6, align 8
  %37 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %37, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VLC_TICK_INVALID, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %43, %34
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @VLC_TICK_INVALID, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = call i32 @msg_Dbg(%struct.TYPE_13__* %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = call i32 @block_Release(%struct.TYPE_15__* %58)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %109

60:                                               ; preds = %49
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %62 = icmp ne %struct.TYPE_15__* %61, null
  br i1 %62, label %63, label %89

63:                                               ; preds = %60
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %66, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %63
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @VLC_CODEC_OPUS, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %71
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 3
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %78, %71
  br label %89

89:                                               ; preds = %88, %63, %60
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  store %struct.TYPE_15__* %90, %struct.TYPE_15__** %92, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %94 = icmp ne %struct.TYPE_15__* %93, null
  br i1 %94, label %95, label %107

95:                                               ; preds = %89
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32 (%struct.TYPE_13__*, %struct.TYPE_15__*)*, i32 (%struct.TYPE_13__*, %struct.TYPE_15__*)** %97, align 8
  %99 = icmp ne i32 (%struct.TYPE_13__*, %struct.TYPE_15__*)* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i32 (%struct.TYPE_13__*, %struct.TYPE_15__*)*, i32 (%struct.TYPE_13__*, %struct.TYPE_15__*)** %102, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %106 = call i32 %103(%struct.TYPE_13__* %104, %struct.TYPE_15__* %105)
  br label %107

107:                                              ; preds = %100, %95, %89
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %108, %struct.TYPE_15__** %3, align 8
  br label %109

109:                                              ; preds = %107, %55, %30, %21
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  ret %struct.TYPE_15__* %110
}

declare dso_local i32 @block_Release(%struct.TYPE_15__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_13__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_avparser.c_Packetize.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_avparser.c_Packetize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32 }

@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@BLOCK_FLAG_TYPE_I = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_10__*, %struct.TYPE_12__**)* @Packetize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @Packetize(%struct.TYPE_10__* %0, %struct.TYPE_12__** %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_12__**, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_12__** %1, %struct.TYPE_12__*** %5, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %6, align 8
  %16 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %17 = icmp eq %struct.TYPE_12__** %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = icmp eq %struct.TYPE_12__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %148

23:                                               ; preds = %18
  %24 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = call i32 @block_Release(%struct.TYPE_12__* %33)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %148

35:                                               ; preds = %23
  %36 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %7, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  store i32* %45, i32** %8, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %48, %51
  store i32 %52, i32* %9, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %35
  br label %141

59:                                               ; preds = %35
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @TO_AV_TS(i32 %70)
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @TO_AV_TS(i32 %74)
  %76 = call i64 @av_parser_parse2(%struct.TYPE_13__* %62, i32 %65, i32** %10, i32* %11, i32* %66, i32 %67, i32 %71, i32 %75, i32 -1)
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %76
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 8
  %83 = load i32, i32* %11, align 4
  %84 = icmp sle i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %59
  %86 = load i32*, i32** %10, align 8
  %87 = icmp ne i32* %86, null
  %88 = xor i1 %87, true
  br label %89

89:                                               ; preds = %85, %59
  %90 = phi i1 [ true, %59 ], [ %88, %85 ]
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %141

95:                                               ; preds = %89
  %96 = load i32, i32* %11, align 4
  %97 = call %struct.TYPE_12__* @block_Alloc(i32 %96)
  store %struct.TYPE_12__* %97, %struct.TYPE_12__** %12, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %99 = icmp ne %struct.TYPE_12__* %98, null
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %141

105:                                              ; preds = %95
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @memcpy(i32* %108, i32* %109, i32 %110)
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %134

128:                                              ; preds = %105
  %129 = load i32, i32* @BLOCK_FLAG_TYPE_I, align 4
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %128, %105
  %135 = load i32, i32* @VLC_TICK_INVALID, align 4
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 3
  store i32 %135, i32* %139, align 4
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %140, %struct.TYPE_12__** %3, align 8
  br label %148

141:                                              ; preds = %104, %94, %58
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  store i32 0, i32* %143, align 8
  %144 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = call i32 @block_Release(%struct.TYPE_12__* %145)
  %147 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %147, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %148

148:                                              ; preds = %141, %134, %31, %22
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %149
}

declare dso_local i32 @block_Release(%struct.TYPE_12__*) #1

declare dso_local i64 @av_parser_parse2(%struct.TYPE_13__*, i32, i32**, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @TO_AV_TS(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_12__* @block_Alloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

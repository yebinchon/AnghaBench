; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc.c_OutputQueues.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc.c_OutputQueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, %struct.TYPE_16__*, i32* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__, i32, i32, %struct.TYPE_13__, %struct.TYPE_12__, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_12__ = type { %struct.TYPE_16__* }

@SENT = common dso_local global i64 0, align 8
@HEVC_NAL_AUD = common dso_local global i64 0, align 8
@pre = common dso_local global i32 0, align 4
@frame = common dso_local global i32 0, align 4
@post = common dso_local global i32 0, align 4
@BLOCK_FLAG_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_15__*, i32)* @OutputQueues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @OutputQueues(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__** %5, %struct.TYPE_16__*** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %13 = icmp ne %struct.TYPE_16__* %12, null
  br i1 %13, label %14, label %89

14:                                               ; preds = %2
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %74

27:                                               ; preds = %14
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SENT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %27
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %39, 5
  br i1 %40, label %41, label %70

41:                                               ; preds = %33
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  %49 = call i64 @hevc_getNALType(i32* %48)
  %50 = load i64, i64* @HEVC_NAL_AUD, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %41
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  store %struct.TYPE_16__* %56, %struct.TYPE_16__** %8, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store %struct.TYPE_16__* %62, %struct.TYPE_16__** %65, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %67, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %69 = call i32 @block_ChainLastAppend(%struct.TYPE_16__*** %6, %struct.TYPE_16__* %68)
  br label %70

70:                                               ; preds = %52, %41, %33
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %72 = call %struct.TYPE_16__* @GetXPSCopy(%struct.TYPE_15__* %71)
  %73 = call i32 @block_ChainLastAppend(%struct.TYPE_16__*** %6, %struct.TYPE_16__* %72)
  br label %74

74:                                               ; preds = %70, %27, %14
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %77, align 8
  %79 = icmp ne %struct.TYPE_16__* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = call i32 @block_ChainLastAppend(%struct.TYPE_16__*** %6, %struct.TYPE_16__* %84)
  br label %86

86:                                               ; preds = %80, %74
  %87 = load i32, i32* @pre, align 4
  %88 = call i32 @INITQ(i32 %87)
  br label %89

89:                                               ; preds = %86, %2
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = icmp ne %struct.TYPE_16__* %93, null
  br i1 %94, label %95, label %121

95:                                               ; preds = %89
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %7, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %7, align 4
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = call i32 @block_ChainLastAppend(%struct.TYPE_16__*** %6, %struct.TYPE_16__* %107)
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 3
  %111 = call i32 @date_Get(i32* %110)
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @frame, align 4
  %120 = call i32 @INITQ(i32 %119)
  br label %121

121:                                              ; preds = %95, %89
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %124, align 8
  %126 = icmp ne %struct.TYPE_16__* %125, null
  br i1 %126, label %127, label %143

127:                                              ; preds = %121
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %7, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %7, align 4
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %138, align 8
  %140 = call i32 @block_ChainLastAppend(%struct.TYPE_16__*** %6, %struct.TYPE_16__* %139)
  %141 = load i32, i32* @post, align 4
  %142 = call i32 @INITQ(i32 %141)
  br label %143

143:                                              ; preds = %127, %121
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %145 = icmp ne %struct.TYPE_16__* %144, null
  br i1 %145, label %146, label %161

146:                                              ; preds = %143
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  %152 = load i32, i32* %4, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %146
  %155 = load i32, i32* @BLOCK_FLAG_DROP, align 4
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %154, %146
  br label %161

161:                                              ; preds = %160, %143
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  ret %struct.TYPE_16__* %162
}

declare dso_local i64 @hevc_getNALType(i32*) #1

declare dso_local i32 @block_ChainLastAppend(%struct.TYPE_16__***, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @GetXPSCopy(%struct.TYPE_15__*) #1

declare dso_local i32 @INITQ(i32) #1

declare dso_local i32 @date_Get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

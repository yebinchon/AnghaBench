; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_ps.c_MuxWriteSystemHeader.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_ps.c_MuxWriteSystemHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_15__**, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@AUDIO_ES = common dso_local global i64 0, align 8
@VIDEO_ES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_17__**, i32)* @MuxWriteSystemHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MuxWriteSystemHeader(%struct.TYPE_13__* %0, %struct.TYPE_17__** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_17__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_17__** %1, %struct.TYPE_17__*** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %7, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %47, %3
  %22 = load i32, i32* %14, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %21
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %29, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %30, i64 %32
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %37, %struct.TYPE_16__** %15, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 65280
  %42 = icmp eq i32 %41, 48384
  br i1 %42, label %43, label %46

43:                                               ; preds = %27
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %43, %27
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %14, align 4
  br label %21

50:                                               ; preds = %21
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %12, align 4
  %58 = sub nsw i32 %57, 1
  br label %60

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %56
  %61 = phi i32 [ %58, %56 ], [ 0, %59 ]
  %62 = sub nsw i32 %53, %61
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = mul nsw i32 %63, 3
  %65 = add nsw i32 12, %64
  %66 = call %struct.TYPE_17__* @block_Alloc(i32 %65)
  store %struct.TYPE_17__* %66, %struct.TYPE_17__** %8, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %68 = icmp ne %struct.TYPE_17__* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %60
  br label %192

70:                                               ; preds = %60
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 2
  store i32 %71, i32* %75, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %13, align 4
  %80 = mul nsw i32 %79, 3
  %81 = add nsw i32 12, %80
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @bits_initwrite(i32* %9, i32 %81, i32 %84)
  %86 = call i32 @bits_write(i32* %9, i32 32, i32 443)
  %87 = load i32, i32* %13, align 4
  %88 = mul nsw i32 %87, 3
  %89 = add nsw i32 6, %88
  %90 = call i32 @bits_write(i32* %9, i32 16, i32 %89)
  %91 = call i32 @bits_write(i32* %9, i32 1, i32 1)
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @bits_write(i32* %9, i32 22, i32 %92)
  %94 = call i32 @bits_write(i32* %9, i32 1, i32 1)
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @bits_write(i32* %9, i32 6, i32 %97)
  %99 = call i32 @bits_write(i32* %9, i32 1, i32 0)
  %100 = call i32 @bits_write(i32* %9, i32 1, i32 0)
  %101 = call i32 @bits_write(i32* %9, i32 1, i32 0)
  %102 = call i32 @bits_write(i32* %9, i32 1, i32 0)
  %103 = call i32 @bits_write(i32* %9, i32 1, i32 1)
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @bits_write(i32* %9, i32 5, i32 %106)
  %108 = call i32 @bits_write(i32* %9, i32 1, i32 1)
  %109 = call i32 @bits_write(i32* %9, i32 7, i32 255)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %110

110:                                              ; preds = %185, %70
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %188

116:                                              ; preds = %110
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %119, i64 %121
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  store %struct.TYPE_15__* %123, %struct.TYPE_15__** %16, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %127, %struct.TYPE_16__** %17, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 65280
  %132 = icmp eq i32 %131, 48384
  br i1 %132, label %133, label %139

133:                                              ; preds = %116
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  br label %185

137:                                              ; preds = %133
  store i32 1, i32* %10, align 4
  %138 = call i32 @bits_write(i32* %9, i32 8, i32 189)
  br label %145

139:                                              ; preds = %116
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 255
  %144 = call i32 @bits_write(i32* %9, i32 8, i32 %143)
  br label %145

145:                                              ; preds = %139, %137
  %146 = call i32 @bits_write(i32* %9, i32 2, i32 3)
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @AUDIO_ES, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %145
  %155 = call i32 @bits_write(i32* %9, i32 1, i32 0)
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sdiv i32 %158, 128
  %160 = call i32 @bits_write(i32* %9, i32 13, i32 %159)
  br label %184

161:                                              ; preds = %145
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @VIDEO_ES, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %161
  %170 = call i32 @bits_write(i32* %9, i32 1, i32 1)
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sdiv i32 %173, 1024
  %175 = call i32 @bits_write(i32* %9, i32 13, i32 %174)
  br label %183

176:                                              ; preds = %161
  %177 = call i32 @bits_write(i32* %9, i32 1, i32 0)
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = sdiv i32 %180, 128
  %182 = call i32 @bits_write(i32* %9, i32 13, i32 %181)
  br label %183

183:                                              ; preds = %176, %169
  br label %184

184:                                              ; preds = %183, %154
  br label %185

185:                                              ; preds = %184, %136
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %14, align 4
  br label %110

188:                                              ; preds = %110
  %189 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %191 = call i32 @block_ChainAppend(%struct.TYPE_17__** %189, %struct.TYPE_17__* %190)
  br label %192

192:                                              ; preds = %188, %69
  ret void
}

declare dso_local %struct.TYPE_17__* @block_Alloc(i32) #1

declare dso_local i32 @bits_initwrite(i32*, i32, i32) #1

declare dso_local i32 @bits_write(i32*, i32, i32) #1

declare dso_local i32 @block_ChainAppend(%struct.TYPE_17__**, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

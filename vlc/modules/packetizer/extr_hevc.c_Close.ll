; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc.c_Close.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc.c_Close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, i32 }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@HEVC_PPS_ID_MAX = common dso_local global i32 0, align 4
@HEVC_SPS_ID_MAX = common dso_local global i32 0, align 4
@HEVC_VPS_ID_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Close(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %3, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %4, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 8
  %15 = call i32 @packetizer_Clean(i32* %14)
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @block_ChainRelease(i32 %19)
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 6
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @block_ChainRelease(i32 %24)
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @block_ChainRelease(i32 %29)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %76, %1
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @HEVC_PPS_ID_MAX, align 4
  %34 = icmp ule i32 %32, %33
  br i1 %34, label %35, label %79

35:                                               ; preds = %31
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %35
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @hevc_rbsp_release_pps(i64 %53)
  br label %55

55:                                               ; preds = %45, %35
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %55
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @block_Release(i64 %73)
  br label %75

75:                                               ; preds = %65, %55
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %31

79:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %125, %79
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @HEVC_SPS_ID_MAX, align 4
  %83 = icmp ule i32 %81, %82
  br i1 %83, label %84, label %128

84:                                               ; preds = %80
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %84
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @hevc_rbsp_release_sps(i64 %102)
  br label %104

104:                                              ; preds = %94, %84
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %104
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @block_Release(i64 %122)
  br label %124

124:                                              ; preds = %114, %104
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %6, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %80

128:                                              ; preds = %80
  store i32 0, i32* %7, align 4
  br label %129

129:                                              ; preds = %174, %128
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @HEVC_VPS_ID_MAX, align 4
  %132 = icmp ule i32 %130, %131
  br i1 %132, label %133, label %177

133:                                              ; preds = %129
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %133
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @hevc_rbsp_release_vps(i64 %151)
  br label %153

153:                                              ; preds = %143, %133
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %153
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @block_Release(i64 %171)
  br label %173

173:                                              ; preds = %163, %153
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %7, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %7, align 4
  br label %129

177:                                              ; preds = %129
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @hevc_release_sei_pic_timing(i32 %180)
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @cc_storage_delete(i32 %184)
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %187 = call i32 @free(%struct.TYPE_17__* %186)
  ret void
}

declare dso_local i32 @packetizer_Clean(i32*) #1

declare dso_local i32 @block_ChainRelease(i32) #1

declare dso_local i32 @hevc_rbsp_release_pps(i64) #1

declare dso_local i32 @block_Release(i64) #1

declare dso_local i32 @hevc_rbsp_release_sps(i64) #1

declare dso_local i32 @hevc_rbsp_release_vps(i64) #1

declare dso_local i32 @hevc_release_sei_pic_timing(i32) #1

declare dso_local i32 @cc_storage_delete(i32) #1

declare dso_local i32 @free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

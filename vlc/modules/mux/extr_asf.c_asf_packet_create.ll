; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/extr_asf.c_asf_packet_create.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/extr_asf.c_asf_packet_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i64, i64, %struct.TYPE_17__*, i64, i64 }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_16__ = type { i32, i32, i64 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_15__*, i64, i32* }

@BLOCK_FLAG_TYPE_P = common dso_local global i32 0, align 4
@BLOCK_FLAG_TYPE_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_13__*, %struct.TYPE_16__*, %struct.TYPE_15__*)* @asf_packet_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @asf_packet_create(%struct.TYPE_13__* %0, %struct.TYPE_16__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_15__**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %7, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %10, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__** %11, %struct.TYPE_15__*** %12, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 7
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 12, i32 0
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %195, %104, %3
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %196

35:                                               ; preds = %31
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 5
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  %39 = icmp eq %struct.TYPE_17__* %38, null
  br i1 %39, label %40, label %60

40:                                               ; preds = %35
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %43, %44
  %46 = call %struct.TYPE_17__* @block_Alloc(i32 %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 5
  store %struct.TYPE_17__* %46, %struct.TYPE_17__** %48, align 8
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 14, %49
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 6
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %40, %35
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 5
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %73, %76
  %78 = call i32 @bo_init(i32* %14, i32* %70, i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = sub nsw i32 %79, %80
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %84, %87
  %89 = sub nsw i32 %88, 17
  %90 = call i32 @__MIN(i32 %81, i32 %89)
  store i32 %90, i32* %15, align 4
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %60
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %95
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %106 = call %struct.TYPE_15__* @asf_packet_flush(%struct.TYPE_13__* %105)
  %107 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %12, align 8
  store %struct.TYPE_15__* %106, %struct.TYPE_15__** %107, align 8
  %108 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %12, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 2
  store %struct.TYPE_15__** %110, %struct.TYPE_15__*** %12, align 8
  br label %31

111:                                              ; preds = %100, %95, %60
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @BLOCK_FLAG_TYPE_P, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %130, label %118

118:                                              ; preds = %111
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @BLOCK_FLAG_TYPE_B, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %118
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 128, %128
  br label %134

130:                                              ; preds = %118, %111
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  br label %134

134:                                              ; preds = %130, %125
  %135 = phi i32 [ %129, %125 ], [ %133, %130 ]
  %136 = call i32 @bo_add_u8(i32* %14, i32 %135)
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @bo_add_u8(i32* %14, i32 %139)
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @bo_addle_u32(i32* %14, i32 %141)
  %143 = call i32 @bo_add_u8(i32* %14, i32 8)
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @bo_addle_u32(i32* %14, i32 %144)
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %148, %151
  %153 = call i32 @MS_FROM_VLC_TICK(i64 %152)
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %153, %156
  %158 = call i32 @bo_addle_u32(i32* %14, i32 %157)
  %159 = load i32, i32* %15, align 4
  %160 = call i32 @bo_addle_u16(i32* %14, i32 %159)
  %161 = load i32*, i32** %10, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %15, align 4
  %166 = call i32 @bo_add_mem(i32* %14, i32* %164, i32 %165)
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %9, align 4
  %170 = load i32, i32* %15, align 4
  %171 = add nsw i32 17, %170
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, %171
  store i32 %175, i32* %173, align 4
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %178, 1
  store i64 %179, i64* %177, align 8
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 17
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp sge i32 %183, %186
  br i1 %187, label %188, label %195

188:                                              ; preds = %134
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %190 = call %struct.TYPE_15__* @asf_packet_flush(%struct.TYPE_13__* %189)
  %191 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %12, align 8
  store %struct.TYPE_15__* %190, %struct.TYPE_15__** %191, align 8
  %192 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %12, align 8
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 2
  store %struct.TYPE_15__** %194, %struct.TYPE_15__*** %12, align 8
  br label %195

195:                                              ; preds = %188, %134
  br label %31

196:                                              ; preds = %31
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 4
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %202 = call i32 @block_Release(%struct.TYPE_15__* %201)
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  ret %struct.TYPE_15__* %203
}

declare dso_local %struct.TYPE_17__* @block_Alloc(i32) #1

declare dso_local i32 @bo_init(i32*, i32*, i32) #1

declare dso_local i32 @__MIN(i32, i32) #1

declare dso_local %struct.TYPE_15__* @asf_packet_flush(%struct.TYPE_13__*) #1

declare dso_local i32 @bo_add_u8(i32*, i32) #1

declare dso_local i32 @bo_addle_u32(i32*, i32) #1

declare dso_local i32 @MS_FROM_VLC_TICK(i64) #1

declare dso_local i32 @bo_addle_u16(i32*, i32) #1

declare dso_local i32 @bo_add_mem(i32*, i32*, i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

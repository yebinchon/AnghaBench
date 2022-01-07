; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_video_epg.c_vout_BuildOSDEpg.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_video_epg.c_vout_BuildOSDEpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.anon = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32 }

@OSDEPG_HEIGHT = common dso_local global i32 0, align 4
@OSDEPG_PADDING = common dso_local global i32 0, align 4
@OSDEPG_LEFT = common dso_local global i32 0, align 4
@OSDEPG_TOP = common dso_local global i32 0, align 4
@OSDEPG_WIDTH = common dso_local global i32 0, align 4
@ARGB_BGCOLOR = common dso_local global i32 0, align 4
@RGB_COLOR1 = common dso_local global i32 0, align 4
@OSDEPG_LOGO_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_10__*, i32, i32, i32, i32)* @vout_BuildOSDEpg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @vout_BuildOSDEpg(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_9__**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.anon, align 4
  %15 = alloca %struct.anon.0, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store %struct.TYPE_9__** %11, %struct.TYPE_9__*** %12, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @OSDEPG_HEIGHT, align 4
  %19 = load i32, i32* @OSDEPG_PADDING, align 4
  %20 = mul nsw i32 %18, %19
  %21 = mul nsw i32 %17, %20
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @OSDEPG_LEFT, align 4
  %25 = mul nsw i32 %23, %24
  %26 = add nsw i32 %22, %25
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @OSDEPG_TOP, align 4
  %30 = mul nsw i32 %28, %29
  %31 = add nsw i32 %27, %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @OSDEPG_WIDTH, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @OSDEPG_HEIGHT, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* @ARGB_BGCOLOR, align 4
  %39 = call %struct.TYPE_9__* @vout_OSDBackground(i32 %26, i32 %31, i32 %34, i32 %37, i32 %38)
  %40 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %40, align 8
  %41 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = icmp ne %struct.TYPE_9__* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %5
  %45 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store %struct.TYPE_9__** %47, %struct.TYPE_9__*** %12, align 8
  br label %48

48:                                               ; preds = %44, %5
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @OSDEPG_LEFT, align 4
  %53 = mul nsw i32 %51, %52
  %54 = add nsw i32 %50, %53
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %49, align 4
  %57 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 1
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @OSDEPG_TOP, align 4
  %61 = mul nsw i32 %59, %60
  %62 = add nsw i32 %58, %61
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %62, %63
  store i32 %64, i32* %57, align 4
  %65 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 2
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @OSDEPG_WIDTH, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, i32* %13, align 4
  %70 = mul nsw i32 2, %69
  %71 = sub nsw i32 %68, %70
  store i32 %71, i32* %65, align 4
  %72 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 3
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @OSDEPG_HEIGHT, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load i32, i32* %13, align 4
  %77 = mul nsw i32 2, %76
  %78 = sub nsw i32 %75, %77
  store i32 %78, i32* %72, align 4
  %79 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @OSDEPG_LEFT, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %82, %83
  store i32 %84, i32* %79, align 4
  %85 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 5
  %86 = load i32, i32* %10, align 4
  %87 = sitofp i32 %86 to double
  %88 = load i32, i32* @OSDEPG_TOP, align 4
  %89 = sitofp i32 %88 to double
  %90 = fsub double 1.000000e+00, %89
  %91 = load i32, i32* @OSDEPG_HEIGHT, align 4
  %92 = sitofp i32 %91 to double
  %93 = fsub double %90, %92
  %94 = fmul double %87, %93
  %95 = load i32, i32* %13, align 4
  %96 = sitofp i32 %95 to double
  %97 = fadd double %94, %96
  %98 = fptosi double %97 to i32
  store i32 %98, i32* %85, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %189

103:                                              ; preds = %48
  %104 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %15, i32 0, i32 0
  %105 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %104, align 4
  %107 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %15, i32 0, i32 1
  %108 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %107, align 4
  %110 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %15, i32 0, i32 2
  %111 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %110, align 4
  %113 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %15, i32 0, i32 3
  %114 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %113, align 4
  %116 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %15, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %15, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %15, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %15, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @RGB_COLOR1, align 4
  %125 = or i32 -16777216, %124
  %126 = call %struct.TYPE_9__* @vout_OSDBackground(i32 %117, i32 %119, i32 %121, i32 %123, i32 %125)
  %127 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  store %struct.TYPE_9__* %126, %struct.TYPE_9__** %127, align 8
  %128 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = icmp ne %struct.TYPE_9__* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %103
  %132 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  store %struct.TYPE_9__** %134, %struct.TYPE_9__*** %12, align 8
  br label %135

135:                                              ; preds = %131, %103
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @OSDEPG_LOGO_SIZE, align 4
  %138 = load i32, i32* @OSDEPG_PADDING, align 4
  %139 = mul nsw i32 %137, %138
  %140 = mul nsw i32 %136, %139
  store i32 %140, i32* %16, align 4
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %15, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %16, align 4
  %147 = add nsw i32 %145, %146
  %148 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %15, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %16, align 4
  %151 = add nsw i32 %149, %150
  %152 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %15, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %16, align 4
  %155 = mul nsw i32 2, %154
  %156 = sub nsw i32 %153, %155
  %157 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %15, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %16, align 4
  %160 = mul nsw i32 2, %159
  %161 = sub nsw i32 %158, %160
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call %struct.TYPE_9__* @vout_OSDImage(i32 %143, i32 %147, i32 %151, i32 %156, i32 %161, i64 %164)
  %166 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  store %struct.TYPE_9__* %165, %struct.TYPE_9__** %166, align 8
  %167 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = icmp ne %struct.TYPE_9__* %168, null
  br i1 %169, label %170, label %174

170:                                              ; preds = %135
  %171 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  store %struct.TYPE_9__** %173, %struct.TYPE_9__*** %12, align 8
  br label %174

174:                                              ; preds = %170, %135
  %175 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %15, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %13, align 4
  %178 = add nsw i32 %176, %177
  %179 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, %178
  store i32 %181, i32* %179, align 4
  %182 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %15, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %183, %184
  %186 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = sub nsw i32 %187, %185
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %174, %48
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %191 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 4
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 5
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %204 = call i32 @vout_FillRightPanel(%struct.TYPE_10__* %190, i32 %192, i32 %194, i32 %196, i32 %198, i32 %200, i32 %202, %struct.TYPE_9__** %203)
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  ret %struct.TYPE_9__* %205
}

declare dso_local %struct.TYPE_9__* @vout_OSDBackground(i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @vout_OSDImage(i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @vout_FillRightPanel(%struct.TYPE_10__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

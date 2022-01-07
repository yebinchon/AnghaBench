; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d9.c_Direct3DFindFormat.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d9.c_Direct3DFindFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [59 x i8] c"Disabling hardware chroma conversion due to odd dimensions\00", align 1
@d3d_formats = common dso_local global %struct.TYPE_15__* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"trying surface pixel format: %s\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"selected surface pixel format is %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_12__*, %struct.TYPE_14__*, i32)* @Direct3DFindFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @Direct3DFindFormat(%struct.TYPE_12__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca [2 x i64], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %8, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %3
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %24, %3
  %32 = phi i1 [ false, %3 ], [ %30, %24 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = call i32 (%struct.TYPE_12__*, i8*, ...) @msg_Warn(%struct.TYPE_12__* %37, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %31
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %153, %39
  %41 = load i32, i32* %10, align 4
  %42 = icmp ult i32 %41, 2
  br i1 %42, label %43, label %156

43:                                               ; preds = %40
  %44 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %44, align 8
  %48 = getelementptr inbounds i64, i64* %44, i64 1
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @is_d3d9_opaque(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  store i64* %58, i64** %11, align 8
  br label %92

59:                                               ; preds = %51, %43
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @vlc_fourcc_IsYUV(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i64* @vlc_fourcc_GetYUVFallback(i64 %79)
  store i64* %80, i64** %11, align 8
  br label %91

81:                                               ; preds = %70, %65, %62, %59
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = call i64* @vlc_fourcc_GetRGBFallback(i64 %87)
  store i64* %88, i64** %11, align 8
  br label %90

89:                                               ; preds = %81
  br label %153

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %76
  br label %92

92:                                               ; preds = %91, %57
  store i32 0, i32* %13, align 4
  br label %93

93:                                               ; preds = %149, %92
  %94 = load i64*, i64** %11, align 8
  %95 = load i32, i32* %13, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %152

100:                                              ; preds = %93
  store i32 0, i32* %14, align 4
  br label %101

101:                                              ; preds = %145, %100
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** @d3d_formats, align 8
  %103 = load i32, i32* %14, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %148

109:                                              ; preds = %101
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** @d3d_formats, align 8
  %111 = load i32, i32* %14, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i64 %112
  store %struct.TYPE_15__* %113, %struct.TYPE_15__** %15, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64*, i64** %11, align 8
  %118 = load i32, i32* %13, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %116, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %109
  br label %145

124:                                              ; preds = %109
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i32 (%struct.TYPE_12__*, i8*, ...) @msg_Warn(%struct.TYPE_12__* %125, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %128)
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @Direct3D9CheckConversion(%struct.TYPE_12__* %130, i32 %133, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %144, label %137

137:                                              ; preds = %124
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @msg_Dbg(%struct.TYPE_12__* %138, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %141)
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* %143, %struct.TYPE_15__** %4, align 8
  br label %157

144:                                              ; preds = %124
  br label %145

145:                                              ; preds = %144, %123
  %146 = load i32, i32* %14, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %14, align 4
  br label %101

148:                                              ; preds = %101
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %13, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %13, align 4
  br label %93

152:                                              ; preds = %93
  br label %153

153:                                              ; preds = %152, %89
  %154 = load i32, i32* %10, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %40

156:                                              ; preds = %40
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  br label %157

157:                                              ; preds = %156, %137
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  ret %struct.TYPE_15__* %158
}

declare dso_local i32 @msg_Warn(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i64 @is_d3d9_opaque(i64) #1

declare dso_local i64 @vlc_fourcc_IsYUV(i64) #1

declare dso_local i64* @vlc_fourcc_GetYUVFallback(i64) #1

declare dso_local i64* @vlc_fourcc_GetRGBFallback(i64) #1

declare dso_local i32 @Direct3D9CheckConversion(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_12__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

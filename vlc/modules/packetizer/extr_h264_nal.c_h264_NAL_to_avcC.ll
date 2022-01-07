; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_h264_nal.c_h264_NAL_to_avcC.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_h264_nal.c_h264_NAL_to_avcC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@H264_SPS_ID_MAX = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @h264_NAL_to_avcC(i32 %0, i32** %1, i64* %2, i32 %3, i32** %4, i64* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_6__, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i32** %1, i32*** %10, align 8
  store i64* %2, i64** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32** %4, i32*** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %31

24:                                               ; preds = %7
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 2
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 4
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32* null, i32** %8, align 8
  br label %201

31:                                               ; preds = %27, %24, %7
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @H264_SPS_ID_MAX, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %15, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %34, %31
  store i32* null, i32** %8, align 8
  br label %201

42:                                               ; preds = %38
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  br label %43

43:                                               ; preds = %85, %42
  %44 = load i64, i64* %17, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %44, %46
  br i1 %47, label %48, label %88

48:                                               ; preds = %43
  %49 = load i32**, i32*** %10, align 8
  %50 = load i64, i64* %17, align 8
  %51 = getelementptr inbounds i32*, i32** %49, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load i64*, i64** %11, align 8
  %56 = load i64, i64* %17, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %54, %48
  %61 = phi i1 [ false, %48 ], [ %59, %54 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i64*, i64** %11, align 8
  %65 = load i64, i64* %17, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %67, 4
  br i1 %68, label %76, label %69

69:                                               ; preds = %60
  %70 = load i64*, i64** %11, align 8
  %71 = load i64, i64* %17, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @UINT16_MAX, align 8
  %75 = icmp ugt i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %69, %60
  store i32* null, i32** %8, align 8
  br label %201

77:                                               ; preds = %69
  %78 = load i64*, i64** %11, align 8
  %79 = load i64, i64* %17, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, 2
  %83 = load i64, i64* %16, align 8
  %84 = add i64 %83, %82
  store i64 %84, i64* %16, align 8
  br label %85

85:                                               ; preds = %77
  %86 = load i64, i64* %17, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %17, align 8
  br label %43

88:                                               ; preds = %43
  store i64 0, i64* %18, align 8
  br label %89

89:                                               ; preds = %125, %88
  %90 = load i64, i64* %18, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = icmp ult i64 %90, %92
  br i1 %93, label %94, label %128

94:                                               ; preds = %89
  %95 = load i32**, i32*** %13, align 8
  %96 = load i64, i64* %18, align 8
  %97 = getelementptr inbounds i32*, i32** %95, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load i64*, i64** %14, align 8
  %102 = load i64, i64* %18, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br label %106

106:                                              ; preds = %100, %94
  %107 = phi i1 [ false, %94 ], [ %105, %100 ]
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load i64*, i64** %14, align 8
  %111 = load i64, i64* %18, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @UINT16_MAX, align 8
  %115 = icmp ugt i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  store i32* null, i32** %8, align 8
  br label %201

117:                                              ; preds = %106
  %118 = load i64*, i64** %14, align 8
  %119 = load i64, i64* %18, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %121, 2
  %123 = load i64, i64* %16, align 8
  %124 = add i64 %123, %122
  store i64 %124, i64* %16, align 8
  br label %125

125:                                              ; preds = %117
  %126 = load i64, i64* %18, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %18, align 8
  br label %89

128:                                              ; preds = %89
  %129 = load i64, i64* %16, align 8
  %130 = add i64 7, %129
  %131 = trunc i64 %130 to i32
  %132 = call i32 @bo_init(%struct.TYPE_6__* %19, i32 %131)
  %133 = icmp ne i32 %132, 1
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  store i32* null, i32** %8, align 8
  br label %201

135:                                              ; preds = %128
  %136 = call i32 @bo_add_8(%struct.TYPE_6__* %19, i32 1)
  %137 = load i32**, i32*** %10, align 8
  %138 = getelementptr inbounds i32*, i32** %137, i64 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = call i32 @bo_add_mem(%struct.TYPE_6__* %19, i64 3, i32* %140)
  %142 = load i32, i32* %9, align 4
  %143 = sub nsw i32 %142, 1
  %144 = or i32 252, %143
  %145 = call i32 @bo_add_8(%struct.TYPE_6__* %19, i32 %144)
  %146 = load i32, i32* %12, align 4
  %147 = or i32 224, %146
  %148 = call i32 @bo_add_8(%struct.TYPE_6__* %19, i32 %147)
  store i64 0, i64* %20, align 8
  br label %149

149:                                              ; preds = %169, %135
  %150 = load i64, i64* %20, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = icmp ult i64 %150, %152
  br i1 %153, label %154, label %172

154:                                              ; preds = %149
  %155 = load i64*, i64** %11, align 8
  %156 = load i64, i64* %20, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @bo_add_16be(%struct.TYPE_6__* %19, i64 %158)
  %160 = load i64*, i64** %11, align 8
  %161 = load i64, i64* %20, align 8
  %162 = getelementptr inbounds i64, i64* %160, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = load i32**, i32*** %10, align 8
  %165 = load i64, i64* %20, align 8
  %166 = getelementptr inbounds i32*, i32** %164, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @bo_add_mem(%struct.TYPE_6__* %19, i64 %163, i32* %167)
  br label %169

169:                                              ; preds = %154
  %170 = load i64, i64* %20, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %20, align 8
  br label %149

172:                                              ; preds = %149
  %173 = load i32, i32* %15, align 4
  %174 = call i32 @bo_add_8(%struct.TYPE_6__* %19, i32 %173)
  store i64 0, i64* %21, align 8
  br label %175

175:                                              ; preds = %195, %172
  %176 = load i64, i64* %21, align 8
  %177 = load i32, i32* %15, align 4
  %178 = sext i32 %177 to i64
  %179 = icmp ult i64 %176, %178
  br i1 %179, label %180, label %198

180:                                              ; preds = %175
  %181 = load i64*, i64** %14, align 8
  %182 = load i64, i64* %21, align 8
  %183 = getelementptr inbounds i64, i64* %181, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @bo_add_16be(%struct.TYPE_6__* %19, i64 %184)
  %186 = load i64*, i64** %14, align 8
  %187 = load i64, i64* %21, align 8
  %188 = getelementptr inbounds i64, i64* %186, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = load i32**, i32*** %13, align 8
  %191 = load i64, i64* %21, align 8
  %192 = getelementptr inbounds i32*, i32** %190, i64 %191
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @bo_add_mem(%struct.TYPE_6__* %19, i64 %189, i32* %193)
  br label %195

195:                                              ; preds = %180
  %196 = load i64, i64* %21, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %21, align 8
  br label %175

198:                                              ; preds = %175
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  store i32* %200, i32** %8, align 8
  br label %201

201:                                              ; preds = %198, %134, %116, %76, %41, %30
  %202 = load i32*, i32** %8, align 8
  ret i32* %202
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bo_init(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @bo_add_8(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @bo_add_mem(%struct.TYPE_6__*, i64, i32*) #1

declare dso_local i32 @bo_add_16be(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

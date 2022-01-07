; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_libmp4mux.c_GetESDS.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_libmp4mux.c_GetESDS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"esds\00", align 1
@CLOCK_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*)* @GetESDS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetESDS(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 5, %22
  br label %25

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %24, %18
  %26 = phi i32 [ %23, %18 ], [ 0, %24 ]
  store i32 %26, i32* %5, align 4
  %27 = call i32* @box_full_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32* null, i32** %2, align 8
  br label %224

31:                                               ; preds = %25
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %88, %31
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %91

38:                                               ; preds = %32
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = add nsw i64 %47, %46
  store i64 %48, i64* %6, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %87

58:                                               ; preds = %38
  %59 = load i32, i32* @CLOCK_FREQ, align 4
  %60 = mul nsw i32 %59, 8
  %61 = sext i32 %60 to i64
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = mul nsw i64 %61, %69
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = sdiv i64 %70, %79
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %7, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %58
  %85 = load i64, i64* %9, align 8
  store i64 %85, i64* %7, align 8
  br label %86

86:                                               ; preds = %84, %58
  br label %87

87:                                               ; preds = %86, %38
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %32

91:                                               ; preds = %32
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %91
  %97 = load i32, i32* @CLOCK_FREQ, align 4
  %98 = mul nsw i32 %97, 8
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %6, align 8
  %101 = mul nsw i64 %99, %100
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = sdiv i64 %101, %105
  store i64 %106, i64* %6, align 8
  br label %108

107:                                              ; preds = %91
  store i64 0, i64* %6, align 8
  br label %108

108:                                              ; preds = %107, %96
  %109 = load i64, i64* %7, align 8
  %110 = icmp sle i64 %109, 1
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i64 2147483647, i64* %7, align 8
  br label %112

112:                                              ; preds = %111, %108
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 21, %114
  %116 = add nsw i32 %115, 5
  %117 = add nsw i32 %116, 1
  %118 = call i32 @bo_add_mp4_tag_descr(i32* %113, i32 3, i32 %117)
  %119 = load i32*, i32** %4, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @bo_add_16be(i32* %119, i32 %122)
  %124 = load i32*, i32** %4, align 8
  %125 = call i32 @bo_add_8(i32* %124, i32 31)
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 13, %127
  %129 = call i32 @bo_add_mp4_tag_descr(i32* %126, i32 4, i32 %128)
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  switch i32 %133, label %156 [
    i32 130, label %134
    i32 128, label %135
    i32 133, label %143
    i32 134, label %144
    i32 131, label %145
    i32 132, label %146
    i32 129, label %146
    i32 135, label %155
  ]

134:                                              ; preds = %112
  store i32 32, i32* %10, align 4
  br label %157

135:                                              ; preds = %112
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, 134
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  store i32 106, i32* %10, align 4
  br label %157

142:                                              ; preds = %135
  br label %143

143:                                              ; preds = %112, %142
  store i32 97, i32* %10, align 4
  br label %157

144:                                              ; preds = %112
  store i32 106, i32* %10, align 4
  br label %157

145:                                              ; preds = %112
  store i32 64, i32* %10, align 4
  br label %157

146:                                              ; preds = %112, %112
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp slt i32 %151, 32000
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 105, i32 107
  store i32 %154, i32* %10, align 4
  br label %157

155:                                              ; preds = %112
  store i32 169, i32* %10, align 4
  br label %157

156:                                              ; preds = %112
  store i32 254, i32* %10, align 4
  br label %157

157:                                              ; preds = %156, %155, %146, %145, %144, %143, %141, %134
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  switch i32 %161, label %165 [
    i32 136, label %162
    i32 138, label %163
    i32 137, label %164
  ]

162:                                              ; preds = %157
  store i32 4, i32* %11, align 4
  br label %166

163:                                              ; preds = %157
  store i32 5, i32* %11, align 4
  br label %166

164:                                              ; preds = %157
  store i32 13, i32* %11, align 4
  br label %166

165:                                              ; preds = %157
  store i32 32, i32* %11, align 4
  br label %166

166:                                              ; preds = %165, %164, %163, %162
  %167 = load i32*, i32** %4, align 8
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @bo_add_8(i32* %167, i32 %168)
  %170 = load i32*, i32** %4, align 8
  %171 = load i32, i32* %11, align 4
  %172 = shl i32 %171, 2
  %173 = or i32 %172, 1
  %174 = call i32 @bo_add_8(i32* %170, i32 %173)
  %175 = load i32*, i32** %4, align 8
  %176 = call i32 @bo_add_24be(i32* %175, i32 1048576)
  %177 = load i32*, i32** %4, align 8
  %178 = load i64, i64* %7, align 8
  %179 = call i32 @bo_add_32be(i32* %177, i64 %178)
  %180 = load i32*, i32** %4, align 8
  %181 = load i64, i64* %6, align 8
  %182 = call i32 @bo_add_32be(i32* %180, i64 %181)
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %188, label %218

188:                                              ; preds = %166
  %189 = load i32*, i32** %4, align 8
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @bo_add_mp4_tag_descr(i32* %189, i32 5, i32 %193)
  store i32 0, i32* %12, align 4
  br label %195

195:                                              ; preds = %214, %188
  %196 = load i32, i32* %12, align 4
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp slt i32 %196, %200
  br i1 %201, label %202, label %217

202:                                              ; preds = %195
  %203 = load i32*, i32** %4, align 8
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = inttoptr i64 %207 to i32*
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @bo_add_8(i32* %203, i32 %212)
  br label %214

214:                                              ; preds = %202
  %215 = load i32, i32* %12, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %12, align 4
  br label %195

217:                                              ; preds = %195
  br label %218

218:                                              ; preds = %217, %166
  %219 = load i32*, i32** %4, align 8
  %220 = call i32 @bo_add_mp4_tag_descr(i32* %219, i32 6, i32 1)
  %221 = load i32*, i32** %4, align 8
  %222 = call i32 @bo_add_8(i32* %221, i32 2)
  %223 = load i32*, i32** %4, align 8
  store i32* %223, i32** %2, align 8
  br label %224

224:                                              ; preds = %218, %30
  %225 = load i32*, i32** %2, align 8
  ret i32* %225
}

declare dso_local i32* @box_full_new(i8*, i32, i32) #1

declare dso_local i32 @bo_add_mp4_tag_descr(i32*, i32, i32) #1

declare dso_local i32 @bo_add_16be(i32*, i32) #1

declare dso_local i32 @bo_add_8(i32*, i32) #1

declare dso_local i32 @bo_add_24be(i32*, i32) #1

declare dso_local i32 @bo_add_32be(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

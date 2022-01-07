; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_Opus_Parse.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_Opus_Parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Invalid start trimming flag\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid end trimming flag\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Invalid control extension length %d > %zu\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Invalid Opus AU size %d (PES %zu)\00", align 1
@BLOCK_FLAG_PREROLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32*, %struct.TYPE_10__*)* @Opus_Parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @Opus_Parse(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__** %5, %struct.TYPE_10__*** %6, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  br label %24

24:                                               ; preds = %208, %2
  %25 = load i64, i64* %8, align 8
  %26 = icmp ugt i64 %25, 3
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 3
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 5
  %36 = or i32 %31, %35
  %37 = icmp eq i32 %36, 1023
  br label %38

38:                                               ; preds = %27, %24
  %39 = phi i1 [ false, %24 ], [ %37, %27 ]
  br i1 %39, label %40, label %217

40:                                               ; preds = %38
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 4
  %45 = and i32 %44, 1
  store i32 %45, i32* %11, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 3
  %50 = and i32 %49, 1
  store i32 %50, i32* %12, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 2
  %55 = and i32 %54, 1
  store i32 %55, i32* %13, align 4
  %56 = load i64, i64* %8, align 8
  %57 = sub i64 %56, 2
  store i64 %57, i64* %8, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32* %59, i32** %7, align 8
  store i32 0, i32* %14, align 4
  br label %60

60:                                               ; preds = %74, %40
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %61, -1
  store i64 %62, i64* %8, align 8
  %63 = icmp ne i64 %61, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %7, align 8
  %67 = load i32, i32* %65, align 4
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %14, align 4
  %70 = add i32 %69, %68
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 255
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %75

74:                                               ; preds = %64
  br label %60

75:                                               ; preds = %73, %60
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = call i64 @read_opus_flag(i32** %7, i64* %8)
  store i64 %79, i64* %9, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 (i32*, i8*, ...) @msg_Err(i32* %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %78
  br label %86

86:                                               ; preds = %85, %75
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = call i64 @read_opus_flag(i32** %7, i64* %8)
  store i64 %90, i64* %10, align 8
  %91 = load i64, i64* %10, align 8
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 (i32*, i8*, ...) @msg_Err(i32* %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %89
  br label %97

97:                                               ; preds = %96, %86
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %127

100:                                              ; preds = %97
  %101 = load i64, i64* %8, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %127

103:                                              ; preds = %100
  %104 = load i32*, i32** %7, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %7, align 8
  %106 = load i32, i32* %104, align 4
  store i32 %106, i32* %16, align 4
  %107 = load i64, i64* %8, align 8
  %108 = add i64 %107, -1
  store i64 %108, i64* %8, align 8
  %109 = load i32, i32* %16, align 4
  %110 = zext i32 %109 to i64
  %111 = load i64, i64* %8, align 8
  %112 = icmp ugt i64 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %103
  %114 = load i32*, i32** %3, align 8
  %115 = load i32, i32* %16, align 4
  %116 = load i64, i64* %8, align 8
  %117 = call i32 (i32*, i8*, ...) @msg_Err(i32* %114, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %115, i64 %116)
  br label %217

118:                                              ; preds = %103
  %119 = load i32, i32* %16, align 4
  %120 = load i32*, i32** %7, align 8
  %121 = zext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32* %122, i32** %7, align 8
  %123 = load i32, i32* %16, align 4
  %124 = zext i32 %123 to i64
  %125 = load i64, i64* %8, align 8
  %126 = sub i64 %125, %124
  store i64 %126, i64* %8, align 8
  br label %127

127:                                              ; preds = %118, %100, %97
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load i32, i32* %14, align 4
  %132 = zext i32 %131 to i64
  %133 = load i64, i64* %8, align 8
  %134 = icmp ugt i64 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %130, %127
  %136 = load i32*, i32** %3, align 8
  %137 = load i32, i32* %14, align 4
  %138 = load i64, i64* %8, align 8
  %139 = call i32 (i32*, i8*, ...) @msg_Err(i32* %136, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %137, i64 %138)
  br label %217

140:                                              ; preds = %130
  %141 = load i32, i32* %14, align 4
  %142 = call %struct.TYPE_10__* @block_Alloc(i32 %141)
  store %struct.TYPE_10__* %142, %struct.TYPE_10__** %17, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %144 = icmp ne %struct.TYPE_10__* %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %140
  br label %217

146:                                              ; preds = %140
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32*, i32** %7, align 8
  %151 = load i32, i32* %14, align 4
  %152 = call i32 @memcpy(i32* %149, i32* %150, i32 %151)
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %155 = call i32 @block_CopyProperties(%struct.TYPE_10__* %153, %struct.TYPE_10__* %154)
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %157 = call i32 @block_ChainLastAppend(%struct.TYPE_10__*** %6, %struct.TYPE_10__* %156)
  %158 = load i32*, i32** %7, align 8
  %159 = load i32, i32* %14, align 4
  %160 = call i64 @opus_frame_duration(i32* %158, i32 %159)
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 2
  store i64 %160, i64* %162, align 8
  %163 = load i64, i64* %10, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %146
  %166 = load i64, i64* %10, align 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp sle i64 %166, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %165
  %172 = load i64, i64* %10, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 3
  store i64 %172, i64* %174, align 8
  br label %178

175:                                              ; preds = %165, %146
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 3
  store i64 0, i64* %177, align 8
  br label %178

178:                                              ; preds = %175, %171
  %179 = load i64, i64* %9, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %208

181:                                              ; preds = %178
  %182 = load i64, i64* %9, align 8
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = sub nsw i64 %185, %188
  %190 = icmp slt i64 %182, %189
  br i1 %190, label %191, label %208

191:                                              ; preds = %181
  %192 = load i64, i64* %9, align 8
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = sub nsw i64 %195, %192
  store i64 %196, i64* %194, align 8
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %191
  %202 = load i32, i32* @BLOCK_FLAG_PREROLL, align 4
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 8
  br label %207

207:                                              ; preds = %201, %191
  br label %208

208:                                              ; preds = %207, %181, %178
  %209 = load i32, i32* %14, align 4
  %210 = load i32*, i32** %7, align 8
  %211 = zext i32 %209 to i64
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  store i32* %212, i32** %7, align 8
  %213 = load i32, i32* %14, align 4
  %214 = zext i32 %213 to i64
  %215 = load i64, i64* %8, align 8
  %216 = sub i64 %215, %214
  store i64 %216, i64* %8, align 8
  br label %24

217:                                              ; preds = %145, %135, %113, %38
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %219 = call i32 @block_Release(%struct.TYPE_10__* %218)
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  ret %struct.TYPE_10__* %220
}

declare dso_local i64 @read_opus_flag(i32**, i64*) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_10__* @block_Alloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @block_CopyProperties(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @block_ChainLastAppend(%struct.TYPE_10__***, %struct.TYPE_10__*) #1

declare dso_local i64 @opus_frame_duration(i32*, i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_add_to_closest.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_add_to_closest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32*, i32* }

@DESIRED_CLOSE_CONNECTIONS = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@GROUPCHAT_CLOSEST_ADDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @add_to_closest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_to_closest(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.TYPE_5__* @get_group_c(i32* %21, i32 %22)
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %10, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %261

27:                                               ; preds = %4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i64 @public_key_cmp(i32* %30, i32* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 -1, i32* %5, align 4
  br label %261

35:                                               ; preds = %27
  %36 = load i32, i32* @DESIRED_CLOSE_CONNECTIONS, align 4
  store i32 %36, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %65, %35
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @DESIRED_CLOSE_CONNECTIONS, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %37
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %41
  %52 = load i32*, i32** %8, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i64 @public_key_cmp(i32* %52, i32* %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %261

64:                                               ; preds = %51, %41
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %11, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %37

68:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %86, %68
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @DESIRED_CLOSE_CONNECTIONS, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %69
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %73
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %12, align 4
  br label %89

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %11, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %69

89:                                               ; preds = %83, %69
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @DESIRED_CLOSE_CONNECTIONS, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %171

93:                                               ; preds = %89
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = call i64 @calculate_comp_value(i32* %96, i32* %97)
  store i64 %98, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %11, align 4
  br label %99

99:                                               ; preds = %128, %93
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @DESIRED_CLOSE_CONNECTIONS, align 4
  %102 = udiv i32 %101, 2
  %103 = icmp ult i32 %100, %102
  br i1 %103, label %104, label %131

104:                                              ; preds = %99
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = call i64 @calculate_comp_value(i32* %107, i32* %115)
  store i64 %116, i64* %15, align 8
  %117 = load i64, i64* %15, align 8
  %118 = load i64, i64* %13, align 8
  %119 = icmp sgt i64 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %104
  %121 = load i64, i64* %15, align 8
  %122 = load i64, i64* %14, align 8
  %123 = icmp sgt i64 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i32, i32* %11, align 4
  store i32 %125, i32* %12, align 4
  %126 = load i64, i64* %15, align 8
  store i64 %126, i64* %14, align 8
  br label %127

127:                                              ; preds = %124, %120, %104
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %11, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %11, align 4
  br label %99

131:                                              ; preds = %99
  %132 = load i32*, i32** %8, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = call i64 @calculate_comp_value(i32* %132, i32* %135)
  store i64 %136, i64* %13, align 8
  %137 = load i32, i32* @DESIRED_CLOSE_CONNECTIONS, align 4
  %138 = udiv i32 %137, 2
  store i32 %138, i32* %11, align 4
  br label %139

139:                                              ; preds = %167, %131
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* @DESIRED_CLOSE_CONNECTIONS, align 4
  %142 = icmp ult i32 %140, %141
  br i1 %142, label %143, label %170

143:                                              ; preds = %139
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = call i64 @calculate_comp_value(i32* %151, i32* %154)
  store i64 %155, i64* %16, align 8
  %156 = load i64, i64* %16, align 8
  %157 = load i64, i64* %13, align 8
  %158 = icmp sgt i64 %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %143
  %160 = load i64, i64* %16, align 8
  %161 = load i64, i64* %14, align 8
  %162 = icmp sgt i64 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load i32, i32* %11, align 4
  store i32 %164, i32* %12, align 4
  %165 = load i64, i64* %16, align 8
  store i64 %165, i64* %14, align 8
  br label %166

166:                                              ; preds = %163, %159, %143
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %11, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %11, align 4
  br label %139

170:                                              ; preds = %139
  br label %171

171:                                              ; preds = %170, %89
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* @DESIRED_CLOSE_CONNECTIONS, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  store i32 -1, i32* %5, align 4
  br label %261

176:                                              ; preds = %171
  %177 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %178 = zext i32 %177 to i64
  %179 = call i8* @llvm.stacksave()
  store i8* %179, i8** %17, align 8
  %180 = alloca i32, i64 %178, align 16
  store i64 %178, i64* %18, align 8
  %181 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %182 = zext i32 %181 to i64
  %183 = alloca i32, i64 %182, align 16
  store i64 %182, i64* %19, align 8
  store i32 0, i32* %20, align 4
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = load i32, i32* %12, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %214

193:                                              ; preds = %176
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = load i32, i32* %12, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %203 = call i32 @memcpy(i32* %180, i32* %201, i32 %202)
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 2
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  %207 = load i32, i32* %12, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %213 = call i32 @memcpy(i32* %183, i32* %211, i32 %212)
  store i32 1, i32* %20, align 4
  br label %214

214:                                              ; preds = %193, %176
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 2
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = load i32, i32* %12, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  store i32 1, i32* %221, align 8
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 2
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %223, align 8
  %225 = load i32, i32* %12, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = load i32*, i32** %8, align 8
  %231 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %232 = call i32 @memcpy(i32* %229, i32* %230, i32 %231)
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 2
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = load i32, i32* %12, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 2
  %240 = load i32*, i32** %239, align 8
  %241 = load i32*, i32** %9, align 8
  %242 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %243 = call i32 @memcpy(i32* %240, i32* %241, i32 %242)
  %244 = load i32, i32* %20, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %214
  %247 = load i32*, i32** %6, align 8
  %248 = load i32, i32* %7, align 4
  %249 = call i32 @add_to_closest(i32* %247, i32 %248, i32* %180, i32* %183)
  br label %250

250:                                              ; preds = %246, %214
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %259, label %255

255:                                              ; preds = %250
  %256 = load i64, i64* @GROUPCHAT_CLOSEST_ADDED, align 8
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 1
  store i64 %256, i64* %258, align 8
  br label %259

259:                                              ; preds = %255, %250
  store i32 0, i32* %5, align 4
  %260 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %260)
  br label %261

261:                                              ; preds = %259, %175, %63, %34, %26
  %262 = load i32, i32* %5, align 4
  ret i32 %262
}

declare dso_local %struct.TYPE_5__* @get_group_c(i32*, i32) #1

declare dso_local i64 @public_key_cmp(i32*, i32*) #1

declare dso_local i64 @calculate_comp_value(i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

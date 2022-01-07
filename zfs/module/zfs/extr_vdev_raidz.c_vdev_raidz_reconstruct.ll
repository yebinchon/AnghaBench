; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz.c_vdev_raidz_reconstruct.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz.c_vdev_raidz_reconstruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@VDEV_RAIDZ_MAXPARITY = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@RAIDZ_ORIGINAL_IMPL = common dso_local global i32 0, align 4
@VDEV_RAIDZ_P = common dso_local global i64 0, align 8
@VDEV_RAIDZ_Q = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdev_raidz_reconstruct(%struct.TYPE_10__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load i32, i32* @VDEV_RAIDZ_MAXPARITY, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %24 = load i32, i32* @VDEV_RAIDZ_MAXPARITY, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %18, align 8
  store i32 1, i32* %12, align 4
  br label %27

27:                                               ; preds = %46, %3
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %36, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  br label %46

46:                                               ; preds = %31
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %12, align 4
  br label %27

49:                                               ; preds = %27
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %16, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %16, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %17, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %130, %49
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %133

64:                                               ; preds = %58
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load i32, i32* @B_FALSE, align 4
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %26, i64 %73
  store i32 %71, i32* %74, align 4
  br label %75

75:                                               ; preds = %70, %64
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %75
  %80 = load i32, i32* %13, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %80, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %79
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %23, i64 %91
  store i32 %88, i32* %92, align 4
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %129

95:                                               ; preds = %79, %75
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %95
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %23, i64 %109
  store i32 %106, i32* %110, align 4
  br label %128

111:                                              ; preds = %95
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp sge i32 %112, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load i32, i32* %17, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %17, align 4
  br label %127

120:                                              ; preds = %111
  %121 = load i32, i32* @B_TRUE, align 4
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %26, i64 %123
  store i32 %121, i32* %124, align 4
  %125 = load i32, i32* %16, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %16, align 4
  br label %127

127:                                              ; preds = %120, %117
  br label %128

128:                                              ; preds = %127, %105
  br label %129

129:                                              ; preds = %128, %87
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %13, align 4
  br label %58

133:                                              ; preds = %58
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp sge i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @ASSERT(i32 %137)
  %139 = load i32, i32* %17, align 4
  %140 = icmp sge i32 %139, 0
  %141 = zext i1 %140 to i32
  %142 = call i32 @ASSERT(i32 %141)
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* %16, align 4
  %145 = add nsw i32 %143, %144
  %146 = load i32, i32* %11, align 4
  %147 = icmp eq i32 %145, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 @ASSERT(i32 %148)
  %150 = load i32, i32* %16, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %23, i64 %151
  store i32* %152, i32** %10, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %154 = load i32*, i32** %10, align 8
  %155 = load i32, i32* %17, align 4
  %156 = call i32 @vdev_raidz_math_reconstruct(%struct.TYPE_10__* %153, i32* %26, i32* %154, i32 %155)
  store i32 %156, i32* %14, align 4
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* @RAIDZ_ORIGINAL_IMPL, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %133
  %161 = load i32, i32* %14, align 4
  store i32 %161, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %237

162:                                              ; preds = %133
  %163 = load i32, i32* %17, align 4
  switch i32 %163, label %222 [
    i32 1, label %164
    i32 2, label %195
  ]

164:                                              ; preds = %162
  %165 = load i64, i64* @VDEV_RAIDZ_P, align 8
  %166 = getelementptr inbounds i32, i32* %26, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %171 = load i32*, i32** %10, align 8
  %172 = call i32 @vdev_raidz_reconstruct_p(%struct.TYPE_10__* %170, i32* %171, i32 1)
  store i32 %172, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %237

173:                                              ; preds = %164
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp sgt i32 %176, 1
  %178 = zext i1 %177 to i32
  %179 = call i32 @ASSERT(i32 %178)
  %180 = load i64, i64* @VDEV_RAIDZ_Q, align 8
  %181 = getelementptr inbounds i32, i32* %26, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %173
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %186 = load i32*, i32** %10, align 8
  %187 = call i32 @vdev_raidz_reconstruct_q(%struct.TYPE_10__* %185, i32* %186, i32 1)
  store i32 %187, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %237

188:                                              ; preds = %173
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp sgt i32 %191, 2
  %193 = zext i1 %192 to i32
  %194 = call i32 @ASSERT(i32 %193)
  br label %222

195:                                              ; preds = %162
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp sgt i32 %198, 1
  %200 = zext i1 %199 to i32
  %201 = call i32 @ASSERT(i32 %200)
  %202 = load i64, i64* @VDEV_RAIDZ_P, align 8
  %203 = getelementptr inbounds i32, i32* %26, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %215

206:                                              ; preds = %195
  %207 = load i64, i64* @VDEV_RAIDZ_Q, align 8
  %208 = getelementptr inbounds i32, i32* %26, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %206
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %213 = load i32*, i32** %10, align 8
  %214 = call i32 @vdev_raidz_reconstruct_pq(%struct.TYPE_10__* %212, i32* %213, i32 2)
  store i32 %214, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %237

215:                                              ; preds = %206, %195
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp sgt i32 %218, 2
  %220 = zext i1 %219 to i32
  %221 = call i32 @ASSERT(i32 %220)
  br label %222

222:                                              ; preds = %162, %215, %188
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %224 = load i32, i32* %11, align 4
  %225 = call i32 @vdev_raidz_reconstruct_general(%struct.TYPE_10__* %223, i32* %23, i32 %224)
  store i32 %225, i32* %15, align 4
  %226 = load i32, i32* %15, align 4
  %227 = load i32, i32* @VDEV_RAIDZ_MAXPARITY, align 4
  %228 = shl i32 1, %227
  %229 = icmp slt i32 %226, %228
  %230 = zext i1 %229 to i32
  %231 = call i32 @ASSERT(i32 %230)
  %232 = load i32, i32* %15, align 4
  %233 = icmp sgt i32 %232, 0
  %234 = zext i1 %233 to i32
  %235 = call i32 @ASSERT(i32 %234)
  %236 = load i32, i32* %15, align 4
  store i32 %236, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %237

237:                                              ; preds = %222, %211, %184, %169, %160
  %238 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %238)
  %239 = load i32, i32* %4, align 4
  ret i32 %239
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @vdev_raidz_math_reconstruct(%struct.TYPE_10__*, i32*, i32*, i32) #2

declare dso_local i32 @vdev_raidz_reconstruct_p(%struct.TYPE_10__*, i32*, i32) #2

declare dso_local i32 @vdev_raidz_reconstruct_q(%struct.TYPE_10__*, i32*, i32) #2

declare dso_local i32 @vdev_raidz_reconstruct_pq(%struct.TYPE_10__*, i32*, i32) #2

declare dso_local i32 @vdev_raidz_reconstruct_general(%struct.TYPE_10__*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

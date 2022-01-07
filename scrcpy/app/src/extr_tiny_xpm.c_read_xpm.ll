; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_tiny_xpm.c_read_xpm.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_tiny_xpm.c_read_xpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.index = type { i8, i32 }

@.str = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not allocate icon memory\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Could not create icon surface\00", align 1
@SDL_PREALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @read_xpm(i8** %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_4__*, align 8
  store i8** %0, i8*** %3, align 8
  %26 = load i8**, i8*** %3, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strtol(i8* %28, i8** %4, i32 10)
  store i32 %29, i32* %5, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = call i32 @strtol(i8* %31, i8** %4, i32 10)
  store i32 %32, i32* %6, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = call i32 @strtol(i8* %34, i8** %4, i32 10)
  store i32 %35, i32* %7, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = call i32 @strtol(i8* %37, i8** %4, i32 10)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp sle i32 0, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %1
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 256
  br label %44

44:                                               ; preds = %41, %1
  %45 = phi i1 [ false, %1 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @SDL_assert(i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = icmp sle i32 0, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 256
  br label %53

53:                                               ; preds = %50, %44
  %54 = phi i1 [ false, %44 ], [ %52, %50 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @SDL_assert(i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = icmp sle i32 0, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 256
  br label %62

62:                                               ; preds = %59, %53
  %63 = phi i1 [ false, %53 ], [ %61, %59 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @SDL_assert(i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 1
  %68 = zext i1 %67 to i32
  %69 = call i32 @SDL_assert(i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = zext i32 %70 to i64
  %72 = call i8* @llvm.stacksave()
  store i8* %72, i8** %9, align 8
  %73 = alloca %struct.index, i64 %71, align 16
  store i64 %71, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %146, %62
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %149

78:                                               ; preds = %74
  %79 = load i8**, i8*** %3, align 8
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 1, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %79, i64 %82
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %12, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.index, %struct.index* %73, i64 %89
  %91 = getelementptr inbounds %struct.index, %struct.index* %90, i32 0, i32 0
  store i8 %87, i8* %91, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 9
  %97 = zext i1 %96 to i32
  %98 = call i32 @SDL_assert(i32 %97)
  %99 = load i8*, i8** %12, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 2
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 99
  %104 = zext i1 %103 to i32
  %105 = call i32 @SDL_assert(i32 %104)
  %106 = load i8*, i8** %12, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 3
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 32
  %111 = zext i1 %110 to i32
  %112 = call i32 @SDL_assert(i32 %111)
  %113 = load i8*, i8** %12, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 4
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 35
  br i1 %117, label %118, label %133

118:                                              ; preds = %78
  %119 = load i8*, i8** %12, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 5
  %121 = call i32 @strtol(i8* %120, i8** %4, i32 16)
  %122 = or i32 -16777216, %121
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.index, %struct.index* %73, i64 %124
  %126 = getelementptr inbounds %struct.index, %struct.index* %125, i32 0, i32 1
  store i32 %122, i32* %126, align 4
  %127 = load i8*, i8** %4, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 @SDL_assert(i32 %131)
  br label %145

133:                                              ; preds = %78
  %134 = load i8*, i8** %12, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 4
  %136 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %135)
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = call i32 @SDL_assert(i32 %139)
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.index, %struct.index* %73, i64 %142
  %144 = getelementptr inbounds %struct.index, %struct.index* %143, i32 0, i32 1
  store i32 0, i32* %144, align 4
  br label %145

145:                                              ; preds = %133, %118
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  br label %74

149:                                              ; preds = %74
  %150 = load i32, i32* %5, align 4
  %151 = mul nsw i32 4, %150
  %152 = load i32, i32* %6, align 4
  %153 = mul nsw i32 %151, %152
  %154 = call i32* @SDL_malloc(i32 %153)
  store i32* %154, i32** %13, align 8
  %155 = load i32*, i32** %13, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %159, label %157

157:                                              ; preds = %149
  %158 = call i32 @LOGE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  store i32 1, i32* %14, align 4
  br label %227

159:                                              ; preds = %149
  store i32 0, i32* %15, align 4
  br label %160

160:                                              ; preds = %201, %159
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %6, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %204

164:                                              ; preds = %160
  %165 = load i8**, i8*** %3, align 8
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 1, %166
  %168 = load i32, i32* %15, align 4
  %169 = add nsw i32 %167, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %165, i64 %170
  %172 = load i8*, i8** %171, align 8
  store i8* %172, i8** %16, align 8
  store i32 0, i32* %17, align 4
  br label %173

173:                                              ; preds = %197, %164
  %174 = load i32, i32* %17, align 4
  %175 = load i32, i32* %5, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %200

177:                                              ; preds = %173
  %178 = load i8*, i8** %16, align 8
  %179 = load i32, i32* %17, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %178, i64 %180
  %182 = load i8, i8* %181, align 1
  store i8 %182, i8* %18, align 1
  %183 = load i32, i32* %7, align 4
  %184 = load i8, i8* %18, align 1
  %185 = call i32 @find_color(%struct.index* %73, i32 %183, i8 signext %184, i32* %19)
  store i32 %185, i32* %20, align 4
  %186 = load i32, i32* %20, align 4
  %187 = call i32 @SDL_assert(i32 %186)
  %188 = load i32, i32* %19, align 4
  %189 = load i32*, i32** %13, align 8
  %190 = load i32, i32* %15, align 4
  %191 = load i32, i32* %5, align 4
  %192 = mul nsw i32 %190, %191
  %193 = load i32, i32* %17, align 4
  %194 = add nsw i32 %192, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %189, i64 %195
  store i32 %188, i32* %196, align 4
  br label %197

197:                                              ; preds = %177
  %198 = load i32, i32* %17, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %17, align 4
  br label %173

200:                                              ; preds = %173
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %15, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %15, align 4
  br label %160

204:                                              ; preds = %160
  store i32 255, i32* %21, align 4
  store i32 65280, i32* %22, align 4
  store i32 16711680, i32* %23, align 4
  store i32 -16777216, i32* %24, align 4
  %205 = load i32*, i32** %13, align 8
  %206 = load i32, i32* %5, align 4
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* %5, align 4
  %209 = mul nsw i32 4, %208
  %210 = load i32, i32* %22, align 4
  %211 = load i32, i32* %23, align 4
  %212 = load i32, i32* %24, align 4
  %213 = load i32, i32* %21, align 4
  %214 = call %struct.TYPE_4__* @SDL_CreateRGBSurfaceFrom(i32* %205, i32 %206, i32 %207, i32 32, i32 %209, i32 %210, i32 %211, i32 %212, i32 %213)
  store %struct.TYPE_4__* %214, %struct.TYPE_4__** %25, align 8
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %216 = icmp ne %struct.TYPE_4__* %215, null
  br i1 %216, label %219, label %217

217:                                              ; preds = %204
  %218 = call i32 @LOGE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  store i32 1, i32* %14, align 4
  br label %227

219:                                              ; preds = %204
  %220 = load i32, i32* @SDL_PREALLOC, align 4
  %221 = xor i32 %220, -1
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = and i32 %224, %221
  store i32 %225, i32* %223, align 4
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  store %struct.TYPE_4__* %226, %struct.TYPE_4__** %2, align 8
  store i32 1, i32* %14, align 4
  br label %227

227:                                              ; preds = %219, %217, %157
  %228 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %228)
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %229
}

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @SDL_assert(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @SDL_malloc(i32) #1

declare dso_local i32 @LOGE(i8*) #1

declare dso_local i32 @find_color(%struct.index*, i32, i8 signext, i32*) #1

declare dso_local %struct.TYPE_4__* @SDL_CreateRGBSurfaceFrom(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_time.c_test_localtime64_s.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_time.c_test_localtime64_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Expected _localtime64_s to return EINVAL, got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Expected errno to be EINVAL, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [97 x i8] c"Expected tm structure members to be initialized to -1, got (%d, %d, %d, %d, %d, %d, %d, %d, %d)\0A\00", align 1
@_MAX__TIME64_T = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_localtime64_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_localtime64_s() #0 {
  %1 = alloca %struct.tm, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @EBADF, align 4
  store i32 %4, i32* @errno, align 4
  %5 = call i32 @p_localtime64_s(%struct.tm* null, i32* null)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @EINVAL, align 4
  %8 = icmp eq i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* %3, align 4
  %11 = call i32 (i32, i8*, i32, ...) @ok(i32 %9, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @errno, align 4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 (i32, i8*, i32, ...) @ok(i32 %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EBADF, align 4
  store i32 %18, i32* @errno, align 4
  store i32 -559038737, i32* %2, align 4
  %19 = call i32 @p_localtime64_s(%struct.tm* null, i32* %2)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %3, align 4
  %25 = call i32 (i32, i8*, i32, ...) @ok(i32 %23, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @errno, align 4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 (i32, i8*, i32, ...) @ok(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = call i32 @memset(%struct.tm* %1, i32 0, i32 36)
  %33 = load i32, i32* @EBADF, align 4
  store i32 %33, i32* @errno, align 4
  %34 = call i32 @p_localtime64_s(%struct.tm* %1, i32* null)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @EINVAL, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %3, align 4
  %40 = call i32 (i32, i8*, i32, ...) @ok(i32 %38, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @errno, align 4
  %42 = load i32, i32* @EINVAL, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 (i32, i8*, i32, ...) @ok(i32 %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %82

50:                                               ; preds = %0
  %51 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %82

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %82

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %82

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %82

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 8
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, -1
  br label %82

82:                                               ; preds = %78, %74, %70, %66, %62, %58, %54, %50, %0
  %83 = phi i1 [ false, %74 ], [ false, %70 ], [ false, %66 ], [ false, %62 ], [ false, %58 ], [ false, %54 ], [ false, %50 ], [ false, %0 ], [ %81, %78 ]
  %84 = zext i1 %83 to i32
  %85 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 8
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i8*, i32, ...) @ok(i32 %84, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %88, i32 %90, i32 %92, i32 %94, i32 %96, i32 %98, i32 %100, i32 %102)
  %104 = call i32 @memset(%struct.tm* %1, i32 0, i32 36)
  store i32 -1, i32* %2, align 4
  %105 = load i32, i32* @EBADF, align 4
  store i32 %105, i32* @errno, align 4
  %106 = call i32 @p_localtime64_s(%struct.tm* %1, i32* %2)
  store i32 %106, i32* %3, align 4
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* @EINVAL, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %3, align 4
  %112 = call i32 (i32, i8*, i32, ...) @ok(i32 %110, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @errno, align 4
  %114 = load i32, i32* @EINVAL, align 4
  %115 = icmp eq i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* @errno, align 4
  %118 = call i32 (i32, i8*, i32, ...) @ok(i32 %116, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %154

122:                                              ; preds = %82
  %123 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %154

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %154

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, -1
  br i1 %133, label %134, label %154

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %154

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %154

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 6
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %146, label %154

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 7
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, -1
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 8
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, -1
  br label %154

154:                                              ; preds = %150, %146, %142, %138, %134, %130, %126, %122, %82
  %155 = phi i1 [ false, %146 ], [ false, %142 ], [ false, %138 ], [ false, %134 ], [ false, %130 ], [ false, %126 ], [ false, %122 ], [ false, %82 ], [ %153, %150 ]
  %156 = zext i1 %155 to i32
  %157 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 7
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 8
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i32, i8*, i32, ...) @ok(i32 %156, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.2, i64 0, i64 0), i32 %158, i32 %160, i32 %162, i32 %164, i32 %166, i32 %168, i32 %170, i32 %172, i32 %174)
  %176 = call i32 @memset(%struct.tm* %1, i32 0, i32 36)
  %177 = load i32, i32* @_MAX__TIME64_T, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %2, align 4
  %179 = load i32, i32* @EBADF, align 4
  store i32 %179, i32* @errno, align 4
  %180 = call i32 @p_localtime64_s(%struct.tm* %1, i32* %2)
  store i32 %180, i32* %3, align 4
  %181 = load i32, i32* %3, align 4
  %182 = load i32, i32* @EINVAL, align 4
  %183 = icmp eq i32 %181, %182
  %184 = zext i1 %183 to i32
  %185 = load i32, i32* %3, align 4
  %186 = call i32 (i32, i8*, i32, ...) @ok(i32 %184, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %185)
  %187 = load i32, i32* @errno, align 4
  %188 = load i32, i32* @EINVAL, align 4
  %189 = icmp eq i32 %187, %188
  %190 = zext i1 %189 to i32
  %191 = load i32, i32* @errno, align 4
  %192 = call i32 (i32, i8*, i32, ...) @ok(i32 %190, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %191)
  %193 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, -1
  br i1 %195, label %196, label %228

196:                                              ; preds = %154
  %197 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, -1
  br i1 %199, label %200, label %228

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, -1
  br i1 %203, label %204, label %228

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, -1
  br i1 %207, label %208, label %228

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %210, -1
  br i1 %211, label %212, label %228

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 5
  %214 = load i32, i32* %213, align 4
  %215 = icmp eq i32 %214, -1
  br i1 %215, label %216, label %228

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 6
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %218, -1
  br i1 %219, label %220, label %228

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 7
  %222 = load i32, i32* %221, align 4
  %223 = icmp eq i32 %222, -1
  br i1 %223, label %224, label %228

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 8
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, -1
  br label %228

228:                                              ; preds = %224, %220, %216, %212, %208, %204, %200, %196, %154
  %229 = phi i1 [ false, %220 ], [ false, %216 ], [ false, %212 ], [ false, %208 ], [ false, %204 ], [ false, %200 ], [ false, %196 ], [ false, %154 ], [ %227, %224 ]
  %230 = zext i1 %229 to i32
  %231 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 4
  %240 = load i32, i32* %239, align 4
  %241 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 5
  %242 = load i32, i32* %241, align 4
  %243 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 6
  %244 = load i32, i32* %243, align 4
  %245 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 7
  %246 = load i32, i32* %245, align 4
  %247 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 8
  %248 = load i32, i32* %247, align 4
  %249 = call i32 (i32, i8*, i32, ...) @ok(i32 %230, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.2, i64 0, i64 0), i32 %232, i32 %234, i32 %236, i32 %238, i32 %240, i32 %242, i32 %244, i32 %246, i32 %248)
  ret void
}

declare dso_local i32 @p_localtime64_s(%struct.tm*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/win/basesrv/extr_vdm.c_BaseSrvFillCommandInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/win/basesrv/extr_vdm.c_BaseSrvFillCommandInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i32, i32, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BaseSrvFillCommandInfo(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %6 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 26
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 26
  store i32 %9, i32* %11, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 25
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 25
  store i32 %14, i32* %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 24
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 24
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 23
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 23
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 22
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 22
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 21
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 21
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 20
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 20
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 19
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 19
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 18
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 18
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 17
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 17
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %59, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 16
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 16
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @RtlMoveMemory(i32 %67, i32* %70, i32 %74)
  br label %78

76:                                               ; preds = %2
  %77 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %76, %64
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp sge i64 %86, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %78
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 15
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 15
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 @RtlMoveMemory(i32 %94, i32* %97, i32 %101)
  br label %105

103:                                              ; preds = %78
  %104 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %103, %91
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp sge i64 %113, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %105
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 14
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 14
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i32 @RtlMoveMemory(i32 %121, i32* %124, i32 %128)
  br label %132

130:                                              ; preds = %105
  %131 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %130, %118
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  store i64 %135, i64* %137, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = icmp sge i64 %140, %143
  br i1 %144, label %145, label %157

145:                                              ; preds = %132
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 13
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 13
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = trunc i64 %154 to i32
  %156 = call i32 @RtlMoveMemory(i32 %148, i32* %151, i32 %155)
  br label %159

157:                                              ; preds = %132
  %158 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %157, %145
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 3
  store i64 %162, i64* %164, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = icmp sge i64 %167, %170
  br i1 %171, label %172, label %184

172:                                              ; preds = %159
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 12
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 12
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = trunc i64 %181 to i32
  %183 = call i32 @RtlMoveMemory(i32 %175, i32* %178, i32 %182)
  br label %186

184:                                              ; preds = %159
  %185 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %185, i32* %5, align 4
  br label %186

186:                                              ; preds = %184, %172
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 4
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 4
  store i64 %189, i64* %191, align 8
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 11
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 11
  %197 = call i32 @RtlMoveMemory(i32 %194, i32* %196, i32 4)
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 8
  %204 = icmp sge i32 %200, %203
  br i1 %204, label %205, label %216

205:                                              ; preds = %186
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 10
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 10
  %211 = load i32*, i32** %210, align 8
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @RtlMoveMemory(i32 %208, i32* %211, i32 %214)
  br label %218

216:                                              ; preds = %186
  %217 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %217, i32* %5, align 4
  br label %218

218:                                              ; preds = %216, %205
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 5
  store i32 %221, i32* %223, align 8
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 6
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 4
  %230 = icmp sge i32 %226, %229
  br i1 %230, label %231, label %242

231:                                              ; preds = %218
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 9
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 9
  %237 = load i32*, i32** %236, align 8
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @RtlMoveMemory(i32 %234, i32* %237, i32 %240)
  br label %244

242:                                              ; preds = %218
  %243 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %243, i32* %5, align 4
  br label %244

244:                                              ; preds = %242, %231
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 6
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 6
  store i32 %247, i32* %249, align 4
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 7
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 7
  %255 = load i32, i32* %254, align 8
  %256 = icmp sge i32 %252, %255
  br i1 %256, label %257, label %268

257:                                              ; preds = %244
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 8
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 8
  %263 = load i32*, i32** %262, align 8
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 7
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @RtlMoveMemory(i32 %260, i32* %263, i32 %266)
  br label %270

268:                                              ; preds = %244
  %269 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %269, i32* %5, align 4
  br label %270

270:                                              ; preds = %268, %257
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 7
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 7
  store i32 %273, i32* %275, align 8
  %276 = load i32, i32* %5, align 4
  ret i32 %276
}

declare dso_local i32 @RtlMoveMemory(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

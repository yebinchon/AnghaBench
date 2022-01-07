; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_State_insert.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_State_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_x3 = type { i32, i32, %struct.TYPE_3__**, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_3__**, %struct.TYPE_3__*, %struct.state*, %struct.config* }
%struct.state = type { i32 }
%struct.config = type { i32 }

@x3a = common dso_local global %struct.s_x3* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @State_insert(%struct.state* %0, %struct.config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.state*, align 8
  %5 = alloca %struct.config*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.s_x3, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  store %struct.state* %0, %struct.state** %4, align 8
  store %struct.config* %1, %struct.config** %5, align 8
  %14 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %15 = icmp eq %struct.s_x3* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %247

17:                                               ; preds = %2
  %18 = load %struct.config*, %struct.config** %5, align 8
  %19 = call i32 @statehash(%struct.config* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %22 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %20, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %27 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %28, i64 %30
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %6, align 8
  br label %33

33:                                               ; preds = %44, %17
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load %struct.config*, %struct.config** %38, align 8
  %40 = load %struct.config*, %struct.config** %5, align 8
  %41 = call i64 @statecmp(%struct.config* %39, %struct.config* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %247

44:                                               ; preds = %36
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  store %struct.TYPE_3__* %47, %struct.TYPE_3__** %6, align 8
  br label %33

48:                                               ; preds = %33
  %49 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %50 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %53 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sge i32 %51, %54
  br i1 %55, label %56, label %181

56:                                               ; preds = %48
  %57 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %58 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 %59, 2
  store i32 %60, i32* %10, align 4
  %61 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %11, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  %62 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %63 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %11, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i64 @calloc(i32 %66, i32 40)
  %68 = inttoptr i64 %67 to %struct.TYPE_3__*
  %69 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %11, i32 0, i32 3
  store %struct.TYPE_3__* %68, %struct.TYPE_3__** %69, align 8
  %70 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %11, i32 0, i32 3
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = icmp eq %struct.TYPE_3__* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %247

74:                                               ; preds = %56
  %75 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %11, i32 0, i32 3
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = bitcast %struct.TYPE_3__* %79 to %struct.TYPE_3__**
  %81 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %11, i32 0, i32 2
  store %struct.TYPE_3__** %80, %struct.TYPE_3__*** %81, align 8
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %92, %74
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %11, i32 0, i32 2
  %88 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %88, i64 %90
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %91, align 8
  br label %92

92:                                               ; preds = %86
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %82

95:                                               ; preds = %82
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %170, %95
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %99 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %173

102:                                              ; preds = %96
  %103 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %104 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %103, i32 0, i32 3
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 %107
  store %struct.TYPE_3__* %108, %struct.TYPE_3__** %12, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  %111 = load %struct.config*, %struct.config** %110, align 8
  %112 = call i32 @statehash(%struct.config* %111)
  %113 = load i32, i32* %10, align 4
  %114 = sub nsw i32 %113, 1
  %115 = and i32 %112, %114
  store i32 %115, i32* %7, align 4
  %116 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %11, i32 0, i32 3
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %119
  store %struct.TYPE_3__* %120, %struct.TYPE_3__** %13, align 8
  %121 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %11, i32 0, i32 2
  %122 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %122, i64 %124
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = icmp ne %struct.TYPE_3__* %126, null
  br i1 %127, label %128, label %138

128:                                              ; preds = %102
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %11, i32 0, i32 2
  %132 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %132, i64 %134
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  store %struct.TYPE_3__** %130, %struct.TYPE_3__*** %137, align 8
  br label %138

138:                                              ; preds = %128, %102
  %139 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %11, i32 0, i32 2
  %140 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %140, i64 %142
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  store %struct.TYPE_3__* %144, %struct.TYPE_3__** %146, align 8
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 3
  %149 = load %struct.config*, %struct.config** %148, align 8
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 3
  store %struct.config* %149, %struct.config** %151, align 8
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 2
  %154 = load %struct.state*, %struct.state** %153, align 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 2
  store %struct.state* %154, %struct.state** %156, align 8
  %157 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %11, i32 0, i32 2
  %158 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %158, i64 %160
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  store %struct.TYPE_3__** %161, %struct.TYPE_3__*** %163, align 8
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %165 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %11, i32 0, i32 2
  %166 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %166, i64 %168
  store %struct.TYPE_3__* %164, %struct.TYPE_3__** %169, align 8
  br label %170

170:                                              ; preds = %138
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %9, align 4
  br label %96

173:                                              ; preds = %96
  %174 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %175 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %174, i32 0, i32 3
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %175, align 8
  %177 = call i32 @free(%struct.TYPE_3__* %176)
  %178 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %179 = bitcast %struct.s_x3* %178 to i8*
  %180 = bitcast %struct.s_x3* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %179, i8* align 8 %180, i64 24, i1 false)
  br label %181

181:                                              ; preds = %173, %48
  %182 = load i32, i32* %8, align 4
  %183 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %184 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = sub nsw i32 %185, 1
  %187 = and i32 %182, %186
  store i32 %187, i32* %7, align 4
  %188 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %189 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %188, i32 0, i32 3
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %189, align 8
  %191 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %192 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %192, align 4
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i64 %195
  store %struct.TYPE_3__* %196, %struct.TYPE_3__** %6, align 8
  %197 = load %struct.config*, %struct.config** %5, align 8
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 3
  store %struct.config* %197, %struct.config** %199, align 8
  %200 = load %struct.state*, %struct.state** %4, align 8
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 2
  store %struct.state* %200, %struct.state** %202, align 8
  %203 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %204 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %203, i32 0, i32 2
  %205 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %204, align 8
  %206 = load i32, i32* %7, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %205, i64 %207
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %208, align 8
  %210 = icmp ne %struct.TYPE_3__* %209, null
  br i1 %210, label %211, label %222

211:                                              ; preds = %181
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 1
  %214 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %215 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %214, i32 0, i32 2
  %216 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %215, align 8
  %217 = load i32, i32* %7, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %216, i64 %218
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 0
  store %struct.TYPE_3__** %213, %struct.TYPE_3__*** %221, align 8
  br label %222

222:                                              ; preds = %211, %181
  %223 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %224 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %223, i32 0, i32 2
  %225 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %224, align 8
  %226 = load i32, i32* %7, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %225, i64 %227
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %228, align 8
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 1
  store %struct.TYPE_3__* %229, %struct.TYPE_3__** %231, align 8
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %233 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %234 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %233, i32 0, i32 2
  %235 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %234, align 8
  %236 = load i32, i32* %7, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %235, i64 %237
  store %struct.TYPE_3__* %232, %struct.TYPE_3__** %238, align 8
  %239 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %240 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %239, i32 0, i32 2
  %241 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %240, align 8
  %242 = load i32, i32* %7, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %241, i64 %243
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 0
  store %struct.TYPE_3__** %244, %struct.TYPE_3__*** %246, align 8
  store i32 1, i32* %3, align 4
  br label %247

247:                                              ; preds = %222, %73, %43, %16
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local i32 @statehash(%struct.config*) #1

declare dso_local i64 @statecmp(%struct.config*, %struct.config*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_3__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vlc/compat/extr_gmtime_r.c_gmtime_r.c'
source_filename = "/home/carl/AnghaBench/vlc/compat/extr_gmtime_r.c_gmtime_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i64, i64, i32, i64 }
%struct.TYPE_3__ = type { i64, i32 }

@gmtime_r.normal = internal constant [12 x i16] [i16 31, i16 28, i16 31, i16 30, i16 31, i16 30, i16 31, i16 31, i16 30, i16 31, i16 30, i16 31], align 16
@gmtime_r.leap = internal constant [12 x i16] [i16 31, i16 29, i16 31, i16 30, i16 31, i16 30, i16 31, i16 31, i16 30, i16 31, i16 30, i16 31], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tm* @gmtime_r(i64* %0, %struct.tm* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.tm*, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i16*, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca %struct.TYPE_3__, align 8
  %12 = alloca %struct.TYPE_3__, align 8
  %13 = alloca %struct.TYPE_3__, align 8
  store i64* %0, i64** %3, align 8
  store %struct.tm* %1, %struct.tm** %4, align 8
  %14 = load i64*, i64** %3, align 8
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 62167219200, %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call { i64, i32 } @lldiv(i64 %19, i32 60)
  %21 = bitcast %struct.TYPE_3__* %7 to { i64, i32 }*
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 0
  %23 = extractvalue { i64, i32 } %20, 0
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 1
  %25 = extractvalue { i64, i32 } %20, 1
  store i32 %25, i32* %24, align 8
  %26 = bitcast %struct.TYPE_3__* %5 to i8*
  %27 = bitcast %struct.TYPE_3__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 16, i1 false)
  %28 = load i64*, i64** %3, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 60
  store i32 %34, i32* %32, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %35, align 8
  br label %38

38:                                               ; preds = %31, %2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.tm*, %struct.tm** %4, align 8
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call { i64, i32 } @lldiv(i64 %44, i32 60)
  %46 = bitcast %struct.TYPE_3__* %8 to { i64, i32 }*
  %47 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %46, i32 0, i32 0
  %48 = extractvalue { i64, i32 } %45, 0
  store i64 %48, i64* %47, align 8
  %49 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %46, i32 0, i32 1
  %50 = extractvalue { i64, i32 } %45, 1
  store i32 %50, i32* %49, align 8
  %51 = bitcast %struct.TYPE_3__* %5 to i8*
  %52 = bitcast %struct.TYPE_3__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 16, i1 false)
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.tm*, %struct.tm** %4, align 8
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call { i64, i32 } @lldiv(i64 %58, i32 24)
  %60 = bitcast %struct.TYPE_3__* %9 to { i64, i32 }*
  %61 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %60, i32 0, i32 0
  %62 = extractvalue { i64, i32 } %59, 0
  store i64 %62, i64* %61, align 8
  %63 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %60, i32 0, i32 1
  %64 = extractvalue { i64, i32 } %59, 1
  store i32 %64, i32* %63, align 8
  %65 = bitcast %struct.TYPE_3__* %5 to i8*
  %66 = bitcast %struct.TYPE_3__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 16, i1 false)
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.tm*, %struct.tm** %4, align 8
  %70 = getelementptr inbounds %struct.tm, %struct.tm* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 6
  %74 = srem i64 %73, 7
  %75 = trunc i64 %74 to i32
  %76 = load %struct.tm*, %struct.tm** %4, align 8
  %77 = getelementptr inbounds %struct.tm, %struct.tm* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call { i64, i32 } @lldiv(i64 %79, i32 146097)
  %81 = bitcast %struct.TYPE_3__* %10 to { i64, i32 }*
  %82 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %81, i32 0, i32 0
  %83 = extractvalue { i64, i32 } %80, 0
  store i64 %83, i64* %82, align 8
  %84 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %81, i32 0, i32 1
  %85 = extractvalue { i64, i32 } %80, 1
  store i32 %85, i32* %84, align 8
  %86 = bitcast %struct.TYPE_3__* %5 to i8*
  %87 = bitcast %struct.TYPE_3__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 16, i1 false)
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = mul nsw i64 400, %89
  %91 = trunc i64 %90 to i32
  %92 = load %struct.tm*, %struct.tm** %4, align 8
  %93 = getelementptr inbounds %struct.tm, %struct.tm* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp sge i32 %95, 36525
  br i1 %96, label %97, label %133

97:                                               ; preds = %38
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = sub nsw i32 %99, 36525
  store i32 %100, i32* %98, align 8
  %101 = load %struct.tm*, %struct.tm** %4, align 8
  %102 = getelementptr inbounds %struct.tm, %struct.tm* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 100
  store i32 %104, i32* %102, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = call { i64, i32 } @lldiv(i64 %107, i32 36524)
  %109 = bitcast %struct.TYPE_3__* %11 to { i64, i32 }*
  %110 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %109, i32 0, i32 0
  %111 = extractvalue { i64, i32 } %108, 0
  store i64 %111, i64* %110, align 8
  %112 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %109, i32 0, i32 1
  %113 = extractvalue { i64, i32 } %108, 1
  store i32 %113, i32* %112, align 8
  %114 = bitcast %struct.TYPE_3__* %5 to i8*
  %115 = bitcast %struct.TYPE_3__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %114, i8* align 8 %115, i64 16, i1 false)
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = mul nsw i64 %117, 100
  %119 = load %struct.tm*, %struct.tm** %4, align 8
  %120 = getelementptr inbounds %struct.tm, %struct.tm* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %118
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %120, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = icmp sge i32 %126, 59
  br i1 %127, label %128, label %132

128:                                              ; preds = %97
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %128, %97
  br label %133

133:                                              ; preds = %132, %38
  %134 = load %struct.tm*, %struct.tm** %4, align 8
  %135 = getelementptr inbounds %struct.tm, %struct.tm* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = sub nsw i32 %136, 1900
  store i32 %137, i32* %135, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = call { i64, i32 } @lldiv(i64 %140, i32 1461)
  %142 = bitcast %struct.TYPE_3__* %12 to { i64, i32 }*
  %143 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %142, i32 0, i32 0
  %144 = extractvalue { i64, i32 } %141, 0
  store i64 %144, i64* %143, align 8
  %145 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %142, i32 0, i32 1
  %146 = extractvalue { i64, i32 } %141, 1
  store i32 %146, i32* %145, align 8
  %147 = bitcast %struct.TYPE_3__* %5 to i8*
  %148 = bitcast %struct.TYPE_3__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %147, i8* align 8 %148, i64 16, i1 false)
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = mul nsw i64 4, %150
  %152 = load %struct.tm*, %struct.tm** %4, align 8
  %153 = getelementptr inbounds %struct.tm, %struct.tm* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %151
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %153, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = icmp sge i32 %159, 366
  br i1 %160, label %161, label %188

161:                                              ; preds = %133
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = sub nsw i32 %163, 366
  store i32 %164, i32* %162, align 8
  %165 = load %struct.tm*, %struct.tm** %4, align 8
  %166 = getelementptr inbounds %struct.tm, %struct.tm* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = call { i64, i32 } @lldiv(i64 %171, i32 365)
  %173 = bitcast %struct.TYPE_3__* %13 to { i64, i32 }*
  %174 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %173, i32 0, i32 0
  %175 = extractvalue { i64, i32 } %172, 0
  store i64 %175, i64* %174, align 8
  %176 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %173, i32 0, i32 1
  %177 = extractvalue { i64, i32 } %172, 1
  store i32 %177, i32* %176, align 8
  %178 = bitcast %struct.TYPE_3__* %5 to i8*
  %179 = bitcast %struct.TYPE_3__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %178, i8* align 8 %179, i64 16, i1 false)
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.tm*, %struct.tm** %4, align 8
  %183 = getelementptr inbounds %struct.tm, %struct.tm* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %185, %181
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %183, align 8
  store i16* getelementptr inbounds ([12 x i16], [12 x i16]* @gmtime_r.normal, i64 0, i64 0), i16** %6, align 8
  br label %189

188:                                              ; preds = %133
  store i16* getelementptr inbounds ([12 x i16], [12 x i16]* @gmtime_r.leap, i64 0, i64 0), i16** %6, align 8
  br label %189

189:                                              ; preds = %188, %161
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = load %struct.tm*, %struct.tm** %4, align 8
  %194 = getelementptr inbounds %struct.tm, %struct.tm* %193, i32 0, i32 5
  store i64 %192, i64* %194, align 8
  %195 = load %struct.tm*, %struct.tm** %4, align 8
  %196 = getelementptr inbounds %struct.tm, %struct.tm* %195, i32 0, i32 6
  store i64 0, i64* %196, align 8
  br label %197

197:                                              ; preds = %219, %189
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = load i16*, i16** %6, align 8
  %201 = load %struct.tm*, %struct.tm** %4, align 8
  %202 = getelementptr inbounds %struct.tm, %struct.tm* %201, i32 0, i32 6
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i16, i16* %200, i64 %203
  %205 = load i16, i16* %204, align 2
  %206 = zext i16 %205 to i32
  %207 = icmp sge i32 %199, %206
  br i1 %207, label %208, label %224

208:                                              ; preds = %197
  %209 = load i16*, i16** %6, align 8
  %210 = load %struct.tm*, %struct.tm** %4, align 8
  %211 = getelementptr inbounds %struct.tm, %struct.tm* %210, i32 0, i32 6
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds i16, i16* %209, i64 %212
  %214 = load i16, i16* %213, align 2
  %215 = zext i16 %214 to i32
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = sub nsw i32 %217, %215
  store i32 %218, i32* %216, align 8
  br label %219

219:                                              ; preds = %208
  %220 = load %struct.tm*, %struct.tm** %4, align 8
  %221 = getelementptr inbounds %struct.tm, %struct.tm* %220, i32 0, i32 6
  %222 = load i64, i64* %221, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %221, align 8
  br label %197

224:                                              ; preds = %197
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = add nsw i32 %226, 1
  %228 = load %struct.tm*, %struct.tm** %4, align 8
  %229 = getelementptr inbounds %struct.tm, %struct.tm* %228, i32 0, i32 7
  store i32 %227, i32* %229, align 8
  %230 = load %struct.tm*, %struct.tm** %4, align 8
  %231 = getelementptr inbounds %struct.tm, %struct.tm* %230, i32 0, i32 8
  store i64 0, i64* %231, align 8
  %232 = load %struct.tm*, %struct.tm** %4, align 8
  ret %struct.tm* %232
}

declare dso_local { i64, i32 } @lldiv(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

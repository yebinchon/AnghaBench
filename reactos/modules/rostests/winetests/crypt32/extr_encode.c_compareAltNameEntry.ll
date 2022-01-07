; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_encode.c_compareAltNameEntry.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_encode.c_compareAltNameEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Expected name choice %d, got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Unexpected name\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Unexpected IP address length %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Unexpected value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_8__*)* @compareAltNameEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compareAltNameEntry(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__, align 4
  %6 = alloca { i64, i32 }, align 8
  %7 = alloca %struct.TYPE_9__, align 4
  %8 = alloca { i64, i32 }, align 8
  %9 = alloca %struct.TYPE_9__, align 4
  %10 = alloca { i64, i32 }, align 8
  %11 = alloca %struct.TYPE_9__, align 4
  %12 = alloca { i64, i32 }, align 8
  %13 = alloca %struct.TYPE_9__, align 4
  %14 = alloca { i64, i32 }, align 8
  %15 = alloca %struct.TYPE_9__, align 4
  %16 = alloca { i64, i32 }, align 8
  %17 = alloca %struct.TYPE_9__, align 4
  %18 = alloca { i64, i32 }, align 8
  %19 = alloca %struct.TYPE_9__, align 4
  %20 = alloca { i64, i32 }, align 8
  %21 = alloca %struct.TYPE_9__, align 4
  %22 = alloca { i64, i32 }, align 8
  %23 = alloca %struct.TYPE_9__, align 4
  %24 = alloca { i64, i32 }, align 8
  %25 = alloca %struct.TYPE_9__, align 4
  %26 = alloca { i64, i32 }, align 8
  %27 = alloca %struct.TYPE_9__, align 4
  %28 = alloca { i64, i32 }, align 8
  %29 = alloca %struct.TYPE_9__, align 4
  %30 = alloca { i64, i32 }, align 8
  %31 = alloca %struct.TYPE_9__, align 4
  %32 = alloca { i64, i32 }, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %35, %38
  %40 = zext i1 %39 to i32
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %209

55:                                               ; preds = %2
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %208 [
    i32 130, label %59
    i32 134, label %59
    i32 133, label %59
    i32 129, label %59
    i32 131, label %59
    i32 128, label %145
    i32 135, label %145
    i32 132, label %145
  ]

59:                                               ; preds = %55, %55, %55, %55, %55
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call { i64, i32 } @U(i32 %62)
  store { i64, i32 } %63, { i64, i32 }* %6, align 8
  %64 = bitcast { i64, i32 }* %6 to i8*
  %65 = bitcast %struct.TYPE_9__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 8 %64, i64 12, i1 false)
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %59
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call { i64, i32 } @U(i32 %72)
  store { i64, i32 } %73, { i64, i32 }* %8, align 8
  %74 = bitcast { i64, i32 }* %8 to i8*
  %75 = bitcast %struct.TYPE_9__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %75, i8* align 8 %74, i64 12, i1 false)
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %141

79:                                               ; preds = %69, %59
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call { i64, i32 } @U(i32 %82)
  store { i64, i32 } %83, { i64, i32 }* %10, align 8
  %84 = bitcast { i64, i32 }* %10 to i8*
  %85 = bitcast %struct.TYPE_9__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 8 %84, i64 12, i1 false)
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %79
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call { i64, i32 } @U(i32 %92)
  store { i64, i32 } %93, { i64, i32 }* %12, align 8
  %94 = bitcast { i64, i32 }* %12 to i8*
  %95 = bitcast %struct.TYPE_9__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 8 %94, i64 12, i1 false)
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @lstrlenW(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %141

100:                                              ; preds = %89, %79
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call { i64, i32 } @U(i32 %103)
  store { i64, i32 } %104, { i64, i32 }* %14, align 8
  %105 = bitcast { i64, i32 }* %14 to i8*
  %106 = bitcast %struct.TYPE_9__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %106, i8* align 8 %105, i64 12, i1 false)
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %100
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call { i64, i32 } @U(i32 %113)
  store { i64, i32 } %114, { i64, i32 }* %16, align 8
  %115 = bitcast { i64, i32 }* %16 to i8*
  %116 = bitcast %struct.TYPE_9__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 8 %115, i64 12, i1 false)
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @lstrlenW(i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %141

121:                                              ; preds = %110, %100
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call { i64, i32 } @U(i32 %124)
  store { i64, i32 } %125, { i64, i32 }* %18, align 8
  %126 = bitcast { i64, i32 }* %18 to i8*
  %127 = bitcast %struct.TYPE_9__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %127, i8* align 8 %126, i64 12, i1 false)
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call { i64, i32 } @U(i32 %132)
  store { i64, i32 } %133, { i64, i32 }* %20, align 8
  %134 = bitcast { i64, i32 }* %20 to i8*
  %135 = bitcast %struct.TYPE_9__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %135, i8* align 8 %134, i64 12, i1 false)
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @lstrcmpW(i32 %129, i32 %137)
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  br label %141

141:                                              ; preds = %121, %110, %89, %69
  %142 = phi i1 [ true, %110 ], [ true, %89 ], [ true, %69 ], [ %140, %121 ]
  %143 = zext i1 %142 to i32
  %144 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %208

145:                                              ; preds = %55, %55, %55
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call { i64, i32 } @U(i32 %148)
  store { i64, i32 } %149, { i64, i32 }* %22, align 8
  %150 = bitcast { i64, i32 }* %22 to i8*
  %151 = bitcast %struct.TYPE_9__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %151, i8* align 8 %150, i64 12, i1 false)
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call { i64, i32 } @U(i32 %157)
  store { i64, i32 } %158, { i64, i32 }* %24, align 8
  %159 = bitcast { i64, i32 }* %24 to i8*
  %160 = bitcast %struct.TYPE_9__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %160, i8* align 8 %159, i64 12, i1 false)
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %154, %163
  %165 = zext i1 %164 to i32
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call { i64, i32 } @U(i32 %168)
  store { i64, i32 } %169, { i64, i32 }* %26, align 8
  %170 = bitcast { i64, i32 }* %26 to i8*
  %171 = bitcast %struct.TYPE_9__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %171, i8* align 8 %170, i64 12, i1 false)
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i32, i8*, ...) @ok(i32 %165, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %174)
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call { i64, i32 } @U(i32 %178)
  store { i64, i32 } %179, { i64, i32 }* %28, align 8
  %180 = bitcast { i64, i32 }* %28 to i8*
  %181 = bitcast %struct.TYPE_9__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %181, i8* align 8 %180, i64 12, i1 false)
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call { i64, i32 } @U(i32 %187)
  store { i64, i32 } %188, { i64, i32 }* %30, align 8
  %189 = bitcast { i64, i32 }* %30 to i8*
  %190 = bitcast %struct.TYPE_9__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %190, i8* align 8 %189, i64 12, i1 false)
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call { i64, i32 } @U(i32 %196)
  store { i64, i32 } %197, { i64, i32 }* %32, align 8
  %198 = bitcast { i64, i32 }* %32 to i8*
  %199 = bitcast %struct.TYPE_9__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %199, i8* align 8 %198, i64 12, i1 false)
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @memcmp(i32 %184, i32 %193, i32 %202)
  %204 = icmp ne i32 %203, 0
  %205 = xor i1 %204, true
  %206 = zext i1 %205 to i32
  %207 = call i32 (i32, i8*, ...) @ok(i32 %206, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %208

208:                                              ; preds = %55, %145, %141
  br label %209

209:                                              ; preds = %208, %2
  ret void
}

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local { i64, i32 } @U(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @lstrlenW(i32) #1

declare dso_local i32 @lstrcmpW(i32, i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

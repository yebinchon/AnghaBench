; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_suminfo.c_read_properties_from_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_suminfo.c_read_properties_from_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i64* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_16__ = type { i64 }

@SECT_HDR_SIZE = common dso_local global i64 0, align 8
@MSI_MAX_PROPS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Unknown property ID %d\0A\00", align 1
@VT_EMPTY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"propid %d has unknown type\0A\00", align 1
@VT_FILETIME = common dso_local global i64 0, align 8
@VT_LPSTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"not enough data\0A\00", align 1
@VT_I2 = common dso_local global i64 0, align 8
@VT_I4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32*, i64)* @read_properties_from_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_properties_from_data(%struct.TYPE_14__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_14__, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i64*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = bitcast i32* %18 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %15, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i64, i64* @SECT_HDR_SIZE, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = bitcast i32* %22 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %14, align 8
  store i64 0, i64* %8, align 8
  br label %24

24:                                               ; preds = %212, %3
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %215

30:                                               ; preds = %24
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MSI_MAX_PROPS, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %43)
  br label %215

45:                                               ; preds = %30
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @get_type(i64 %50)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @VT_EMPTY, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %45
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  br label %215

62:                                               ; preds = %45
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32, i32* %63, i64 %68
  %70 = bitcast i32* %69 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %70, %struct.TYPE_15__** %10, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sub i64 %71, %76
  %78 = sub i64 %77, 8
  store i64 %78, i64* %9, align 8
  %79 = load i64, i64* %9, align 8
  %80 = icmp ugt i64 8, %79
  br i1 %80, label %106, label %81

81:                                               ; preds = %62
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @VT_FILETIME, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i64, i64* %9, align 8
  %89 = icmp ugt i64 4, %88
  br i1 %89, label %106, label %90

90:                                               ; preds = %87, %81
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @VT_LPSTR, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add i64 %102, 8
  %104 = load i64, i64* %9, align 8
  %105 = icmp ugt i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %96, %87, %62
  %107 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %215

108:                                              ; preds = %96, %90
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  store i64 %111, i64* %112, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @VT_LPSTR, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %149

118:                                              ; preds = %108
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i64* @msi_alloc(i32 %123)
  store i64* %124, i64** %16, align 8
  %125 = load i64*, i64** %16, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @memcpy(i64* %125, i32 %130, i32 %135)
  %137 = load i64*, i64** %16, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %137, i64 %144
  store i64 0, i64* %145, align 8
  %146 = load i64*, i64** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 3
  store i64* %146, i64** %148, align 8
  br label %191

149:                                              ; preds = %108
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @VT_FILETIME, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %149
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  br label %190

162:                                              ; preds = %149
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @VT_I2, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %162
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  br label %189

175:                                              ; preds = %162
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @VT_I4, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %175
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  br label %188

188:                                              ; preds = %181, %175
  br label %189

189:                                              ; preds = %188, %168
  br label %190

190:                                              ; preds = %189, %155
  br label %191

191:                                              ; preds = %190, %118
  %192 = load i64, i64* %7, align 8
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %192, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %191
  %198 = load i64, i64* %7, align 8
  %199 = call i32 @propvar_changetype(%struct.TYPE_14__* %13, %struct.TYPE_14__* %11, i64 %198)
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %12, align 8
  br label %201

200:                                              ; preds = %191
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %12, align 8
  br label %201

201:                                              ; preds = %200, %197
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %204 = load i64, i64* %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i64 %207
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %210 = bitcast %struct.TYPE_14__* %208 to i8*
  %211 = bitcast %struct.TYPE_14__* %209 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %210, i8* align 8 %211, i64 32, i1 false)
  br label %212

212:                                              ; preds = %201
  %213 = load i64, i64* %8, align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* %8, align 8
  br label %24

215:                                              ; preds = %106, %55, %38, %24
  ret void
}

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i64 @get_type(i64) #1

declare dso_local i64* @msi_alloc(i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @propvar_changetype(%struct.TYPE_14__*, %struct.TYPE_14__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_finfo.c_VfatGetNetworkOpenInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_finfo.c_VfatGetNetworkOpenInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32*, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_15__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_15__, %struct.TYPE_15__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }

@STATUS_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_ARCHIVE = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_SYSTEM = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_HIDDEN = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_READONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Synthesizing FILE_ATTRIBUTE_NORMAL\0A\00", align 1
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i32, %struct.TYPE_23__*, i32*)* @VfatGetNetworkOpenInformation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VfatGetNetworkOpenInformation(%struct.TYPE_23__* %0, i32 %1, %struct.TYPE_23__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %11 = call i32 @ASSERT(%struct.TYPE_23__* %10)
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %13 = call i32 @ASSERT(%struct.TYPE_23__* %12)
  %14 = load i32*, i32** %9, align 8
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 4
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @STATUS_BUFFER_OVERFLOW, align 4
  store i32 %19, i32* %5, align 4
  br label %181

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @vfatVolumeIsFatX(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %74

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 7
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 9
  %38 = call i32 @FsdDosDateTimeToSystemTime(i32 %25, i32 %30, i32 %35, %struct.TYPE_15__* %37)
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 7
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 8
  %52 = call i32 @FsdDosDateTimeToSystemTime(i32 %39, i32 %44, i32 %49, %struct.TYPE_15__* %51)
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 7
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 5
  %66 = call i32 @FsdDosDateTimeToSystemTime(i32 %53, i32 %58, i32 %63, %struct.TYPE_15__* %65)
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 4
  br label %119

74:                                               ; preds = %20
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 7
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 7
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 9
  %88 = call i32 @FsdDosDateTimeToSystemTime(i32 %75, i32 %80, i32 %85, %struct.TYPE_15__* %87)
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 7
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 8
  %97 = call i32 @FsdDosDateTimeToSystemTime(i32 %89, i32 %94, i32 0, %struct.TYPE_15__* %96)
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 7
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 5
  %111 = call i32 @FsdDosDateTimeToSystemTime(i32 %98, i32 %103, i32 %108, %struct.TYPE_15__* %110)
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 4
  br label %119

119:                                              ; preds = %74, %24
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %121 = call i64 @vfatFCBIsDirectory(%struct.TYPE_23__* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  store i64 0, i64* %129, align 8
  br label %145

130:                                              ; preds = %119
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 4
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 1
  %136 = bitcast %struct.TYPE_20__* %132 to i8*
  %137 = bitcast %struct.TYPE_20__* %135 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %136, i8* align 8 %137, i64 8, i1 false)
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 0
  %143 = bitcast %struct.TYPE_21__* %139 to i8*
  %144 = bitcast %struct.TYPE_21__* %142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %143, i8* align 8 %144, i64 8, i1 false)
  br label %145

145:                                              ; preds = %130, %123
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, 63
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %157 = load i32, i32* @FILE_ATTRIBUTE_ARCHIVE, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @FILE_ATTRIBUTE_SYSTEM, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @FILE_ATTRIBUTE_HIDDEN, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %164 = or i32 %162, %163
  %165 = and i32 %155, %164
  %166 = icmp eq i32 0, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %145
  %168 = call i32 @DPRINT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %169 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %167, %145
  %175 = load i32*, i32** %9, align 8
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = sub i64 %177, 4
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %175, align 4
  %180 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %174, %18
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i32 @ASSERT(%struct.TYPE_23__*) #1

declare dso_local i64 @vfatVolumeIsFatX(i32) #1

declare dso_local i32 @FsdDosDateTimeToSystemTime(i32, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i64 @vfatFCBIsDirectory(%struct.TYPE_23__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DPRINT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

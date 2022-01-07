; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/udf/extr_udf_file.c_offset_to_lba.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/udf/extr_udf_file.c_offset_to_lba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Negative offset value\00", align 1
@CDIO_INVALID_LBA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot deal with strategy4096 yet!\00", align 1
@ICBTAG_FLAG_AD_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"File offset out of bounds\00", align 1
@UDF_BLOCKSIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"Don't know how to data in ICB handle yet\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Don't know how to handle extended addresses yet\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Unsupported allocation descriptor %d\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Negative LBA value\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Unknown strategy type %d\00", align 1
@DRIVER_OP_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, i64, i64*, i64*)* @offset_to_lba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @offset_to_lba(%struct.TYPE_15__* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %10, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = bitcast i32* %25 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %11, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %12, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @uint16_from_le(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %13, align 4
  %34 = load i64, i64* %7, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %4
  %37 = call i32 (i8*, ...) @cdio_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %38 = load i64, i64* @CDIO_INVALID_LBA, align 8
  store i64 %38, i64* %5, align 8
  br label %188

39:                                               ; preds = %4
  %40 = load i32, i32* %13, align 4
  switch i32 %40, label %184 [
    i32 4096, label %41
    i32 128, label %44
  ]

41:                                               ; preds = %39
  %42 = call i32 (i8*, ...) @cdio_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i64, i64* @CDIO_INVALID_LBA, align 8
  store i64 %43, i64* %5, align 8
  br label %188

44:                                               ; preds = %39
  store i64 0, i64* %14, align 8
  store i32 0, i32* %17, align 4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ICBTAG_FLAG_AD_MASK, align 4
  %49 = and i32 %47, %48
  %50 = call i8* @uint16_from_le(i32 %49)
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* %18, align 4
  switch i32 %52, label %164 [
    i32 129, label %53
    i32 130, label %104
    i32 131, label %157
    i32 132, label %161
  ]

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %88, %53
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* %7, align 8
  %57 = sub nsw i64 %56, %55
  store i64 %57, i64* %7, align 8
  %58 = load i32, i32* %17, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 16, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @uint32_from_le(i32 %66)
  %68 = icmp sgt i64 %63, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %54
  %70 = call i32 (i8*, ...) @cdio_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i64, i64* @CDIO_INVALID_LBA, align 8
  store i64 %71, i64* %5, align 8
  br label %188

72:                                               ; preds = %54
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @uint32_from_le(i32 %75)
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = trunc i64 %79 to i32
  %81 = call i64 @GETICB(i32 %80)
  %82 = inttoptr i64 %81 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %82, %struct.TYPE_11__** %19, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %14, align 8
  %86 = load i32, i32* %17, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %17, align 4
  br label %88

88:                                               ; preds = %72
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* %14, align 8
  %91 = icmp sge i64 %89, %90
  br i1 %91, label %54, label %92

92:                                               ; preds = %88
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* @UDF_BLOCKSIZE, align 8
  %95 = sdiv i64 %93, %94
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %95, %98
  store i64 %99, i64* %15, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64*, i64** %9, align 8
  store i64 %102, i64* %103, align 8
  br label %168

104:                                              ; preds = %44
  br label %105

105:                                              ; preds = %139, %104
  %106 = load i64, i64* %14, align 8
  %107 = load i64, i64* %7, align 8
  %108 = sub nsw i64 %107, %106
  store i64 %108, i64* %7, align 8
  %109 = load i32, i32* %17, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 16, %110
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = sext i32 %113 to i64
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @uint32_from_le(i32 %117)
  %119 = icmp sgt i64 %114, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %105
  %121 = call i32 (i8*, ...) @cdio_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i64, i64* @CDIO_INVALID_LBA, align 8
  store i64 %122, i64* %5, align 8
  br label %188

123:                                              ; preds = %105
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @uint32_from_le(i32 %126)
  %128 = load i32, i32* %16, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %127, %129
  %131 = trunc i64 %130 to i32
  %132 = call i64 @GETICB(i32 %131)
  %133 = inttoptr i64 %132 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %133, %struct.TYPE_12__** %20, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %14, align 8
  %137 = load i32, i32* %17, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %17, align 4
  br label %139

139:                                              ; preds = %123
  %140 = load i64, i64* %7, align 8
  %141 = load i64, i64* %14, align 8
  %142 = icmp sge i64 %140, %141
  br i1 %142, label %105, label %143

143:                                              ; preds = %139
  %144 = load i64, i64* %7, align 8
  %145 = load i64, i64* @UDF_BLOCKSIZE, align 8
  %146 = sdiv i64 %144, %145
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i64 @uint32_from_le(i32 %150)
  %152 = add nsw i64 %146, %151
  store i64 %152, i64* %15, align 8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64*, i64** %9, align 8
  store i64 %155, i64* %156, align 8
  br label %168

157:                                              ; preds = %44
  %158 = load i64*, i64** %9, align 8
  store i64 0, i64* %158, align 8
  %159 = call i32 (i8*, ...) @cdio_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %160 = load i64, i64* @CDIO_INVALID_LBA, align 8
  store i64 %160, i64* %5, align 8
  br label %188

161:                                              ; preds = %44
  %162 = call i32 (i8*, ...) @cdio_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %163 = load i64, i64* @CDIO_INVALID_LBA, align 8
  store i64 %163, i64* %5, align 8
  br label %188

164:                                              ; preds = %44
  %165 = load i32, i32* %18, align 4
  %166 = call i32 (i8*, ...) @cdio_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %165)
  %167 = load i64, i64* @CDIO_INVALID_LBA, align 8
  store i64 %167, i64* %5, align 8
  br label %188

168:                                              ; preds = %143, %92
  %169 = load i64, i64* %15, align 8
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %169, %172
  %174 = load i64*, i64** %8, align 8
  store i64 %173, i64* %174, align 8
  %175 = load i64*, i64** %8, align 8
  %176 = load i64, i64* %175, align 8
  %177 = icmp slt i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %168
  %179 = call i32 (i8*, ...) @cdio_warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %180 = load i64, i64* @CDIO_INVALID_LBA, align 8
  store i64 %180, i64* %5, align 8
  br label %188

181:                                              ; preds = %168
  %182 = load i64*, i64** %8, align 8
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %5, align 8
  br label %188

184:                                              ; preds = %39
  %185 = load i32, i32* %13, align 4
  %186 = call i32 (i8*, ...) @cdio_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %185)
  %187 = load i64, i64* @DRIVER_OP_ERROR, align 8
  store i64 %187, i64* %5, align 8
  br label %188

188:                                              ; preds = %184, %181, %178, %164, %161, %157, %120, %69, %41, %36
  %189 = load i64, i64* %5, align 8
  ret i64 %189
}

declare dso_local i8* @uint16_from_le(i32) #1

declare dso_local i32 @cdio_warn(i8*, ...) #1

declare dso_local i64 @uint32_from_le(i32) #1

declare dso_local i64 @GETICB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_SetNonResidentAttributeDataLength.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_SetNonResidentAttributeDataLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i64, i64, i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i64, i32, i32 }
%struct.TYPE_26__ = type { i64, i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Error looking up final large MCB entry!\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Highest VCN of record: %I64u\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"LastClusterInDataRun: %I64u\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Error: Unable to allocate requested clusters!\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Error: Unable to add data run!\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Allocated Size: %I64u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SetNonResidentAttributeDataLength(%struct.TYPE_25__* %0, %struct.TYPE_23__* %1, i64 %2, i64 %3, %struct.TYPE_24__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_26__, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %7, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_24__* %4, %struct.TYPE_24__** %11, align 8
  %22 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %22, i32* %12, align 4
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %13, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %13, align 8
  %31 = call i64 @ROUND_UP(i32 %29, i64 %30)
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %9, align 8
  %34 = add nsw i64 %32, %33
  %35 = inttoptr i64 %34 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %35, %struct.TYPE_22__** %15, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %13, align 8
  %43 = sdiv i64 %41, %42
  store i64 %43, i64* %16, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ASSERT(i32 %48)
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %14, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %144

58:                                               ; preds = %5
  %59 = load i64, i64* %14, align 8
  %60 = load i64, i64* %13, align 8
  %61 = sdiv i64 %59, %60
  %62 = load i64, i64* %16, align 8
  %63 = sub nsw i64 %61, %62
  store i64 %63, i64* %17, align 8
  %64 = load i64, i64* %16, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 1
  store i64 0, i64* %67, align 8
  br label %93

68:                                               ; preds = %58
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 1
  %79 = ptrtoint i64* %78 to i32
  %80 = call i32 @FsRtlLookupLargeMcbEntry(i32* %70, i32 %77, i32 %79, i32* null, i32* null, i32* null, i32* null)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %68
  %83 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %89)
  %91 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %91, i32* %6, align 4
  br label %232

92:                                               ; preds = %68
  br label %93

93:                                               ; preds = %92, %66
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @DPRINT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %95)
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @DPRINT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %102)
  br label %104

104:                                              ; preds = %134, %93
  %105 = load i64, i64* %17, align 8
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %143

107:                                              ; preds = %104
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 1
  %112 = load i64, i64* %17, align 8
  %113 = call i32 @NtfsAllocateClusters(%struct.TYPE_25__* %108, i64 %111, i64 %112, i64* %19, i64* %20)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @NT_SUCCESS(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %107
  %118 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %6, align 4
  br label %232

120:                                              ; preds = %107
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %123 = load i64, i64* %9, align 8
  %124 = load i64, i64* %10, align 8
  %125 = load i64, i64* %19, align 8
  %126 = load i64, i64* %20, align 8
  %127 = call i32 @AddRun(%struct.TYPE_25__* %121, %struct.TYPE_23__* %122, i64 %123, i64 %124, i64 %125, i64 %126)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @NT_SUCCESS(i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %120
  %132 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %133 = load i32, i32* %12, align 4
  store i32 %133, i32* %6, align 4
  br label %232

134:                                              ; preds = %120
  %135 = load i64, i64* %20, align 8
  %136 = load i64, i64* %17, align 8
  %137 = sub nsw i64 %136, %135
  store i64 %137, i64* %17, align 8
  %138 = load i64, i64* %19, align 8
  %139 = load i64, i64* %20, align 8
  %140 = add nsw i64 %138, %139
  %141 = sub nsw i64 %140, 1
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 0
  store i64 %141, i64* %142, align 8
  br label %104

143:                                              ; preds = %104
  br label %166

144:                                              ; preds = %5
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %14, align 8
  %152 = icmp sgt i64 %150, %151
  br i1 %152, label %153, label %165

153:                                              ; preds = %144
  %154 = load i64, i64* %16, align 8
  %155 = load i64, i64* %14, align 8
  %156 = load i64, i64* %13, align 8
  %157 = sdiv i64 %155, %156
  %158 = sub nsw i64 %154, %157
  store i64 %158, i64* %21, align 8
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %161 = load i64, i64* %9, align 8
  %162 = load i64, i64* %10, align 8
  %163 = load i64, i64* %21, align 8
  %164 = call i32 @FreeClusters(%struct.TYPE_25__* %159, %struct.TYPE_23__* %160, i64 %161, i64 %162, i64 %163)
  store i32 %164, i32* %12, align 4
  br label %165

165:                                              ; preds = %153, %144
  br label %166

166:                                              ; preds = %165, %143
  %167 = load i64, i64* %14, align 8
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 0
  store i64 %167, i64* %172, align 8
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 3
  store i32 %175, i32* %180, align 4
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 2
  store i32 %183, i32* %188, align 8
  %189 = load i64, i64* %14, align 8
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 0
  store i64 %189, i64* %192, align 8
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 3
  store i32 %195, i32* %198, align 4
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 2
  store i32 %201, i32* %204, align 8
  %205 = load i64, i64* %14, align 8
  %206 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = sdiv i64 %205, %209
  %211 = sub nsw i64 %210, 1
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 1
  store i64 %211, i64* %216, align 8
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 1
  store i64 %222, i64* %225, align 8
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i64 %229)
  %231 = load i32, i32* %12, align 4
  store i32 %231, i32* %6, align 4
  br label %232

232:                                              ; preds = %166, %131, %117, %82
  %233 = load i32, i32* %6, align 4
  ret i32 %233
}

declare dso_local i64 @ROUND_UP(i32, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @FsRtlLookupLargeMcbEntry(i32*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @DPRINT(i8*, i64) #1

declare dso_local i32 @NtfsAllocateClusters(%struct.TYPE_25__*, i64, i64, i64*, i64*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @AddRun(%struct.TYPE_25__*, %struct.TYPE_23__*, i64, i64, i64, i64) #1

declare dso_local i32 @FreeClusters(%struct.TYPE_25__*, %struct.TYPE_23__*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_btree.c_AllocateIndexNode.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_btree.c_AllocateIndexNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_26__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"AllocateIndexNode(%p, %p, %lu, %p, %lu, %p) called.\0A\00", align 1
@AttributeBitmap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i32] [i32 36, i32 73, i32 51, i32 48, i32 0], align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"FIXME: Need to add bitmap attribute!\0A\00", align 1
@STATUS_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@ATTR_RECORD_ALIGNMENT = common dso_local global i32 0, align 4
@NonPagedPool = common dso_local global i32 0, align 4
@TAG_NTFS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Error: failed to allocate bitmap!\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"ERROR: Failed to set length of bitmap attribute!\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"ERROR: Failed to set length of index allocation!\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"ERROR: Failed to update file record!\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"ERROR: Unable to write to $I30 bitmap attribute!\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"New VCN: %I64u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AllocateIndexNode(%struct.TYPE_25__* %0, i32 %1, i32 %2, %struct.TYPE_24__* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_24__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_26__, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), %struct.TYPE_25__* %26, i32 %27, i32 %28, %struct.TYPE_24__* %29, i32 %30, i32* %31)
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %36 = call i32 @AttributeDataLength(%struct.TYPE_22__* %35)
  store i32 %36, i32* %16, align 4
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @AttributeBitmap, align 4
  %40 = call i32 @FindAttribute(%struct.TYPE_25__* %37, i32 %38, i32 %39, i8* bitcast ([5 x i32]* @.str.1 to i8*), i32 4, %struct.TYPE_24__** %15, i32* %18)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @NT_SUCCESS(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %6
  %45 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @STATUS_NOT_IMPLEMENTED, align 4
  store i32 %46, i32* %7, align 4
  br label %197

47:                                               ; preds = %6
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %49, align 8
  %51 = call i32 @AttributeDataLength(%struct.TYPE_22__* %50)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %52, %56
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %19, align 4
  %59 = sdiv i32 %58, 8
  store i32 %59, i32* %24, align 4
  %60 = load i32, i32* %24, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %24, align 4
  %62 = load i32, i32* %24, align 4
  %63 = load i32, i32* @ATTR_RECORD_ALIGNMENT, align 4
  %64 = call i32 @ALIGN_UP(i32 %62, i32 %63)
  store i32 %64, i32* %24, align 4
  %65 = load i32, i32* @NonPagedPool, align 4
  %66 = load i32, i32* %24, align 4
  %67 = sext i32 %66 to i64
  %68 = add i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* @TAG_NTFS, align 4
  %71 = call i32* @ExAllocatePoolWithTag(i32 %65, i32 %69, i32 %70)
  store i32* %71, i32** %20, align 8
  %72 = load i32*, i32** %20, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %47
  %75 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %77 = call i32 @ReleaseAttributeContext(%struct.TYPE_24__* %76)
  %78 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %78, i32* %7, align 4
  br label %197

79:                                               ; preds = %47
  %80 = load i32*, i32** %20, align 8
  %81 = ptrtoint i32* %80 to i32
  %82 = call i64 @ALIGN_UP_BY(i32 %81, i32 4)
  %83 = inttoptr i64 %82 to i32*
  store i32* %83, i32** %21, align 8
  %84 = load i32*, i32** %21, align 8
  %85 = load i32, i32* %24, align 4
  %86 = call i32 @RtlZeroMemory(i32* %84, i32 %85)
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %89 = load i32*, i32** %21, align 8
  %90 = ptrtoint i32* %89 to i32
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @ReadAttribute(%struct.TYPE_25__* %87, %struct.TYPE_24__* %88, i32 0, i32 %90, i32 %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32*, i32** %21, align 8
  %94 = load i32, i32* %19, align 4
  %95 = call i32 @RtlInitializeBitMap(i32* %22, i32* %93, i32 %94)
  %96 = load i32, i32* %24, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %130

99:                                               ; preds = %79
  %100 = load i32, i32* %24, align 4
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 0
  store i32 %100, i32* %101, align 4
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %99
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @SetNonResidentAttributeDataLength(%struct.TYPE_25__* %109, %struct.TYPE_24__* %110, i32 %111, i32 %112, %struct.TYPE_26__* %25)
  store i32 %113, i32* %14, align 4
  br label %120

114:                                              ; preds = %99
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %117 = load i32, i32* %18, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @SetResidentAttributeDataLength(%struct.TYPE_25__* %115, %struct.TYPE_24__* %116, i32 %117, i32 %118, %struct.TYPE_26__* %25)
  store i32 %119, i32* %14, align 4
  br label %120

120:                                              ; preds = %114, %108
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @NT_SUCCESS(i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %120
  %125 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %127 = call i32 @ReleaseAttributeContext(%struct.TYPE_24__* %126)
  %128 = load i32, i32* %14, align 4
  store i32 %128, i32* %7, align 4
  br label %197

129:                                              ; preds = %120
  br label %130

130:                                              ; preds = %129, %79
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %131, %132
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 0
  store i32 %133, i32* %134, align 4
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @SetNonResidentAttributeDataLength(%struct.TYPE_25__* %135, %struct.TYPE_24__* %136, i32 %137, i32 %138, %struct.TYPE_26__* %25)
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %14, align 4
  %141 = call i32 @NT_SUCCESS(i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %130
  %144 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %146 = call i32 @ReleaseAttributeContext(%struct.TYPE_24__* %145)
  %147 = load i32, i32* %14, align 4
  store i32 %147, i32* %7, align 4
  br label %197

148:                                              ; preds = %130
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @UpdateFileRecord(%struct.TYPE_25__* %149, i32 %152, i32 %153)
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* %14, align 4
  %156 = call i32 @NT_SUCCESS(i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %148
  %159 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %161 = call i32 @ReleaseAttributeContext(%struct.TYPE_24__* %160)
  %162 = load i32, i32* %14, align 4
  store i32 %162, i32* %7, align 4
  br label %197

163:                                              ; preds = %148
  %164 = load i32, i32* %19, align 4
  %165 = call i32 @RtlSetBits(i32* %22, i32 %164, i32 1)
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %168 = load i32*, i32** %21, align 8
  %169 = ptrtoint i32* %168 to i32
  %170 = load i32, i32* %24, align 4
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @WriteAttribute(%struct.TYPE_25__* %166, %struct.TYPE_24__* %167, i32 0, i32 %169, i32 %170, i32* %23, i32 %171)
  store i32 %172, i32* %14, align 4
  %173 = load i32, i32* %14, align 4
  %174 = call i32 @NT_SUCCESS(i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %163
  %177 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176, %163
  %179 = load i32, i32* %19, align 4
  %180 = load i32, i32* %10, align 4
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = sdiv i32 %180, %184
  %186 = mul nsw i32 %179, %185
  %187 = load i32*, i32** %13, align 8
  store i32 %186, i32* %187, align 4
  %188 = load i32*, i32** %13, align 8
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @DPRINT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %189)
  %191 = load i32*, i32** %20, align 8
  %192 = load i32, i32* @TAG_NTFS, align 4
  %193 = call i32 @ExFreePoolWithTag(i32* %191, i32 %192)
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %195 = call i32 @ReleaseAttributeContext(%struct.TYPE_24__* %194)
  %196 = load i32, i32* %14, align 4
  store i32 %196, i32* %7, align 4
  br label %197

197:                                              ; preds = %178, %158, %143, %124, %74, %44
  %198 = load i32, i32* %7, align 4
  ret i32 %198
}

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @AttributeDataLength(%struct.TYPE_22__*) #1

declare dso_local i32 @FindAttribute(%struct.TYPE_25__*, i32, i32, i8*, i32, %struct.TYPE_24__**, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ALIGN_UP(i32, i32) #1

declare dso_local i32* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @ReleaseAttributeContext(%struct.TYPE_24__*) #1

declare dso_local i64 @ALIGN_UP_BY(i32, i32) #1

declare dso_local i32 @RtlZeroMemory(i32*, i32) #1

declare dso_local i32 @ReadAttribute(%struct.TYPE_25__*, %struct.TYPE_24__*, i32, i32, i32) #1

declare dso_local i32 @RtlInitializeBitMap(i32*, i32*, i32) #1

declare dso_local i32 @SetNonResidentAttributeDataLength(%struct.TYPE_25__*, %struct.TYPE_24__*, i32, i32, %struct.TYPE_26__*) #1

declare dso_local i32 @SetResidentAttributeDataLength(%struct.TYPE_25__*, %struct.TYPE_24__*, i32, i32, %struct.TYPE_26__*) #1

declare dso_local i32 @UpdateFileRecord(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @RtlSetBits(i32*, i32, i32) #1

declare dso_local i32 @WriteAttribute(%struct.TYPE_25__*, %struct.TYPE_24__*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @DPRINT(i8*, i32) #1

declare dso_local i32 @ExFreePoolWithTag(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

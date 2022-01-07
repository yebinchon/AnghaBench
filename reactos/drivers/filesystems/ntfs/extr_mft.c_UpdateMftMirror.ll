; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_UpdateMftMirror.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_UpdateMftMirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Error: Failed to allocate memory for $MFTMirr!\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@NTFS_FILE_MFTMIRR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"ERROR: Failed to read $MFTMirr!\0A\00", align 1
@AttributeData = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"ERROR: Couldn't find $DATA attribute!\0A\00", align 1
@NonPagedPool = common dso_local global i32 0, align 4
@TAG_NTFS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"Error: Couldn't allocate memory for $DATA buffer!\0A\00", align 1
@ULONG_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Error: Failed to read $DATA for $MFTMirr!\0A\00", align 1
@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [53 x i8] c"ERROR: Failed to write $DATA attribute of $MFTMirr!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UpdateMftMirror(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = call i32 @ExAllocateFromNPagedLookasideList(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = call i32 @DPRINT1(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %19, i32* %2, align 4
  br label %156

20:                                               ; preds = %1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = load i32, i32* @NTFS_FILE_MFTMIRR, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @ReadFileRecord(%struct.TYPE_14__* %21, i32 %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @NT_SUCCESS(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %20
  %29 = call i32 @DPRINT1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @ExFreeToNPagedLookasideList(i32* %31, i32 %32)
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %2, align 4
  br label %156

35:                                               ; preds = %20
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @AttributeData, align 4
  %39 = call i32 @FindAttribute(%struct.TYPE_14__* %36, i32 %37, i32 %38, i8* bitcast ([1 x i32]* @.str.2 to i8*), i32 0, %struct.TYPE_15__** %5, i32* null)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @NT_SUCCESS(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %35
  %44 = call i32 @DPRINT1(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @ExFreeToNPagedLookasideList(i32* %46, i32 %47)
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %2, align 4
  br label %156

50:                                               ; preds = %35
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @AttributeData, align 4
  %56 = call i32 @FindAttribute(%struct.TYPE_14__* %51, i32 %54, i32 %55, i8* bitcast ([1 x i32]* @.str.2 to i8*), i32 0, %struct.TYPE_15__** %6, i32* null)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @NT_SUCCESS(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %50
  %61 = call i32 @DPRINT1(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %63 = call i32 @ReleaseAttributeContext(%struct.TYPE_15__* %62)
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @ExFreeToNPagedLookasideList(i32* %65, i32 %66)
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %2, align 4
  br label %156

69:                                               ; preds = %50
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @AttributeDataLength(i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = srem i32 %74, %78
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @ASSERT(i32 %81)
  %83 = load i32, i32* @NonPagedPool, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @TAG_NTFS, align 4
  %86 = call i64 @ExAllocatePoolWithTag(i32 %83, i32 %84, i32 %85)
  store i64 %86, i64* %7, align 8
  %87 = load i64, i64* %7, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %69
  %90 = call i32 @DPRINT1(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %92 = call i32 @ReleaseAttributeContext(%struct.TYPE_15__* %91)
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %94 = call i32 @ReleaseAttributeContext(%struct.TYPE_15__* %93)
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @ExFreeToNPagedLookasideList(i32* %96, i32 %97)
  %99 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %99, i32* %2, align 4
  br label %156

100:                                              ; preds = %69
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @ULONG_MAX, align 4
  %103 = icmp slt i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @ASSERT(i32 %104)
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %108 = load i64, i64* %7, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = call i64 @ReadAttribute(%struct.TYPE_14__* %106, %struct.TYPE_15__* %107, i32 0, i64 %108, i64 %110)
  store i64 %111, i64* %10, align 8
  %112 = load i64, i64* %10, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = icmp ne i64 %112, %114
  br i1 %115, label %116, label %130

116:                                              ; preds = %100
  %117 = call i32 @DPRINT1(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %119 = call i32 @ReleaseAttributeContext(%struct.TYPE_15__* %118)
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %121 = call i32 @ReleaseAttributeContext(%struct.TYPE_15__* %120)
  %122 = load i64, i64* %7, align 8
  %123 = load i32, i32* @TAG_NTFS, align 4
  %124 = call i32 @ExFreePoolWithTag(i64 %122, i32 %123)
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @ExFreeToNPagedLookasideList(i32* %126, i32 %127)
  %129 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %129, i32* %2, align 4
  br label %156

130:                                              ; preds = %100
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %133 = load i64, i64* %7, align 8
  %134 = trunc i64 %133 to i32
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @WriteAttribute(%struct.TYPE_14__* %131, %struct.TYPE_15__* %132, i32 0, i32 %134, i32 %135, i64* %11, i32 %136)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @NT_SUCCESS(i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %130
  %142 = call i32 @DPRINT1(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %130
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %145 = call i32 @ReleaseAttributeContext(%struct.TYPE_15__* %144)
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %147 = call i32 @ReleaseAttributeContext(%struct.TYPE_15__* %146)
  %148 = load i64, i64* %7, align 8
  %149 = load i32, i32* @TAG_NTFS, align 4
  %150 = call i32 @ExFreePoolWithTag(i64 %148, i32 %149)
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = load i32, i32* %4, align 4
  %154 = call i32 @ExFreeToNPagedLookasideList(i32* %152, i32 %153)
  %155 = load i32, i32* %9, align 4
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %143, %116, %89, %60, %43, %28, %17
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @ExAllocateFromNPagedLookasideList(i32*) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @ReadFileRecord(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ExFreeToNPagedLookasideList(i32*, i32) #1

declare dso_local i32 @FindAttribute(%struct.TYPE_14__*, i32, i32, i8*, i32, %struct.TYPE_15__**, i32*) #1

declare dso_local i32 @ReleaseAttributeContext(%struct.TYPE_15__*) #1

declare dso_local i32 @AttributeDataLength(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i64 @ReadAttribute(%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i64, i64) #1

declare dso_local i32 @ExFreePoolWithTag(i64, i32) #1

declare dso_local i32 @WriteAttribute(%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

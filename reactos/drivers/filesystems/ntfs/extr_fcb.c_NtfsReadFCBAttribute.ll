; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_fcb.c_NtfsReadFCBAttribute.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_fcb.c_NtfsReadFCBAttribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@NonPagedPool = common dso_local global i32 0, align 4
@TAG_NTFS = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NtfsReadFCBAttribute(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3, i32 %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32** %5, i32*** %13, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = call i32* @ExAllocateFromNPagedLookasideList(i32* %19)
  store i32* %20, i32** %15, align 8
  %21 = load i32*, i32** %15, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %24, i32* %7, align 4
  br label %92

25:                                               ; preds = %6
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %15, align 8
  %31 = call i32 @ReadFileRecord(%struct.TYPE_12__* %26, i32 %29, i32* %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @NT_SUCCESS(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %25
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32*, i32** %15, align 8
  %39 = call i32 @ExFreeToNPagedLookasideList(i32* %37, i32* %38)
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %7, align 4
  br label %92

41:                                               ; preds = %25
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @FindAttribute(%struct.TYPE_12__* %42, i32* %43, i32 %44, i32 %45, i32 %46, %struct.TYPE_14__** %16, i32* null)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @NT_SUCCESS(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %41
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32*, i32** %15, align 8
  %55 = call i32 @ExFreeToNPagedLookasideList(i32* %53, i32* %54)
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %7, align 4
  br label %92

57:                                               ; preds = %41
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @AttributeDataLength(i32 %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* @NonPagedPool, align 4
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* @TAG_NTFS, align 4
  %65 = call i32* @ExAllocatePoolWithTag(i32 %62, i32 %63, i32 %64)
  %66 = load i32**, i32*** %13, align 8
  store i32* %65, i32** %66, align 8
  %67 = load i32**, i32*** %13, align 8
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %57
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %72 = call i32 @ReleaseAttributeContext(%struct.TYPE_14__* %71)
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32*, i32** %15, align 8
  %76 = call i32 @ExFreeToNPagedLookasideList(i32* %74, i32* %75)
  %77 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %77, i32* %7, align 4
  br label %92

78:                                               ; preds = %57
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %81 = load i32**, i32*** %13, align 8
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @ReadAttribute(%struct.TYPE_12__* %79, %struct.TYPE_14__* %80, i32 0, i32* %82, i32 %83)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %86 = call i32 @ReleaseAttributeContext(%struct.TYPE_14__* %85)
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32*, i32** %15, align 8
  %90 = call i32 @ExFreeToNPagedLookasideList(i32* %88, i32* %89)
  %91 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %78, %70, %51, %35, %23
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i32* @ExAllocateFromNPagedLookasideList(i32*) #1

declare dso_local i32 @ReadFileRecord(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ExFreeToNPagedLookasideList(i32*, i32*) #1

declare dso_local i32 @FindAttribute(%struct.TYPE_12__*, i32*, i32, i32, i32, %struct.TYPE_14__**, i32*) #1

declare dso_local i32 @AttributeDataLength(i32) #1

declare dso_local i32* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @ReleaseAttributeContext(%struct.TYPE_14__*) #1

declare dso_local i32 @ReadAttribute(%struct.TYPE_12__*, %struct.TYPE_14__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

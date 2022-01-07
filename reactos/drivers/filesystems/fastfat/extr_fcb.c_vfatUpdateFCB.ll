; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_fcb.c_vfatUpdateFCB.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_fcb.c_vfatUpdateFCB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_20__*, i32, i32, %struct.TYPE_22__, %struct.TYPE_21__, i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"vfatUpdateFCB(%p, %p, %p, %p)\0A\00", align 1
@TAG_FCB = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfatUpdateFCB(i32 %0, %struct.TYPE_20__* %1, %struct.TYPE_19__* %2, %struct.TYPE_20__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_20__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %16 = call i32 @DPRINT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %12, %struct.TYPE_20__* %13, %struct.TYPE_19__* %14, %struct.TYPE_20__* %15)
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 6
  %24 = call i32 @vfatMakeFullName(%struct.TYPE_20__* %17, i32* %19, i32* %21, %struct.TYPE_21__* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @NT_SUCCESS(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %98

30:                                               ; preds = %4
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @TAG_FCB, align 4
  %40 = call i32 @ExFreePoolWithTag(i64 %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %44 = call i32 @vfatDelFCBFromTable(i32 %42, %struct.TYPE_20__* %43)
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 7
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 6
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 5
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 4
  %64 = call i32 @vfatSplitPathName(%struct.TYPE_21__* %59, %struct.TYPE_22__* %61, i32* %63)
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %66, align 8
  store %struct.TYPE_20__* %67, %struct.TYPE_20__** %11, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = call i32 @RemoveEntryList(i32* %69)
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %74 = call i32 @vfatInitFCBFromDirEntry(i32 %71, %struct.TYPE_20__* %72, %struct.TYPE_19__* %73)
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %76 = call i64 @vfatFCBIsDirectory(%struct.TYPE_20__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %41
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 3
  %81 = call i32 @CcFlushCache(i32* %80, i32* null, i32 0, i32* null)
  br label %82

82:                                               ; preds = %78, %41
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 2
  store %struct.TYPE_20__* %83, %struct.TYPE_20__** %85, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = call i32 @InsertTailList(i32* %87, i32* %89)
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %93 = call i32 @vfatAddFCBToTable(i32 %91, %struct.TYPE_20__* %92)
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %96 = call i32 @vfatReleaseFCB(i32 %94, %struct.TYPE_20__* %95)
  %97 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %82, %28
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @DPRINT(i8*, i32, %struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @vfatMakeFullName(%struct.TYPE_20__*, i32*, i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ExFreePoolWithTag(i64, i32) #1

declare dso_local i32 @vfatDelFCBFromTable(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @vfatSplitPathName(%struct.TYPE_21__*, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @RemoveEntryList(i32*) #1

declare dso_local i32 @vfatInitFCBFromDirEntry(i32, %struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i64 @vfatFCBIsDirectory(%struct.TYPE_20__*) #1

declare dso_local i32 @CcFlushCache(i32*, i32*, i32, i32*) #1

declare dso_local i32 @InsertTailList(i32*, i32*) #1

declare dso_local i32 @vfatAddFCBToTable(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @vfatReleaseFCB(i32, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_finfo.c_NtfsQueryInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_finfo.c_NtfsQueryInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, %struct.TYPE_36__*, %struct.TYPE_27__*, %struct.TYPE_35__*, %struct.TYPE_34__* }
%struct.TYPE_36__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_35__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32, i64 }
%struct.TYPE_34__ = type { %struct.TYPE_31__, %struct.TYPE_28__ }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_28__ = type { i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"NtfsQueryInformation(%p)\0A\00", align 1
@IRPCONTEXT_CANWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unimplemented information class: %s\0A\00", align 1
@STATUS_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NtfsQueryInformation(%struct.TYPE_32__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_32__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca %struct.TYPE_36__*, align 8
  %7 = alloca %struct.TYPE_33__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_34__*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %3, align 8
  %13 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %15 = call i32 @DPRINT1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.TYPE_32__* %14)
  %16 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  store %struct.TYPE_34__* %18, %struct.TYPE_34__** %10, align 8
  %19 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  store %struct.TYPE_35__* %21, %struct.TYPE_35__** %5, align 8
  %22 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  store %struct.TYPE_27__* %24, %struct.TYPE_27__** %11, align 8
  %25 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %4, align 4
  %30 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_36__*, %struct.TYPE_36__** %31, align 8
  store %struct.TYPE_36__* %32, %struct.TYPE_36__** %6, align 8
  %33 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_33__*, %struct.TYPE_33__** %34, align 8
  store %struct.TYPE_33__* %35, %struct.TYPE_33__** %7, align 8
  %36 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %8, align 4
  %40 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %9, align 8
  %45 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IRPCONTEXT_CANWAIT, align 4
  %51 = call i32 @BooleanFlagOn(i32 %49, i32 %50)
  %52 = call i32 @ExAcquireResourceSharedLite(i32* %46, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %1
  %55 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %56 = call i32 @NtfsMarkIrpContextForQueue(%struct.TYPE_32__* %55)
  store i32 %56, i32* %2, align 4
  br label %132

57:                                               ; preds = %1
  %58 = load i32, i32* %4, align 4
  switch i32 %58, label %103 [
    i32 129, label %59
    i32 130, label %64
    i32 134, label %68
    i32 132, label %74
    i32 133, label %80
    i32 131, label %84
    i32 128, label %91
    i32 135, label %98
    i32 136, label %98
  ]

59:                                               ; preds = %57
  %60 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @NtfsGetStandardInformation(%struct.TYPE_33__* %60, %struct.TYPE_27__* %61, i32 %62, i64* %9)
  store i32 %63, i32* %12, align 4
  br label %108

64:                                               ; preds = %57
  %65 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @NtfsGetPositionInformation(%struct.TYPE_36__* %65, i32 %66, i64* %9)
  store i32 %67, i32* %12, align 4
  br label %108

68:                                               ; preds = %57
  %69 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %70 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @NtfsGetBasicInformation(%struct.TYPE_36__* %69, %struct.TYPE_33__* %70, %struct.TYPE_27__* %71, i32 %72, i64* %9)
  store i32 %73, i32* %12, align 4
  br label %108

74:                                               ; preds = %57
  %75 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %76 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @NtfsGetNameInformation(%struct.TYPE_36__* %75, %struct.TYPE_33__* %76, %struct.TYPE_27__* %77, i32 %78, i64* %9)
  store i32 %79, i32* %12, align 4
  br label %108

80:                                               ; preds = %57
  %81 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @NtfsGetInternalInformation(%struct.TYPE_33__* %81, i32 %82, i64* %9)
  store i32 %83, i32* %12, align 4
  br label %108

84:                                               ; preds = %57
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @NtfsGetNetworkOpenInformation(%struct.TYPE_33__* %85, i32 %88, i32 %89, i64* %9)
  store i32 %90, i32* %12, align 4
  br label %108

91:                                               ; preds = %57
  %92 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @NtfsGetSteamInformation(%struct.TYPE_33__* %92, i32 %95, i32 %96, i64* %9)
  store i32 %97, i32* %12, align 4
  br label %108

98:                                               ; preds = %57, %57
  %99 = load i32, i32* %4, align 4
  %100 = call %struct.TYPE_32__* @GetInfoClassName(i32 %99)
  %101 = call i32 @DPRINT1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_32__* %100)
  %102 = load i32, i32* @STATUS_NOT_IMPLEMENTED, align 4
  store i32 %102, i32* %12, align 4
  br label %108

103:                                              ; preds = %57
  %104 = load i32, i32* %4, align 4
  %105 = call %struct.TYPE_32__* @GetInfoClassName(i32 %104)
  %106 = call i32 @DPRINT1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_32__* %105)
  %107 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %103, %98, %91, %84, %80, %74, %68, %64, %59
  %109 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %109, i32 0, i32 0
  %111 = call i32 @ExReleaseResourceLite(i32* %110)
  %112 = load i32, i32* %12, align 4
  %113 = call i64 @NT_SUCCESS(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %108
  %116 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %9, align 8
  %122 = sub nsw i64 %120, %121
  %123 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %124, i32 0, i32 0
  store i64 %122, i64* %125, align 8
  br label %130

126:                                              ; preds = %108
  %127 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %128, i32 0, i32 0
  store i64 0, i64* %129, align 8
  br label %130

130:                                              ; preds = %126, %115
  %131 = load i32, i32* %12, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %130, %54
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @DPRINT1(i8*, %struct.TYPE_32__*) #1

declare dso_local i32 @ExAcquireResourceSharedLite(i32*, i32) #1

declare dso_local i32 @BooleanFlagOn(i32, i32) #1

declare dso_local i32 @NtfsMarkIrpContextForQueue(%struct.TYPE_32__*) #1

declare dso_local i32 @NtfsGetStandardInformation(%struct.TYPE_33__*, %struct.TYPE_27__*, i32, i64*) #1

declare dso_local i32 @NtfsGetPositionInformation(%struct.TYPE_36__*, i32, i64*) #1

declare dso_local i32 @NtfsGetBasicInformation(%struct.TYPE_36__*, %struct.TYPE_33__*, %struct.TYPE_27__*, i32, i64*) #1

declare dso_local i32 @NtfsGetNameInformation(%struct.TYPE_36__*, %struct.TYPE_33__*, %struct.TYPE_27__*, i32, i64*) #1

declare dso_local i32 @NtfsGetInternalInformation(%struct.TYPE_33__*, i32, i64*) #1

declare dso_local i32 @NtfsGetNetworkOpenInformation(%struct.TYPE_33__*, i32, i32, i64*) #1

declare dso_local i32 @NtfsGetSteamInformation(%struct.TYPE_33__*, i32, i32, i64*) #1

declare dso_local %struct.TYPE_32__* @GetInfoClassName(i32) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_dispatch.c_NtfsDispatch.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_dispatch.c_NtfsDispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }

@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4
@NTFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"NtfsDispatch()\0A\00", align 1
@NtfsGlobalData = common dso_local global %struct.TYPE_22__* null, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"NTFS write-support is EXPERIMENTAL and is disabled by default!\0A\00", align 1
@STATUS_ACCESS_DENIED = common dso_local global i32 0, align 4
@IRPCONTEXT_COMPLETE = common dso_local global i32 0, align 4
@IRPCONTEXT_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*)* @NtfsDispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NtfsDispatch(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  %5 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 3
  %7 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_25__* %7, %struct.TYPE_25__** %3, align 8
  %8 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @NTFS, align 4
  %10 = call i32 @TRACE_(i32 %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 (...) @FsRtlEnterFileSystem()
  %12 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %13 = call i32 @NtfsIsIrpTopLevel(%struct.TYPE_25__* %12)
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %71 [
    i32 132, label %17
    i32 129, label %20
    i32 133, label %23
    i32 130, label %26
    i32 135, label %38
    i32 131, label %41
    i32 136, label %44
    i32 128, label %47
    i32 138, label %59
    i32 139, label %62
    i32 137, label %65
    i32 134, label %68
  ]

17:                                               ; preds = %1
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %19 = call i32 @NtfsQueryVolumeInformation(%struct.TYPE_24__* %18)
  store i32 %19, i32* %4, align 4
  br label %71

20:                                               ; preds = %1
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %22 = call i32 @NtfsSetVolumeInformation(%struct.TYPE_24__* %21)
  store i32 %22, i32* %4, align 4
  br label %71

23:                                               ; preds = %1
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %25 = call i32 @NtfsQueryInformation(%struct.TYPE_24__* %24)
  store i32 %25, i32* %4, align 4
  br label %71

26:                                               ; preds = %1
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** @NtfsGlobalData, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = call i32 @DPRINT1(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %33, i32* %4, align 4
  br label %37

34:                                               ; preds = %26
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %36 = call i32 @NtfsSetInformation(%struct.TYPE_24__* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %31
  br label %71

38:                                               ; preds = %1
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %40 = call i32 @NtfsDirectoryControl(%struct.TYPE_24__* %39)
  store i32 %40, i32* %4, align 4
  br label %71

41:                                               ; preds = %1
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %43 = call i32 @NtfsRead(%struct.TYPE_24__* %42)
  store i32 %43, i32* %4, align 4
  br label %71

44:                                               ; preds = %1
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %46 = call i32 @NtfsDeviceControl(%struct.TYPE_24__* %45)
  store i32 %46, i32* %4, align 4
  br label %71

47:                                               ; preds = %1
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** @NtfsGlobalData, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = call i32 @DPRINT1(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %54, i32* %4, align 4
  br label %58

55:                                               ; preds = %47
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %57 = call i32 @NtfsWrite(%struct.TYPE_24__* %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %52
  br label %71

59:                                               ; preds = %1
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %61 = call i32 @NtfsClose(%struct.TYPE_24__* %60)
  store i32 %61, i32* %4, align 4
  br label %71

62:                                               ; preds = %1
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %64 = call i32 @NtfsCleanup(%struct.TYPE_24__* %63)
  store i32 %64, i32* %4, align 4
  br label %71

65:                                               ; preds = %1
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %67 = call i32 @NtfsCreate(%struct.TYPE_24__* %66)
  store i32 %67, i32* %4, align 4
  br label %71

68:                                               ; preds = %1
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %70 = call i32 @NtfsFileSystemControl(%struct.TYPE_24__* %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %1, %68, %65, %62, %59, %58, %44, %41, %38, %37, %23, %20, %17
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IRPCONTEXT_COMPLETE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %71
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IRPCONTEXT_QUEUE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %115

85:                                               ; preds = %78, %71
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IRPCONTEXT_COMPLETE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %85
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @IRPCONTEXT_QUEUE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %92, %85
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @IRPCONTEXT_COMPLETE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %99
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @IRPCONTEXT_QUEUE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br label %113

113:                                              ; preds = %106, %99
  %114 = phi i1 [ false, %99 ], [ %112, %106 ]
  br label %115

115:                                              ; preds = %113, %92, %78
  %116 = phi i1 [ true, %92 ], [ true, %78 ], [ %114, %113 ]
  %117 = zext i1 %116 to i32
  %118 = call i32 @ASSERT(i32 %117)
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @IRPCONTEXT_COMPLETE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %115
  %126 = load i32, i32* %4, align 4
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 4
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @IoCompleteRequest(%struct.TYPE_25__* %130, i32 %133)
  br label %135

135:                                              ; preds = %125, %115
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @IRPCONTEXT_QUEUE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %156

142:                                              ; preds = %135
  %143 = load i32, i32* @IRPCONTEXT_COMPLETE, align 4
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  %148 = load i32, i32* @IRPCONTEXT_QUEUE, align 4
  %149 = xor i32 %148, -1
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, %149
  store i32 %153, i32* %151, align 4
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %155 = call i32 @NtfsQueueRequest(%struct.TYPE_24__* %154)
  store i32 %155, i32* %4, align 4
  br label %161

156:                                              ; preds = %135
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** @NtfsGlobalData, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %160 = call i32 @ExFreeToNPagedLookasideList(i32* %158, %struct.TYPE_24__* %159)
  br label %161

161:                                              ; preds = %156, %142
  %162 = call i32 @IoSetTopLevelIrp(i32* null)
  %163 = call i32 (...) @FsRtlExitFileSystem()
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @TRACE_(i32, i8*) #1

declare dso_local i32 @FsRtlEnterFileSystem(...) #1

declare dso_local i32 @NtfsIsIrpTopLevel(%struct.TYPE_25__*) #1

declare dso_local i32 @NtfsQueryVolumeInformation(%struct.TYPE_24__*) #1

declare dso_local i32 @NtfsSetVolumeInformation(%struct.TYPE_24__*) #1

declare dso_local i32 @NtfsQueryInformation(%struct.TYPE_24__*) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @NtfsSetInformation(%struct.TYPE_24__*) #1

declare dso_local i32 @NtfsDirectoryControl(%struct.TYPE_24__*) #1

declare dso_local i32 @NtfsRead(%struct.TYPE_24__*) #1

declare dso_local i32 @NtfsDeviceControl(%struct.TYPE_24__*) #1

declare dso_local i32 @NtfsWrite(%struct.TYPE_24__*) #1

declare dso_local i32 @NtfsClose(%struct.TYPE_24__*) #1

declare dso_local i32 @NtfsCleanup(%struct.TYPE_24__*) #1

declare dso_local i32 @NtfsCreate(%struct.TYPE_24__*) #1

declare dso_local i32 @NtfsFileSystemControl(%struct.TYPE_24__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @IoCompleteRequest(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @NtfsQueueRequest(%struct.TYPE_24__*) #1

declare dso_local i32 @ExFreeToNPagedLookasideList(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @IoSetTopLevelIrp(i32*) #1

declare dso_local i32 @FsRtlExitFileSystem(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

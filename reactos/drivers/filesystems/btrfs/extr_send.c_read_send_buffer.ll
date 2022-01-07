; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_send.c_read_send_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_send.c_read_send_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_9__ = type { i64, i32, i32* }

@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@SE_MANAGE_VOLUME_PRIVILEGE = common dso_local global i32 0, align 4
@STATUS_PRIVILEGE_NOT_HELD = common dso_local global i32 0, align 4
@STATUS_END_OF_FILE = common dso_local global i32 0, align 4
@Executive = common dso_local global i32 0, align 4
@KernelMode = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_send_buffer(%struct.TYPE_10__* %0, %struct.TYPE_12__* %1, i8* %2, i64 %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %17 = icmp ne %struct.TYPE_12__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %6
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  br label %23

22:                                               ; preds = %6
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi %struct.TYPE_11__* [ %21, %18 ], [ null, %22 ]
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %14, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %26 = icmp ne %struct.TYPE_11__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %28, i32* %7, align 4
  br label %142

29:                                               ; preds = %23
  %30 = load i32, i32* @SE_MANAGE_VOLUME_PRIVILEGE, align 4
  %31 = call i32 @RtlConvertLongToLuid(i32 %30)
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @SeSinglePrivilegeCheck(i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @STATUS_PRIVILEGE_NOT_HELD, align 4
  store i32 %36, i32* %7, align 4
  br label %142

37:                                               ; preds = %29
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = call i32 @ExAcquireResourceExclusiveLite(i32* %39, i32 1)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = icmp ne %struct.TYPE_8__* %43, null
  br i1 %44, label %62, label %45

45:                                               ; preds = %37
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = call i32 @ExReleaseResourceLite(i32* %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @NT_SUCCESS(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %45
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  br label %60

58:                                               ; preds = %45
  %59 = load i32, i32* @STATUS_END_OF_FILE, align 4
  br label %60

60:                                               ; preds = %58, %54
  %61 = phi i32 [ %57, %54 ], [ %59, %58 ]
  store i32 %61, i32* %7, align 4
  br label %142

62:                                               ; preds = %37
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %15, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* @Executive, align 4
  %72 = load i32, i32* @KernelMode, align 4
  %73 = call i32 @KeWaitForSingleObject(i32* %70, i32 %71, i32 %72, i32 0, i32* null)
  %74 = load i64, i64* %11, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %62
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = call i32 @ExReleaseResourceLite(i32* %78)
  %80 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %80, i32* %7, align 4
  br label %142

81:                                               ; preds = %62
  %82 = load i8*, i8** %10, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @min(i64 %86, i64 %89)
  %91 = call i32 @RtlCopyMemory(i8* %82, i32* %85, i32 %90)
  %92 = load i64, i64* %11, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ult i64 %92, %95
  br i1 %96, label %97, label %122

97:                                               ; preds = %81
  %98 = load i64, i64* %11, align 8
  %99 = load i64*, i64** %12, align 8
  store i64 %98, i64* %99, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* %11, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %11, align 8
  %112 = sub i64 %110, %111
  %113 = call i32 @RtlMoveMemory(i32* %102, i32* %107, i64 %112)
  %114 = load i64, i64* %11, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = sub i64 %117, %114
  store i64 %118, i64* %116, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = call i32 @ExReleaseResourceLite(i32* %120)
  br label %140

122:                                              ; preds = %81
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64*, i64** %12, align 8
  store i64 %125, i64* %126, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  store i64 0, i64* %128, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = call i32 @ExReleaseResourceLite(i32* %130)
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = call i32 @KeClearEvent(i32* %133)
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = call i32 @KeSetEvent(i32* %138, i32 0, i32 0)
  br label %140

140:                                              ; preds = %122, %97
  %141 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %140, %76, %60, %35, %27
  %143 = load i32, i32* %7, align 4
  ret i32 %143
}

declare dso_local i32 @SeSinglePrivilegeCheck(i32, i32) #1

declare dso_local i32 @RtlConvertLongToLuid(i32) #1

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32*, i32) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @KeWaitForSingleObject(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @RtlCopyMemory(i8*, i32*, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @RtlMoveMemory(i32*, i32*, i64) #1

declare dso_local i32 @KeClearEvent(i32*) #1

declare dso_local i32 @KeSetEvent(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

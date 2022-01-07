; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_security.c_find_gid.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_security.c_find_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._fcb = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@S_ISGID = common dso_local global i32 0, align 4
@mapping_lock = common dso_local global i32 0, align 4
@gid_map_list = common dso_local global i32 0, align 4
@TokenOwner = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"SeQueryInformationToken returned %08x\0A\00", align 1
@TokenPrimaryGroup = common dso_local global i32 0, align 4
@TokenGroups = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @find_gid(%struct._fcb* %0, %struct._fcb* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct._fcb*, align 8
  %5 = alloca %struct._fcb*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i64, align 8
  store %struct._fcb* %0, %struct._fcb** %4, align 8
  store %struct._fcb* %1, %struct._fcb** %5, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  %12 = load %struct._fcb*, %struct._fcb** %5, align 8
  %13 = icmp ne %struct._fcb* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %3
  %15 = load %struct._fcb*, %struct._fcb** %5, align 8
  %16 = getelementptr inbounds %struct._fcb, %struct._fcb* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @S_ISGID, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = load %struct._fcb*, %struct._fcb** %5, align 8
  %24 = getelementptr inbounds %struct._fcb, %struct._fcb* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct._fcb*, %struct._fcb** %4, align 8
  %28 = getelementptr inbounds %struct._fcb, %struct._fcb* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  br label %142

30:                                               ; preds = %14, %3
  %31 = call i32 @ExAcquireResourceSharedLite(i32* @mapping_lock, i32 1)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = icmp ne %struct.TYPE_12__* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = call i64 @IsListEmpty(i32* @gid_map_list)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39, %34, %30
  %43 = call i32 @ExReleaseResourceLite(i32* @mapping_lock)
  br label %142

44:                                               ; preds = %39
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TokenOwner, align 4
  %49 = bitcast %struct.TYPE_11__** %8 to i8**
  %50 = call i32 @SeQueryInformationToken(i32 %47, i32 %48, i8** %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @NT_SUCCESS(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %71

57:                                               ; preds = %44
  %58 = load %struct._fcb*, %struct._fcb** %4, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @search_for_gid(%struct._fcb* %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = call i32 @ExReleaseResourceLite(i32* @mapping_lock)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %67 = call i32 @ExFreePool(%struct.TYPE_11__* %66)
  br label %142

68:                                               ; preds = %57
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %70 = call i32 @ExFreePool(%struct.TYPE_11__* %69)
  br label %71

71:                                               ; preds = %68, %54
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @TokenPrimaryGroup, align 4
  %76 = bitcast %struct.TYPE_11__** %9 to i8**
  %77 = call i32 @SeQueryInformationToken(i32 %74, i32 %75, i8** %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @NT_SUCCESS(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %71
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %98

84:                                               ; preds = %71
  %85 = load %struct._fcb*, %struct._fcb** %4, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @search_for_gid(%struct._fcb* %85, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = call i32 @ExReleaseResourceLite(i32* @mapping_lock)
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %94 = call i32 @ExFreePool(%struct.TYPE_11__* %93)
  br label %142

95:                                               ; preds = %84
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %97 = call i32 @ExFreePool(%struct.TYPE_11__* %96)
  br label %98

98:                                               ; preds = %95, %81
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @TokenGroups, align 4
  %103 = bitcast %struct.TYPE_11__** %10 to i8**
  %104 = call i32 @SeQueryInformationToken(i32 %101, i32 %102, i8** %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @NT_SUCCESS(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %98
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %109)
  br label %140

111:                                              ; preds = %98
  store i64 0, i64* %11, align 8
  br label %112

112:                                              ; preds = %134, %111
  %113 = load i64, i64* %11, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ult i64 %113, %116
  br i1 %117, label %118, label %137

118:                                              ; preds = %112
  %119 = load %struct._fcb*, %struct._fcb** %4, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = load i64, i64* %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @search_for_gid(%struct._fcb* %119, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %118
  %130 = call i32 @ExReleaseResourceLite(i32* @mapping_lock)
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %132 = call i32 @ExFreePool(%struct.TYPE_11__* %131)
  br label %142

133:                                              ; preds = %118
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %11, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %11, align 8
  br label %112

137:                                              ; preds = %112
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %139 = call i32 @ExFreePool(%struct.TYPE_11__* %138)
  br label %140

140:                                              ; preds = %137, %108
  %141 = call i32 @ExReleaseResourceLite(i32* @mapping_lock)
  br label %142

142:                                              ; preds = %140, %129, %91, %64, %42, %22
  ret void
}

declare dso_local i32 @ExAcquireResourceSharedLite(i32*, i32) #1

declare dso_local i64 @IsListEmpty(i32*) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

declare dso_local i32 @SeQueryInformationToken(i32, i32, i8**) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i64 @search_for_gid(%struct._fcb*, i32) #1

declare dso_local i32 @ExFreePool(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

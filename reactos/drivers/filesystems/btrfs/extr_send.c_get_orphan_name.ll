; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_send.c_get_orphan_name.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_send.c_get_orphan_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i64 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@SUBVOL_ROOT_INODE = common dso_local global i32 0, align 4
@TYPE_DIR_ITEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"find_item returned %08x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64, i64, i8*)* @get_orphan_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_orphan_name(%struct.TYPE_11__* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__, align 8
  %16 = alloca { i64, i32 }, align 4
  %17 = alloca { i64, i32 }, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 0, i64* %12, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 111, i8* %19, align 1
  %20 = load i64, i64* %7, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = call i8* @uint64_to_char(i64 %20, i8* %22)
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  store i8 45, i8* %24, align 1
  %25 = load i8*, i8** %10, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %10, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call i8* @uint64_to_char(i64 %27, i8* %28)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  store i8 45, i8* %30, align 1
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  store i8* %33, i8** %11, align 8
  %34 = load i32, i32* @SUBVOL_ROOT_INODE, align 4
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @TYPE_DIR_ITEM, align 4
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %122, %4
  %39 = load i64, i64* %12, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = call i8* @uint64_to_char(i64 %39, i8* %40)
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  store i8 0, i8* %42, align 1
  %43 = load i8*, i8** %9, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @calc_crc32c(i32 -2, i32* %44, i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @find_item(i32 %55, i64 %58, %struct.TYPE_10__* %15, %struct.TYPE_12__* %13, i32 0, i32* null)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @NT_SUCCESS(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %38
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %5, align 4
  br label %123

67:                                               ; preds = %38
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = bitcast { i64, i32 }* %16 to i8*
  %73 = bitcast %struct.TYPE_12__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 12, i1 false)
  %74 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %75 = load i64, i64* %74, align 4
  %76 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @keycmp(i64 %75, i32 %77, i32 %71)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %67
  br label %118

81:                                               ; preds = %67
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %116

86:                                               ; preds = %81
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @find_item(i32 %89, i64 %92, %struct.TYPE_10__* %15, %struct.TYPE_12__* %13, i32 0, i32* null)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @NT_SUCCESS(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %86
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %5, align 4
  br label %123

101:                                              ; preds = %86
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = bitcast { i64, i32 }* %17 to i8*
  %107 = bitcast %struct.TYPE_12__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %106, i8* align 4 %107, i64 12, i1 false)
  %108 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %109 = load i64, i64* %108, align 4
  %110 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @keycmp(i64 %109, i32 %111, i32 %105)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %101
  br label %118

115:                                              ; preds = %101
  br label %116

116:                                              ; preds = %115, %81
  %117 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %117, i32* %5, align 4
  br label %123

118:                                              ; preds = %114, %80
  %119 = load i64, i64* %12, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %12, align 8
  %121 = load i8*, i8** %11, align 8
  store i8* %121, i8** %10, align 8
  br label %122

122:                                              ; preds = %118
  br i1 true, label %38, label %123

123:                                              ; preds = %63, %97, %116, %122
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i8* @uint64_to_char(i64, i8*) #1

declare dso_local i32 @calc_crc32c(i32, i32*, i32) #1

declare dso_local i32 @find_item(i32, i64, %struct.TYPE_10__*, %struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @keycmp(i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_label_uberblocks.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_label_uberblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32**, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64, i64 }

@ZDB_MAX_UB_HEADER_SIZE = common dso_local global i32 0, align 4
@dump_opt = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"    Uberblock[%d] invalid\0A\00", align 1
@MMP_MAGIC = common dso_local global i64 0, align 8
@MMP_BLOCKS_PER_LABEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"    Uberblock[%d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"        labels = \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i32)* @dump_label_uberblocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_label_uberblocks(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @ZDB_MAX_UB_HEADER_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* %5, align 4
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %20, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %101, %3
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @VDEV_UBERBLOCK_COUNT(%struct.TYPE_10__* %7)
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %104

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @VDEV_UBERBLOCK_OFFSET(%struct.TYPE_10__* %7, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = bitcast i32* %29 to i8*
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = bitcast i8* %33 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %12, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %13, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %25
  %45 = load i32*, i32** @dump_opt, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 117
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %47, 2
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @print_label_header(%struct.TYPE_9__* %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %49, %44
  br label %101

56:                                               ; preds = %25
  %57 = load i32*, i32** @dump_opt, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 117
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %59, 3
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32*, i32** %13, align 8
  %63 = call i32 @first_label(i32* %62)
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %101

67:                                               ; preds = %61, %56
  %68 = load i32*, i32** @dump_opt, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 117
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %70, 4
  br i1 %71, label %72, label %90

72:                                               ; preds = %67
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @MMP_MAGIC, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %72
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @VDEV_UBERBLOCK_COUNT(%struct.TYPE_10__* %7)
  %86 = load i32, i32* @MMP_BLOCKS_PER_LABEL, align 4
  %87 = sub nsw i32 %85, %86
  %88 = icmp sge i32 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %101

90:                                               ; preds = %83, %78, %72, %67
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @print_label_header(%struct.TYPE_9__* %91, i32 %92)
  %94 = load i32, i32* @ZDB_MAX_UB_HEADER_SIZE, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @snprintf(i8* %17, i32 %94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %98 = call i32 @dump_uberblock(%struct.TYPE_11__* %97, i8* %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %99 = load i32*, i32** %13, align 8
  %100 = call i32 @print_label_numbers(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %99)
  br label %101

101:                                              ; preds = %90, %89, %66, %55
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %21

104:                                              ; preds = %21
  %105 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %105)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @VDEV_UBERBLOCK_COUNT(%struct.TYPE_10__*) #2

declare dso_local i32 @VDEV_UBERBLOCK_OFFSET(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @print_label_header(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @printf(i8*, i32) #2

declare dso_local i32 @first_label(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @dump_uberblock(%struct.TYPE_11__*, i8*, i8*) #2

declare dso_local i32 @print_label_numbers(i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

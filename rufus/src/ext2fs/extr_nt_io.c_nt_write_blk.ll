; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_nt_io.c_nt_write_blk.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_nt_io.c_nt_write_blk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 (%struct.TYPE_8__*, i64, i32, i8*, i32, i32, i32)*, i32, i64, i64, i64 }
%struct.TYPE_9__ = type { i64 }

@EXT2_ET_MAGIC_IO_CHANNEL = common dso_local global i32 0, align 4
@EXT2_ET_MAGIC_NT_IO_CHANNEL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64, i32, i8*)* @nt_write_blk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nt_write_blk(%struct.TYPE_8__* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = load i32, i32* @EXT2_ET_MAGIC_IO_CHANNEL, align 4
  %16 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_8__* %14, i32 %15)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 9
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %12, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %22 = load i32, i32* @EXT2_ET_MAGIC_NT_IO_CHANNEL, align 4
  %23 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_8__* %21, i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @EACCES, align 4
  store i32 %29, i32* %5, align 4
  br label %119

30:                                               ; preds = %4
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %10, align 4
  br label %52

37:                                               ; preds = %30
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  store i32 -1, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %10, align 4
  br label %51

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 %46, %49
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %45, %42
  br label %52

52:                                               ; preds = %51, %33
  %53 = load i32, i32* %10, align 4
  %54 = srem i32 %53, 512
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = mul i64 %58, %62
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %63, %66
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i64 %67, i64* %68, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @_RawWrite(i32 %71, i64 %75, i32 %72, i8* %73, i32* %13)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %96, label %78

78:                                               ; preds = %52
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 5
  %81 = load i32 (%struct.TYPE_8__*, i64, i32, i8*, i32, i32, i32)*, i32 (%struct.TYPE_8__*, i64, i32, i8*, i32, i32, i32)** %80, align 8
  %82 = icmp ne i32 (%struct.TYPE_8__*, i64, i32, i8*, i32, i32, i32)* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %78
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 5
  %86 = load i32 (%struct.TYPE_8__*, i64, i32, i8*, i32, i32, i32)*, i32 (%struct.TYPE_8__*, i64, i32, i8*, i32, i32, i32)** %85, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i8*, i8** %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 %86(%struct.TYPE_8__* %87, i64 %88, i32 %89, i8* %90, i32 %91, i32 0, i32 %92)
  store i32 %93, i32* %5, align 4
  br label %119

94:                                               ; preds = %78
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %5, align 4
  br label %119

96:                                               ; preds = %52
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp sge i32 %97, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %96
  %103 = load i64, i64* %7, align 8
  %104 = trunc i64 %103 to i32
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @memcpy(i32 %109, i8* %110, i32 %113)
  br label %115

115:                                              ; preds = %102, %96
  %116 = load i32, i32* @TRUE, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %115, %94, %83, %28
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_RawWrite(i32, i64, i32, i8*, i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

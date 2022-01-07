; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_nt_io.c_nt_read_blk.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_nt_io.c_nt_read_blk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i8*, i32, i32, i32 (%struct.TYPE_8__*, i64, i32, i8*, i32, i32, i32)*, i32, i64, i64 }
%struct.TYPE_9__ = type { i64 }

@EXT2_ET_MAGIC_IO_CHANNEL = common dso_local global i32 0, align 4
@EXT2_ET_MAGIC_NT_IO_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64, i32, i8*)* @nt_read_blk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nt_read_blk(%struct.TYPE_8__* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %14, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = load i32, i32* @EXT2_ET_MAGIC_IO_CHANNEL, align 4
  %18 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_8__* %16, i32 %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %14, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %24 = load i32, i32* @EXT2_ET_MAGIC_NT_IO_CHANNEL, align 4
  %25 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_8__* %23, i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %48

28:                                               ; preds = %4
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 4294967295
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load i8*, i8** %9, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @memcpy(i8* %40, i8* %43, i32 %46)
  store i32 0, i32* %5, align 4
  br label %142

48:                                               ; preds = %34, %28, %4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 0, %52
  br label %60

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %55, %58
  br label %60

60:                                               ; preds = %54, %51
  %61 = phi i32 [ %53, %51 ], [ %59, %54 ]
  store i32 %61, i32* %12, align 4
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = mul i64 %62, %66
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 6
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %67, %70
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i64 %71, i64* %72, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp sle i32 %73, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %60
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %10, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %11, align 4
  br label %99

88:                                               ; preds = %60
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %11, align 4
  %90 = load i8*, i8** %9, align 8
  store i8* %90, i8** %10, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = srem i32 %91, %94
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  br label %99

99:                                               ; preds = %88, %78
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i8*, i8** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @_RawRead(i32 %102, i64 %106, i32 %103, i8* %104, i32* %15)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %127, label %109

109:                                              ; preds = %99
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 4
  %112 = load i32 (%struct.TYPE_8__*, i64, i32, i8*, i32, i32, i32)*, i32 (%struct.TYPE_8__*, i64, i32, i8*, i32, i32, i32)** %111, align 8
  %113 = icmp ne i32 (%struct.TYPE_8__*, i64, i32, i8*, i32, i32, i32)* %112, null
  br i1 %113, label %114, label %125

114:                                              ; preds = %109
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 4
  %117 = load i32 (%struct.TYPE_8__*, i64, i32, i8*, i32, i32, i32)*, i32 (%struct.TYPE_8__*, i64, i32, i8*, i32, i32, i32)** %116, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %119 = load i64, i64* %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i8*, i8** %9, align 8
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %15, align 4
  %124 = call i32 %117(%struct.TYPE_8__* %118, i64 %119, i32 %120, i8* %121, i32 %122, i32 0, i32 %123)
  store i32 %124, i32* %5, align 4
  br label %142

125:                                              ; preds = %109
  %126 = load i32, i32* %15, align 4
  store i32 %126, i32* %5, align 4
  br label %142

127:                                              ; preds = %99
  %128 = load i8*, i8** %10, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = icmp ne i8* %128, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %127
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp sle i32 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  %137 = load i8*, i8** %9, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @memcpy(i8* %137, i8* %138, i32 %139)
  br label %141

141:                                              ; preds = %131, %127
  store i32 0, i32* %5, align 4
  br label %142

142:                                              ; preds = %141, %125, %114, %39
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_RawRead(i32, i64, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap.c_ext2fs_make_generic_bitmap.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap.c_ext2fs_make_generic_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_7__*, i32, i8*, i32 }

@EXT2_ET_BAD_INODE_MARK = common dso_local global i32 0, align 4
@EXT2_ET_BAD_BLOCK_MARK = common dso_local global i32 0, align 4
@EXT2_ET_BAD_GENERIC_MARK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_make_generic_bitmap(i32 %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i64* %7, i64** %17, align 8
  %21 = call i32 @ext2fs_get_mem(i64 4, %struct.TYPE_7__** %18)
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %19, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %8
  %25 = load i32, i32* %19, align 4
  store i32 %25, i32* %9, align 4
  br label %128

26:                                               ; preds = %8
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i8*, i8** %13, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %10, align 4
  switch i32 %44, label %53 [
    i32 128, label %45
    i32 129, label %49
  ]

45:                                               ; preds = %26
  %46 = load i32, i32* @EXT2_ET_BAD_INODE_MARK, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  br label %57

49:                                               ; preds = %26
  %50 = load i32, i32* @EXT2_ET_BAD_BLOCK_MARK, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  br label %57

53:                                               ; preds = %26
  %54 = load i32, i32* @EXT2_ET_BAD_GENERIC_MARK, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %49, %45
  %58 = load i8*, i8** %15, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %79

60:                                               ; preds = %57
  %61 = load i8*, i8** %15, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 4
  %67 = call i32 @ext2fs_get_mem(i64 %64, %struct.TYPE_7__** %66)
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* %19, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = call i32 @ext2fs_free_mem(%struct.TYPE_7__** %18)
  %72 = load i32, i32* %19, align 4
  store i32 %72, i32* %9, align 4
  br label %128

73:                                               ; preds = %60
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load i8*, i8** %15, align 8
  %78 = call i32 @strcpy(%struct.TYPE_7__* %76, i8* %77)
  br label %82

79:                                               ; preds = %57
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %81, align 8
  br label %82

82:                                               ; preds = %79, %73
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %85, %88
  %90 = sdiv i32 %89, 8
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %20, align 8
  %93 = load i64, i64* %20, align 8
  %94 = add i64 %93, 7
  %95 = and i64 %94, -4
  store i64 %95, i64* %20, align 8
  %96 = load i64, i64* %20, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 3
  %99 = call i32 @ext2fs_get_mem(i64 %96, %struct.TYPE_7__** %98)
  store i32 %99, i32* %19, align 4
  %100 = load i32, i32* %19, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %82
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 4
  %105 = call i32 @ext2fs_free_mem(%struct.TYPE_7__** %104)
  %106 = call i32 @ext2fs_free_mem(%struct.TYPE_7__** %18)
  %107 = load i32, i32* %19, align 4
  store i32 %107, i32* %9, align 4
  br label %128

108:                                              ; preds = %82
  %109 = load i8*, i8** %16, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = load i8*, i8** %16, align 8
  %116 = load i64, i64* %20, align 8
  %117 = call i32 @memcpy(%struct.TYPE_7__* %114, i8* %115, i64 %116)
  br label %124

118:                                              ; preds = %108
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = load i64, i64* %20, align 8
  %123 = call i32 @memset(%struct.TYPE_7__* %121, i32 0, i64 %122)
  br label %124

124:                                              ; preds = %118, %111
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %126 = ptrtoint %struct.TYPE_7__* %125 to i64
  %127 = load i64*, i64** %17, align 8
  store i64 %126, i64* %127, align 8
  store i32 0, i32* %9, align 4
  br label %128

128:                                              ; preds = %124, %102, %70, %24
  %129 = load i32, i32* %9, align 4
  ret i32 %129
}

declare dso_local i32 @ext2fs_get_mem(i64, %struct.TYPE_7__**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ext2fs_free_mem(%struct.TYPE_7__**) #1

declare dso_local i32 @strcpy(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, i8*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

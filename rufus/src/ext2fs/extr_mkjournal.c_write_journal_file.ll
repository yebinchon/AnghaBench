; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_mkjournal.c_write_journal_file.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_mkjournal.c_write_journal_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@O_WRONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EXT2_ET_SHORT_WRITE = common dso_local global i64 0, align 8
@EXT2_MKJOURNAL_LAZYINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i8*, i32, i32)* @write_journal_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_journal_file(%struct.TYPE_4__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %11, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i64 @ext2fs_create_journal_superblock(%struct.TYPE_4__* %15, i32 %16, i32 %17, i8** %11)
  store i64 %18, i64* %10, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i64, i64* %10, align 8
  store i64 %21, i64* %5, align 8
  br label %96

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @O_WRONLY, align 4
  %25 = call i32 @open(i8* %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i64, i64* @errno, align 8
  store i64 %28, i64* %10, align 8
  br label %93

29:                                               ; preds = %22
  %30 = load i64, i64* @EXT2_ET_SHORT_WRITE, align 8
  store i64 %30, i64* %10, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i8*, i8** %11, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @write(i32 %31, i8* %32, i64 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i64, i64* @errno, align 8
  store i64 %40, i64* %10, align 8
  br label %90

41:                                               ; preds = %29
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = icmp ne i32 %42, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %90

49:                                               ; preds = %41
  %50 = load i8*, i8** %11, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @memset(i8* %50, i32 0, i64 %53)
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @EXT2_MKJOURNAL_LAZYINIT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %89

60:                                               ; preds = %49
  store i32 1, i32* %14, align 4
  br label %61

61:                                               ; preds = %85, %60
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %61
  %66 = load i32, i32* %12, align 4
  %67 = load i8*, i8** %11, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @write(i32 %66, i8* %67, i64 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load i64, i64* @errno, align 8
  store i64 %75, i64* %10, align 8
  br label %90

76:                                               ; preds = %65
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = icmp ne i32 %77, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %90

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %61

88:                                               ; preds = %61
  br label %89

89:                                               ; preds = %88, %59
  store i64 0, i64* %10, align 8
  br label %90

90:                                               ; preds = %89, %83, %74, %48, %39
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @close(i32 %91)
  br label %93

93:                                               ; preds = %90, %27
  %94 = call i32 @ext2fs_free_mem(i8** %11)
  %95 = load i64, i64* %10, align 8
  store i64 %95, i64* %5, align 8
  br label %96

96:                                               ; preds = %93, %20
  %97 = load i64, i64* %5, align 8
  ret i64 %97
}

declare dso_local i64 @ext2fs_create_journal_superblock(%struct.TYPE_4__*, i32, i32, i8**) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ext2fs_free_mem(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

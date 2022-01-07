; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_inode.c_ext2fs_write_new_inode.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_inode.c_ext2fs_write_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }
%struct.ext2_inode = type { i8*, i8*, i8* }
%struct.ext2_inode_large = type { i8*, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@EXT2_GOOD_OLD_INODE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_write_new_inode(%struct.TYPE_4__* %0, i32 %1, %struct.ext2_inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext2_inode*, align 8
  %8 = alloca %struct.ext2_inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext2_inode_large*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ext2_inode* %2, %struct.ext2_inode** %7, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @EXT2_INODE_SIZE(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  br label %27

25:                                               ; preds = %3
  %26 = call i8* @time(i32* null)
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi i8* [ %24, %21 ], [ %26, %25 ]
  store i8* %28, i8** %12, align 8
  %29 = load %struct.ext2_inode*, %struct.ext2_inode** %7, align 8
  %30 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load i8*, i8** %12, align 8
  %35 = load %struct.ext2_inode*, %struct.ext2_inode** %7, align 8
  %36 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  br label %37

37:                                               ; preds = %33, %27
  %38 = load %struct.ext2_inode*, %struct.ext2_inode** %7, align 8
  %39 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %12, align 8
  %44 = load %struct.ext2_inode*, %struct.ext2_inode** %7, align 8
  %45 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %42, %37
  %47 = load %struct.ext2_inode*, %struct.ext2_inode** %7, align 8
  %48 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %12, align 8
  %53 = load %struct.ext2_inode*, %struct.ext2_inode** %7, align 8
  %54 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %51, %46
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp eq i64 %57, 24
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.ext2_inode*, %struct.ext2_inode** %7, align 8
  %63 = call i32 @ext2fs_write_inode_full(%struct.TYPE_4__* %60, i32 %61, %struct.ext2_inode* %62, i32 24)
  store i32 %63, i32* %4, align 4
  br label %102

64:                                               ; preds = %55
  %65 = load i32, i32* %9, align 4
  %66 = call %struct.ext2_inode* @malloc(i32 %65)
  store %struct.ext2_inode* %66, %struct.ext2_inode** %8, align 8
  %67 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %68 = icmp ne %struct.ext2_inode* %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @ENOMEM, align 4
  store i32 %70, i32* %4, align 4
  br label %102

71:                                               ; preds = %64
  %72 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @memset(%struct.ext2_inode* %72, i32 0, i32 %73)
  %75 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %76 = load %struct.ext2_inode*, %struct.ext2_inode** %7, align 8
  %77 = bitcast %struct.ext2_inode* %75 to i8*
  %78 = bitcast %struct.ext2_inode* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 24, i1 false)
  %79 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %80 = bitcast %struct.ext2_inode* %79 to %struct.ext2_inode_large*
  store %struct.ext2_inode_large* %80, %struct.ext2_inode_large** %10, align 8
  %81 = load i64, i64* @EXT2_GOOD_OLD_INODE_SIZE, align 8
  %82 = sub i64 16, %81
  %83 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %10, align 8
  %84 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %10, align 8
  %86 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %71
  %90 = load i8*, i8** %12, align 8
  %91 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %10, align 8
  %92 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %89, %71
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @ext2fs_write_inode_full(%struct.TYPE_4__* %94, i32 %95, %struct.ext2_inode* %96, i32 %97)
  store i32 %98, i32* %11, align 4
  %99 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %100 = call i32 @free(%struct.ext2_inode* %99)
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %93, %69, %59
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @EXT2_INODE_SIZE(i32) #1

declare dso_local i8* @time(i32*) #1

declare dso_local i32 @ext2fs_write_inode_full(%struct.TYPE_4__*, i32, %struct.ext2_inode*, i32) #1

declare dso_local %struct.ext2_inode* @malloc(i32) #1

declare dso_local i32 @memset(%struct.ext2_inode*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free(%struct.ext2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

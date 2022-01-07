; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_ext_correct_indexes.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_ext_correct_indexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { %struct.TYPE_2__*, %struct.ext4_extent_header*, %struct.ext4_extent* }
%struct.TYPE_2__ = type { i8* }
%struct.ext4_extent_header = type { i32 }
%struct.ext4_extent = type { i8* }

@.str = private unnamed_addr constant [31 x i8] c"ex %p == NULL or eh %p == NULL\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.inode*, %struct.ext4_ext_path*)* @ext4_ext_correct_indexes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_correct_indexes(i8* %0, i32* %1, %struct.inode* %2, %struct.ext4_ext_path* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ext4_ext_path*, align 8
  %10 = alloca %struct.ext4_extent_header*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ext4_extent*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.ext4_ext_path* %3, %struct.ext4_ext_path** %9, align 8
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = call i32 @ext_depth(%struct.inode* %16)
  store i32 %17, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %18 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %18, i64 %20
  %22 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %21, i32 0, i32 1
  %23 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %22, align 8
  store %struct.ext4_extent_header* %23, %struct.ext4_extent_header** %10, align 8
  %24 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %24, i64 %26
  %28 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %27, i32 0, i32 2
  %29 = load %struct.ext4_extent*, %struct.ext4_extent** %28, align 8
  store %struct.ext4_extent* %29, %struct.ext4_extent** %12, align 8
  %30 = load %struct.ext4_extent*, %struct.ext4_extent** %12, align 8
  %31 = icmp eq %struct.ext4_extent* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  %34 = icmp eq %struct.ext4_extent_header* %33, null
  br label %35

35:                                               ; preds = %32, %4
  %36 = phi i1 [ true, %4 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = load %struct.ext4_extent*, %struct.ext4_extent** %12, align 8
  %43 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  %44 = call i32 @EXT4_ERROR_INODE(%struct.inode* %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.ext4_extent* %42, %struct.ext4_extent_header* %43)
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %159

47:                                               ; preds = %35
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %159

51:                                               ; preds = %47
  %52 = load %struct.ext4_extent*, %struct.ext4_extent** %12, align 8
  %53 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  %54 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %53)
  %55 = icmp ne %struct.ext4_extent* %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %159

57:                                               ; preds = %51
  %58 = load i32, i32* %11, align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %14, align 4
  %60 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %60, i64 %62
  %64 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %63, i32 0, i32 2
  %65 = load %struct.ext4_extent*, %struct.ext4_extent** %64, align 8
  %66 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %13, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load %struct.inode*, %struct.inode** %8, align 8
  %71 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %71, i64 %73
  %75 = call i32 @ext4_ext_get_access(i8* %68, i32* %69, %struct.inode* %70, %struct.ext4_ext_path* %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %57
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %5, align 4
  br label %159

80:                                               ; preds = %57
  %81 = load i8*, i8** %13, align 8
  %82 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %82, i64 %84
  %86 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i8* %81, i8** %88, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = load %struct.inode*, %struct.inode** %8, align 8
  %92 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %92, i64 %94
  %96 = call i32 @ext4_ext_dirty(i8* %89, i32* %90, %struct.inode* %91, %struct.ext4_ext_path* %95)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %80
  %100 = load i32, i32* %15, align 4
  store i32 %100, i32* %5, align 4
  br label %159

101:                                              ; preds = %80
  br label %102

102:                                              ; preds = %156, %101
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %14, align 4
  %105 = icmp ne i32 %103, 0
  br i1 %105, label %106, label %157

106:                                              ; preds = %102
  %107 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %107, i64 %110
  %112 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %114, i64 %117
  %119 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %118, i32 0, i32 1
  %120 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %119, align 8
  %121 = call %struct.TYPE_2__* @EXT_FIRST_INDEX(%struct.ext4_extent_header* %120)
  %122 = icmp ne %struct.TYPE_2__* %113, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %106
  br label %157

124:                                              ; preds = %106
  %125 = load i8*, i8** %6, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = load %struct.inode*, %struct.inode** %8, align 8
  %128 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %128, i64 %130
  %132 = call i32 @ext4_ext_get_access(i8* %125, i32* %126, %struct.inode* %127, %struct.ext4_ext_path* %131)
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %124
  br label %157

136:                                              ; preds = %124
  %137 = load i8*, i8** %13, align 8
  %138 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %138, i64 %140
  %142 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %141, i32 0, i32 0
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  store i8* %137, i8** %144, align 8
  %145 = load i8*, i8** %6, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = load %struct.inode*, %struct.inode** %8, align 8
  %148 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %148, i64 %150
  %152 = call i32 @ext4_ext_dirty(i8* %145, i32* %146, %struct.inode* %147, %struct.ext4_ext_path* %151)
  store i32 %152, i32* %15, align 4
  %153 = load i32, i32* %15, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %136
  br label %157

156:                                              ; preds = %136
  br label %102

157:                                              ; preds = %155, %135, %123, %102
  %158 = load i32, i32* %15, align 4
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %157, %99, %78, %56, %50, %40
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, %struct.ext4_extent*, %struct.ext4_extent_header*) #1

declare dso_local %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local i32 @ext4_ext_get_access(i8*, i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_dirty(i8*, i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local %struct.TYPE_2__* @EXT_FIRST_INDEX(%struct.ext4_extent_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_ext2fs_xattr_remove.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_ext2fs_xattr_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_xattr_handle = type { i32, i32, %struct.ext2_xattr*, i32 }
%struct.ext2_xattr = type { i64, i32, i32 }

@EXT2_ET_MAGIC_EA_HANDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_xattr_remove(%struct.ext2_xattr_handle* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ext2_xattr_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ext2_xattr*, align 8
  %7 = alloca %struct.ext2_xattr*, align 8
  store %struct.ext2_xattr_handle* %0, %struct.ext2_xattr_handle** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %4, align 8
  %9 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %8, i32 0, i32 2
  %10 = load %struct.ext2_xattr*, %struct.ext2_xattr** %9, align 8
  %11 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %4, align 8
  %12 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %10, i64 %14
  store %struct.ext2_xattr* %15, %struct.ext2_xattr** %7, align 8
  %16 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %4, align 8
  %17 = load i32, i32* @EXT2_ET_MAGIC_EA_HANDLE, align 4
  %18 = call i32 @EXT2_CHECK_MAGIC(%struct.ext2_xattr_handle* %16, i32 %17)
  %19 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %4, align 8
  %20 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %19, i32 0, i32 2
  %21 = load %struct.ext2_xattr*, %struct.ext2_xattr** %20, align 8
  store %struct.ext2_xattr* %21, %struct.ext2_xattr** %6, align 8
  br label %22

22:                                               ; preds = %92, %2
  %23 = load %struct.ext2_xattr*, %struct.ext2_xattr** %6, align 8
  %24 = load %struct.ext2_xattr*, %struct.ext2_xattr** %7, align 8
  %25 = icmp ult %struct.ext2_xattr* %23, %24
  br i1 %25, label %26, label %95

26:                                               ; preds = %22
  %27 = load %struct.ext2_xattr*, %struct.ext2_xattr** %6, align 8
  %28 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @strcmp(i32 %29, i8* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %91

33:                                               ; preds = %26
  %34 = load %struct.ext2_xattr*, %struct.ext2_xattr** %6, align 8
  %35 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %34, i32 0, i32 2
  %36 = call i32 @ext2fs_free_mem(i32* %35)
  %37 = load %struct.ext2_xattr*, %struct.ext2_xattr** %6, align 8
  %38 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %37, i32 0, i32 1
  %39 = call i32 @ext2fs_free_mem(i32* %38)
  %40 = load %struct.ext2_xattr*, %struct.ext2_xattr** %6, align 8
  %41 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %33
  %45 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %4, align 8
  %46 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ext2_xattr*, %struct.ext2_xattr** %6, align 8
  %49 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @xattr_inode_dec_ref(i32 %47, i64 %50)
  br label %52

52:                                               ; preds = %44, %33
  %53 = load %struct.ext2_xattr*, %struct.ext2_xattr** %6, align 8
  %54 = load %struct.ext2_xattr*, %struct.ext2_xattr** %6, align 8
  %55 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %54, i64 1
  %56 = load %struct.ext2_xattr*, %struct.ext2_xattr** %7, align 8
  %57 = load %struct.ext2_xattr*, %struct.ext2_xattr** %6, align 8
  %58 = ptrtoint %struct.ext2_xattr* %56 to i64
  %59 = ptrtoint %struct.ext2_xattr* %57 to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 16
  %62 = sub nsw i64 %61, 1
  %63 = mul i64 %62, 16
  %64 = trunc i64 %63 to i32
  %65 = call i32 @memmove(%struct.ext2_xattr* %53, %struct.ext2_xattr* %55, i32 %64)
  %66 = load %struct.ext2_xattr*, %struct.ext2_xattr** %7, align 8
  %67 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %66, i64 -1
  %68 = call i32 @memset(%struct.ext2_xattr* %67, i32 0, i32 16)
  %69 = load %struct.ext2_xattr*, %struct.ext2_xattr** %6, align 8
  %70 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %4, align 8
  %71 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %70, i32 0, i32 2
  %72 = load %struct.ext2_xattr*, %struct.ext2_xattr** %71, align 8
  %73 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %4, align 8
  %74 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %72, i64 %76
  %78 = icmp ult %struct.ext2_xattr* %69, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %52
  %80 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %4, align 8
  %81 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %79, %52
  %85 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %4, align 8
  %86 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %86, align 8
  %89 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %4, align 8
  %90 = call i32 @ext2fs_xattrs_write(%struct.ext2_xattr_handle* %89)
  store i32 %90, i32* %3, align 4
  br label %96

91:                                               ; preds = %26
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.ext2_xattr*, %struct.ext2_xattr** %6, align 8
  %94 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %93, i32 1
  store %struct.ext2_xattr* %94, %struct.ext2_xattr** %6, align 8
  br label %22

95:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %84
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.ext2_xattr_handle*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @ext2fs_free_mem(i32*) #1

declare dso_local i32 @xattr_inode_dec_ref(i32, i64) #1

declare dso_local i32 @memmove(%struct.ext2_xattr*, %struct.ext2_xattr*, i32) #1

declare dso_local i32 @memset(%struct.ext2_xattr*, i32, i32) #1

declare dso_local i32 @ext2fs_xattrs_write(%struct.ext2_xattr_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

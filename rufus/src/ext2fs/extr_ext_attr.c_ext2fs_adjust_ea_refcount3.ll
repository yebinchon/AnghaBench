; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_ext2fs_adjust_ea_refcount3.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_ext2fs_adjust_ea_refcount3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.ext2_ext_attr_header = type { i32 }

@EXT2_ET_BAD_EA_BLOCK_NUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_adjust_ea_refcount3(%struct.TYPE_6__* %0, i64 %1, i8* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.ext2_ext_attr_header*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* null, i8** %16, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = call i64 @ext2fs_blocks_count(%struct.TYPE_7__* %20)
  %22 = icmp sge i64 %17, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %6
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %24, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23, %6
  %32 = load i64, i64* @EXT2_ET_BAD_EA_BLOCK_NUM, align 8
  store i64 %32, i64* %7, align 8
  br label %88

33:                                               ; preds = %23
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %33
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @ext2fs_get_mem(i32 %39, i8** %16)
  store i64 %40, i64* %14, align 8
  %41 = load i64, i64* %14, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i64, i64* %14, align 8
  store i64 %44, i64* %7, align 8
  br label %88

45:                                               ; preds = %36
  %46 = load i8*, i8** %16, align 8
  store i8* %46, i8** %10, align 8
  br label %47

47:                                               ; preds = %45, %33
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i64 @ext2fs_read_ext_attr3(%struct.TYPE_6__* %48, i64 %49, i8* %50, i32 %51)
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* %14, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %81

56:                                               ; preds = %47
  %57 = load i8*, i8** %10, align 8
  %58 = bitcast i8* %57 to %struct.ext2_ext_attr_header*
  store %struct.ext2_ext_attr_header* %58, %struct.ext2_ext_attr_header** %15, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.ext2_ext_attr_header*, %struct.ext2_ext_attr_header** %15, align 8
  %61 = getelementptr inbounds %struct.ext2_ext_attr_header, %struct.ext2_ext_attr_header* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load i32*, i32** %12, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = load %struct.ext2_ext_attr_header*, %struct.ext2_ext_attr_header** %15, align 8
  %68 = getelementptr inbounds %struct.ext2_ext_attr_header, %struct.ext2_ext_attr_header* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %12, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %66, %56
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i64 @ext2fs_write_ext_attr3(%struct.TYPE_6__* %72, i64 %73, i8* %74, i32 %75)
  store i64 %76, i64* %14, align 8
  %77 = load i64, i64* %14, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %81

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %79, %55
  %82 = load i8*, i8** %16, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 @ext2fs_free_mem(i8** %16)
  br label %86

86:                                               ; preds = %84, %81
  %87 = load i64, i64* %14, align 8
  store i64 %87, i64* %7, align 8
  br label %88

88:                                               ; preds = %86, %43, %31
  %89 = load i64, i64* %7, align 8
  ret i64 %89
}

declare dso_local i64 @ext2fs_blocks_count(%struct.TYPE_7__*) #1

declare dso_local i64 @ext2fs_get_mem(i32, i8**) #1

declare dso_local i64 @ext2fs_read_ext_attr3(%struct.TYPE_6__*, i64, i8*, i32) #1

declare dso_local i64 @ext2fs_write_ext_attr3(%struct.TYPE_6__*, i64, i8*, i32) #1

declare dso_local i32 @ext2fs_free_mem(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

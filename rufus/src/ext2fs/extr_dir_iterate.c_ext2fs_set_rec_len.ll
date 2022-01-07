; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_dir_iterate.c_ext2fs_set_rec_len.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_dir_iterate.c_ext2fs_set_rec_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.ext2_dir_entry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EXT4_MAX_REC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_set_rec_len(%struct.TYPE_3__* %0, i32 %1, %struct.ext2_dir_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext2_dir_entry*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ext2_dir_entry* %2, %struct.ext2_dir_entry** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ugt i32 %8, %11
  br i1 %12, label %22, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ugt i32 %16, 262144
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 3
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %13, %3
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %4, align 4
  br label %60

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = icmp ult i32 %25, 65536
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %30 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %4, align 4
  br label %60

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 65536
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @EXT4_MAX_REC_LEN, align 4
  %44 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %45 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %49

46:                                               ; preds = %37
  %47 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %48 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %42
  br label %59

50:                                               ; preds = %31
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, 65532
  %53 = load i32, i32* %6, align 4
  %54 = lshr i32 %53, 16
  %55 = and i32 %54, 3
  %56 = or i32 %52, %55
  %57 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %58 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %50, %49
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %27, %22
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

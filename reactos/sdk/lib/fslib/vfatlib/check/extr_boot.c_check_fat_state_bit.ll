; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_boot.c_check_fat_state_bit.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_boot.c_check_fat_state_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.boot_sector = type { i32, i32 }
%struct.boot_sector_16 = type { i32, i32 }

@FAT_STATE_DIRTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"0x41: \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0x25: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @check_fat_state_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_fat_state_bit(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.boot_sector*, align 8
  %6 = alloca %struct.boot_sector_16*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 32
  br i1 %10, label %11, label %37

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.boot_sector*
  store %struct.boot_sector* %13, %struct.boot_sector** %5, align 8
  %14 = load %struct.boot_sector*, %struct.boot_sector** %5, align 8
  %15 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FAT_STATE_DIRTY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %11
  %21 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = call signext i8 (...) @print_fat_dirty_state()
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 49
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load i32, i32* @FAT_STATE_DIRTY, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.boot_sector*, %struct.boot_sector** %5, align 8
  %29 = getelementptr inbounds %struct.boot_sector, %struct.boot_sector* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.boot_sector*, %struct.boot_sector** %5, align 8
  %33 = bitcast %struct.boot_sector* %32 to %struct.boot_sector_16*
  %34 = call i32 @fs_write(i32 0, i32 8, %struct.boot_sector_16* %33)
  br label %35

35:                                               ; preds = %25, %20
  br label %36

36:                                               ; preds = %35, %11
  br label %62

37:                                               ; preds = %2
  %38 = load i8*, i8** %4, align 8
  %39 = bitcast i8* %38 to %struct.boot_sector_16*
  store %struct.boot_sector_16* %39, %struct.boot_sector_16** %6, align 8
  %40 = load %struct.boot_sector_16*, %struct.boot_sector_16** %6, align 8
  %41 = getelementptr inbounds %struct.boot_sector_16, %struct.boot_sector_16* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @FAT_STATE_DIRTY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %37
  %47 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %48 = call signext i8 (...) @print_fat_dirty_state()
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 49
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load i32, i32* @FAT_STATE_DIRTY, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.boot_sector_16*, %struct.boot_sector_16** %6, align 8
  %55 = getelementptr inbounds %struct.boot_sector_16, %struct.boot_sector_16* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.boot_sector_16*, %struct.boot_sector_16** %6, align 8
  %59 = call i32 @fs_write(i32 0, i32 8, %struct.boot_sector_16* %58)
  br label %60

60:                                               ; preds = %51, %46
  br label %61

61:                                               ; preds = %60, %37
  br label %62

62:                                               ; preds = %61, %36
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local signext i8 @print_fat_dirty_state(...) #1

declare dso_local i32 @fs_write(i32, i32, %struct.boot_sector_16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

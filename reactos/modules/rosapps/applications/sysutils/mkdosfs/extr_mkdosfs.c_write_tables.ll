; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/mkdosfs/extr_mkdosfs.c_write_tables.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/mkdosfs/extr_mkdosfs.c_write_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@size_fat = common dso_local global i32 0, align 4
@bs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [16 x i8] c"start of device\00", align 1
@reserved_sectors = common dso_local global i32 0, align 4
@blank_sector = common dso_local global i8* null, align 8
@sector_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"reserved sector\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"boot sector\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"info sector\00", align 1
@info_sector = common dso_local global i8* null, align 8
@backup_boot = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"backup boot sector\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"first FAT\00", align 1
@nr_fats = common dso_local global i32 0, align 4
@fat = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"FAT\00", align 1
@root_dir = common dso_local global i8* null, align 8
@size_root_dir = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"root directory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_tables() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @size_fat, align 4
  %4 = icmp eq i32 %3, 32
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bs, i32 0, i32 0, i32 1), align 4
  %7 = call i32 @CF_LE_L(i32 %6)
  br label %11

8:                                                ; preds = %0
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bs, i32 0, i32 1), align 4
  %10 = call i32 @CF_LE_W(i32 %9)
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i32 [ %7, %5 ], [ %10, %8 ]
  store i32 %12, i32* %2, align 4
  %13 = call i32 @seekto(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %22, %11
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @reserved_sectors, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i8*, i8** @blank_sector, align 8
  %20 = load i32, i32* @sector_size, align 4
  %21 = call i32 @writebuf(i8* %19, i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %1, align 4
  br label %14

25:                                               ; preds = %14
  %26 = call i32 @seekto(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %27 = call i32 @writebuf(i8* bitcast (%struct.TYPE_4__* @bs to i8*), i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* @size_fat, align 4
  %29 = icmp eq i32 %28, 32
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bs, i32 0, i32 0, i32 0), align 4
  %32 = call i32 @CF_LE_W(i32 %31)
  %33 = load i32, i32* @sector_size, align 4
  %34 = mul nsw i32 %32, %33
  %35 = call i32 @seekto(i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i8*, i8** @info_sector, align 8
  %37 = call i32 @writebuf(i8* %36, i32 512, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32, i32* @backup_boot, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load i32, i32* @backup_boot, align 4
  %42 = load i32, i32* @sector_size, align 4
  %43 = mul nsw i32 %41, %42
  %44 = call i32 @seekto(i32 %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %45 = call i32 @writebuf(i8* bitcast (%struct.TYPE_4__* @bs to i8*), i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %46

46:                                               ; preds = %40, %30
  br label %47

47:                                               ; preds = %46, %25
  %48 = load i32, i32* @reserved_sectors, align 4
  %49 = load i32, i32* @sector_size, align 4
  %50 = mul nsw i32 %48, %49
  %51 = call i32 @seekto(i32 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %52

52:                                               ; preds = %62, %47
  %53 = load i32, i32* %1, align 4
  %54 = load i32, i32* @nr_fats, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i8*, i8** @fat, align 8
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @sector_size, align 4
  %60 = mul nsw i32 %58, %59
  %61 = call i32 @writebuf(i8* %57, i32 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %1, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %1, align 4
  br label %52

65:                                               ; preds = %52
  %66 = load i8*, i8** @root_dir, align 8
  %67 = load i32, i32* @size_root_dir, align 4
  %68 = call i32 @writebuf(i8* %66, i32 %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %69 = load i8*, i8** @info_sector, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i8*, i8** @info_sector, align 8
  %73 = call i32 @free(i8* %72)
  br label %74

74:                                               ; preds = %71, %65
  %75 = load i8*, i8** @root_dir, align 8
  %76 = call i32 @free(i8* %75)
  %77 = load i8*, i8** @fat, align 8
  %78 = call i32 @free(i8* %77)
  ret void
}

declare dso_local i32 @CF_LE_L(i32) #1

declare dso_local i32 @CF_LE_W(i32) #1

declare dso_local i32 @seekto(i32, i8*) #1

declare dso_local i32 @writebuf(i8*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

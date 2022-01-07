; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_drive.c_AnalyzePBR.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_drive.c_AnalyzePBR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64 (i32*)* }
%struct.TYPE_5__ = type { i8*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Partition Boot Record\00", align 1
@SelectedDrive = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Volume does not have an x86 %s\00", align 1
@FALSE = common dso_local global i32 0, align 4
@known_pbr = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Drive has a %s %s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Volume has an unknown FAT16 or FAT32 %s\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Volume has an unknown %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AnalyzePBR(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %8 = bitcast %struct.TYPE_5__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 16, i1 false)
  %9 = bitcast %struct.TYPE_5__* %5 to i32*
  store i32* %9, i32** %6, align 8
  %10 = load i64, i64* %3, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i8* %11, i8** %12, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @SelectedDrive, i32 0, i32 0), align 4
  %14 = call i32 @set_bytes_per_sector(i32 %13)
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @is_br(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 (i8*, i8*, ...) @uprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %2, align 4
  br label %70

22:                                               ; preds = %1
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @is_fat_16_br(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @is_fat_32_br(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %26, %22
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %59, %30
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @known_pbr, align 8
  %34 = call i32 @ARRAYSIZE(%struct.TYPE_6__* %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %31
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @known_pbr, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i64 (i32*)*, i64 (i32*)** %41, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i64 %42(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %36
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @known_pbr, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 (i8*, i8*, ...) @uprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %54, i8* %55)
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %2, align 4
  br label %70

58:                                               ; preds = %36
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %31

62:                                               ; preds = %31
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 (i8*, i8*, ...) @uprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  br label %68

65:                                               ; preds = %26
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 (i8*, i8*, ...) @uprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* @TRUE, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %46, %18
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @set_bytes_per_sector(i32) #2

declare dso_local i32 @is_br(i32*) #2

declare dso_local i32 @uprintf(i8*, i8*, ...) #2

declare dso_local i64 @is_fat_16_br(i32*) #2

declare dso_local i64 @is_fat_32_br(i32*) #2

declare dso_local i32 @ARRAYSIZE(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

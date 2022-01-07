; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_io_manager.c_io_channel_set_options.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_io_manager.c_io_channel_set_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 (%struct.TYPE_7__*, i8*, i8*)* }

@EXT2_ET_MAGIC_IO_CHANNEL = common dso_local global i32 0, align 4
@EXT2_ET_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@EXT2_ET_NO_MEMORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @io_channel_set_options(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %6, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = load i32, i32* @EXT2_ET_MAGIC_IO_CHANNEL, align 4
  %13 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_7__* %11, i32 %12)
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %85

17:                                               ; preds = %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64 (%struct.TYPE_7__*, i8*, i8*)*, i64 (%struct.TYPE_7__*, i8*, i8*)** %21, align 8
  %23 = icmp ne i64 (%struct.TYPE_7__*, i8*, i8*)* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = load i64, i64* @EXT2_ET_INVALID_ARGUMENT, align 8
  store i64 %25, i64* %3, align 8
  br label %85

26:                                               ; preds = %17
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = add nsw i64 %28, 1
  %30 = call i8* @malloc(i64 %29)
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = load i64, i64* @EXT2_ET_NO_MEMORY, align 8
  store i64 %34, i64* %3, align 8
  br label %85

35:                                               ; preds = %26
  %36 = load i8*, i8** %9, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @strcpy(i8* %36, i8* %37)
  %39 = load i8*, i8** %9, align 8
  store i8* %39, i8** %8, align 8
  br label %40

40:                                               ; preds = %79, %35
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i8*, i8** %8, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %43, %40
  %49 = phi i1 [ false, %40 ], [ %47, %43 ]
  br i1 %49, label %50, label %81

50:                                               ; preds = %48
  %51 = load i8*, i8** %8, align 8
  %52 = call i8* @strchr(i8* %51, i8 signext 38)
  store i8* %52, i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %7, align 8
  store i8 0, i8* %56, align 1
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i8*, i8** %8, align 8
  %60 = call i8* @strchr(i8* %59, i8 signext 61)
  store i8* %60, i8** %10, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %10, align 8
  store i8 0, i8* %64, align 1
  br label %66

66:                                               ; preds = %63, %58
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64 (%struct.TYPE_7__*, i8*, i8*)*, i64 (%struct.TYPE_7__*, i8*, i8*)** %70, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = call i64 %71(%struct.TYPE_7__* %72, i8* %73, i8* %74)
  store i64 %75, i64* %6, align 8
  %76 = load i64, i64* %6, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %66
  br label %81

79:                                               ; preds = %66
  %80 = load i8*, i8** %7, align 8
  store i8* %80, i8** %8, align 8
  br label %40

81:                                               ; preds = %78, %48
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @free(i8* %82)
  %84 = load i64, i64* %6, align 8
  store i64 %84, i64* %3, align 8
  br label %85

85:                                               ; preds = %81, %33, %24, %16
  %86 = load i64, i64* %3, align 8
  ret i64 %86
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_7__*, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

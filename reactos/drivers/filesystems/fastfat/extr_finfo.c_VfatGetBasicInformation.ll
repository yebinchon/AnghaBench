; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_finfo.c_VfatGetBasicInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_finfo.c_VfatGetBasicInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"VfatGetBasicInformation()\0A\00", align 1
@STATUS_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_ARCHIVE = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_SYSTEM = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_HIDDEN = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_READONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Synthesizing FILE_ATTRIBUTE_NORMAL\0A\00", align 1
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Getting attributes 0x%02x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VfatGetBasicInformation(i32 %0, %struct.TYPE_11__* %1, i32 %2, %struct.TYPE_12__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @UNREFERENCED_PARAMETER(i32 %12)
  %14 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %11, align 8
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @STATUS_BUFFER_OVERFLOW, align 4
  store i32 %20, i32* %6, align 4
  br label %156

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @vfatVolumeIsFatX(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %73

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 4
  %39 = call i32 @FsdDosDateTimeToSystemTime(i32 %26, i32 %31, i32 %36, i32* %38)
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 3
  %53 = call i32 @FsdDosDateTimeToSystemTime(i32 %40, i32 %45, i32 %50, i32* %52)
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = call i32 @FsdDosDateTimeToSystemTime(i32 %54, i32 %59, i32 %64, i32* %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  br label %116

73:                                               ; preds = %21
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 4
  %87 = call i32 @FsdDosDateTimeToSystemTime(i32 %74, i32 %79, i32 %84, i32* %86)
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 3
  %96 = call i32 @FsdDosDateTimeToSystemTime(i32 %88, i32 %93, i32 0, i32* %95)
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = call i32 @FsdDosDateTimeToSystemTime(i32 %97, i32 %102, i32 %107, i32* %109)
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %73, %25
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 63
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %128 = load i32, i32* @FILE_ATTRIBUTE_ARCHIVE, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @FILE_ATTRIBUTE_SYSTEM, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @FILE_ATTRIBUTE_HIDDEN, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %135 = or i32 %133, %134
  %136 = and i32 %126, %135
  %137 = icmp eq i32 0, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %116
  %139 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %140 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %138, %116
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %148)
  %150 = load i32*, i32** %11, align 8
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = sub i64 %152, 4
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %150, align 4
  %155 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %145, %19
  %157 = load i32, i32* %6, align 4
  ret i32 %157
}

declare dso_local i32 @UNREFERENCED_PARAMETER(i32) #1

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i64 @vfatVolumeIsFatX(i32) #1

declare dso_local i32 @FsdDosDateTimeToSystemTime(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

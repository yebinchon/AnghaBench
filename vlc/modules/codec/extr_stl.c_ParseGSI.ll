; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_stl.c_ParseGSI.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_stl.c_ParseGSI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i64 }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"NULL EBU header (GSI block)\0A\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@GSI_BLOCK_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"EBU header is not in expected size (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"EBU header contains unsupported DFC fps ('%s'); falling back to 25\0A\00", align 1
@CCT_BEGIN = common dso_local global i32 0, align 4
@CCT_END = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"EBU header contains illegal CCT (0x%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"DFC fps=%d, CCT=0x%x\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*)* @ParseGSI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseGSI(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [3 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = call i32 (%struct.TYPE_10__*, i8*, ...) @msg_Err(%struct.TYPE_10__* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %19, i32* %3, align 4
  br label %91

20:                                               ; preds = %2
  %21 = load i64, i64* @GSI_BLOCK_SIZE, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %21, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (%struct.TYPE_10__*, i8*, ...) @msg_Err(%struct.TYPE_10__* %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %34, i32* %3, align 4
  br label %91

35:                                               ; preds = %20
  %36 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 6
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %36, align 1
  %40 = getelementptr inbounds i8, i8* %36, i64 1
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 7
  %43 = load i8, i8* %42, align 1
  store i8 %43, i8* %40, align 1
  %44 = getelementptr inbounds i8, i8* %40, i64 1
  store i8 0, i8* %44, align 1
  %45 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %46 = call i32 @strtol(i8* %45, i32* null, i32 10)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp sgt i32 1, %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 60, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %49, %35
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %55 = call i32 @msg_Warn(%struct.TYPE_10__* %53, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  store i32 25, i32* %8, align 4
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 12
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = shl i32 %60, 8
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 13
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = or i32 %61, %65
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* @CCT_BEGIN, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %56
  %71 = load i32, i32* @CCT_END, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %70, %56
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 (%struct.TYPE_10__*, i8*, ...) @msg_Err(%struct.TYPE_10__* %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %78, i32* %3, align 4
  br label %91

79:                                               ; preds = %70
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @msg_Dbg(%struct.TYPE_10__* %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %79, %74, %27, %16
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @msg_Err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_10__*, i8*, i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_10__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

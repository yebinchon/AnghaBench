; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_SessionCreateResponse.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_SessionCreateResponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64 }

@SS_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"SessionCreateResponse: failed to open session %d resource=0x%x status=0x%x\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"unknown resource id (0x%x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i32*, i32)* @SessionCreateResponse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SessionCreateResponse(%struct.TYPE_10__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @VLC_UNUSED(i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @VLC_UNUSED(i32 %14)
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  %21 = call i32 @ResourceIdToInt(i32* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 7
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 8
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 8
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %25, %28
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @SS_OK, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 (i32, i8*, i32, ...) @msg_Err(i32 %36, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %39)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  br label %86

49:                                               ; preds = %4
  %50 = load i32, i32* %10, align 4
  switch i32 %50, label %72 [
    i32 128, label %51
    i32 133, label %55
    i32 132, label %59
    i32 131, label %63
    i32 129, label %67
    i32 130, label %71
  ]

51:                                               ; preds = %49
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @ResourceManagerOpen(%struct.TYPE_10__* %52, i32 %53)
  br label %86

55:                                               ; preds = %49
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @ApplicationInformationOpen(%struct.TYPE_10__* %56, i32 %57)
  br label %86

59:                                               ; preds = %49
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @ConditionalAccessOpen(%struct.TYPE_10__* %60, i32 %61)
  br label %86

63:                                               ; preds = %49
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @DateTimeOpen(%struct.TYPE_10__* %64, i32 %65)
  br label %86

67:                                               ; preds = %49
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @MMIOpen(%struct.TYPE_10__* %68, i32 %69)
  br label %86

71:                                               ; preds = %49
  br label %72

72:                                               ; preds = %49, %71
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 (i32, i8*, i32, ...) @msg_Err(i32 %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %33, %72, %67, %63, %59, %55, %51
  ret void
}

declare dso_local i32 @VLC_UNUSED(i32) #1

declare dso_local i32 @ResourceIdToInt(i32*) #1

declare dso_local i32 @msg_Err(i32, i8*, i32, ...) #1

declare dso_local i32 @ResourceManagerOpen(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ApplicationInformationOpen(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ConditionalAccessOpen(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @DateTimeOpen(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @MMIOpen(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

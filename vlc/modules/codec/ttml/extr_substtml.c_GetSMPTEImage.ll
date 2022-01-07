; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_GetSMPTEImage.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_GetSMPTEImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"head\00", align 1
@TT_NODE_TYPE_TEXT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"metadata\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"smpte:image\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_8__*, i8*)* @GetSMPTEImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @GetSMPTEImage(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = icmp ne %struct.TYPE_10__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %92

17:                                               ; preds = %2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = call %struct.TYPE_10__* @FindNode(%struct.TYPE_10__* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1, i8* null)
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %6, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = icmp ne %struct.TYPE_10__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store i8* null, i8** %3, align 8
  br label %92

25:                                               ; preds = %17
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %7, align 8
  br label %29

29:                                               ; preds = %87, %25
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = icmp ne %struct.TYPE_11__* %30, null
  br i1 %31, label %32, label %91

32:                                               ; preds = %29
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TT_NODE_TYPE_TEXT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %87

39:                                               ; preds = %32
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = bitcast %struct.TYPE_11__* %40 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %8, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @tt_node_NameCompare(i32 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %87

48:                                               ; preds = %39
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call %struct.TYPE_10__* @FindNode(%struct.TYPE_10__* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 1, i8* %50)
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %9, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %53 = icmp ne %struct.TYPE_10__* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  br label %87

55:                                               ; preds = %48
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = icmp ne %struct.TYPE_11__* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @TT_NODE_TYPE_TEXT, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60, %55
  store i8* null, i8** %3, align 8
  br label %92

69:                                               ; preds = %60
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = bitcast %struct.TYPE_11__* %72 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %73, %struct.TYPE_9__** %10, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %11, align 8
  br label %77

77:                                               ; preds = %82, %69
  %78 = load i8*, i8** %11, align 8
  %79 = load i8, i8* %78, align 1
  %80 = call i64 @isspace(i8 signext %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i8*, i8** %11, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %11, align 8
  br label %77

85:                                               ; preds = %77
  %86 = load i8*, i8** %11, align 8
  store i8* %86, i8** %3, align 8
  br label %92

87:                                               ; preds = %54, %47, %38
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  store %struct.TYPE_11__* %90, %struct.TYPE_11__** %7, align 8
  br label %29

91:                                               ; preds = %29
  store i8* null, i8** %3, align 8
  br label %92

92:                                               ; preds = %91, %85, %68, %24, %16
  %93 = load i8*, i8** %3, align 8
  ret i8* %93
}

declare dso_local %struct.TYPE_10__* @FindNode(%struct.TYPE_10__*, i8*, i32, i8*) #1

declare dso_local i64 @tt_node_NameCompare(i32, i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

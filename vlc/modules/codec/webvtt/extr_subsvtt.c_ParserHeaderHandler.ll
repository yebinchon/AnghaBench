; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_subsvtt.c_ParserHeaderHandler.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_subsvtt.c_ParserHeaderHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser_ctx = type { %struct.TYPE_20__, %struct.TYPE_27__*, %struct.TYPE_25__* }
%struct.TYPE_20__ = type { i64, i64, i32 }
%struct.TYPE_27__ = type { i64, i32* }
%struct.TYPE_25__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_23__*, %struct.TYPE_21__* }
%struct.TYPE_23__ = type { %struct.TYPE_23__* }
%struct.TYPE_21__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"added new region %s\00", align 1
@WEBVTT_HEADER_REGION = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@WEBVTT_HEADER_STYLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8*)* @ParserHeaderHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ParserHeaderHandler(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.parser_ctx*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.parser_ctx*
  store %struct.parser_ctx* %13, %struct.parser_ctx** %9, align 8
  %14 = load %struct.parser_ctx*, %struct.parser_ctx** %9, align 8
  %15 = getelementptr inbounds %struct.parser_ctx, %struct.parser_ctx* %14, i32 0, i32 2
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  store %struct.TYPE_25__* %16, %struct.TYPE_25__** %10, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  store %struct.TYPE_26__* %19, %struct.TYPE_26__** %11, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %86, label %25

25:                                               ; preds = %22, %4
  %26 = load %struct.parser_ctx*, %struct.parser_ctx** %9, align 8
  %27 = getelementptr inbounds %struct.parser_ctx, %struct.parser_ctx* %26, i32 0, i32 1
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %27, align 8
  %29 = icmp ne %struct.TYPE_27__* %28, null
  br i1 %29, label %30, label %69

30:                                               ; preds = %25
  %31 = load %struct.parser_ctx*, %struct.parser_ctx** %9, align 8
  %32 = getelementptr inbounds %struct.parser_ctx, %struct.parser_ctx* %31, i32 0, i32 1
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %30
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load %struct.parser_ctx*, %struct.parser_ctx** %9, align 8
  %43 = getelementptr inbounds %struct.parser_ctx, %struct.parser_ctx* %42, i32 0, i32 1
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %43, align 8
  %45 = call i32 @webvtt_domnode_AppendLast(i32* %41, %struct.TYPE_27__* %44)
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %47, align 8
  %49 = bitcast %struct.TYPE_21__* %48 to i32*
  %50 = load %struct.parser_ctx*, %struct.parser_ctx** %9, align 8
  %51 = getelementptr inbounds %struct.parser_ctx, %struct.parser_ctx* %50, i32 0, i32 1
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 1
  store i32* %49, i32** %53, align 8
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %55 = load %struct.parser_ctx*, %struct.parser_ctx** %9, align 8
  %56 = getelementptr inbounds %struct.parser_ctx, %struct.parser_ctx* %55, i32 0, i32 1
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @msg_Dbg(%struct.TYPE_25__* %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %59)
  br label %66

61:                                               ; preds = %30
  %62 = load %struct.parser_ctx*, %struct.parser_ctx** %9, align 8
  %63 = getelementptr inbounds %struct.parser_ctx, %struct.parser_ctx* %62, i32 0, i32 1
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %63, align 8
  %65 = call i32 @webvtt_region_Delete(%struct.TYPE_27__* %64)
  br label %66

66:                                               ; preds = %61, %37
  %67 = load %struct.parser_ctx*, %struct.parser_ctx** %9, align 8
  %68 = getelementptr inbounds %struct.parser_ctx, %struct.parser_ctx* %67, i32 0, i32 1
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %68, align 8
  br label %69

69:                                               ; preds = %66, %25
  %70 = load i8*, i8** %8, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  br label %101

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @WEBVTT_HEADER_REGION, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = call %struct.TYPE_27__* (...) @webvtt_region_New()
  %82 = load %struct.parser_ctx*, %struct.parser_ctx** %9, align 8
  %83 = getelementptr inbounds %struct.parser_ctx, %struct.parser_ctx* %82, i32 0, i32 1
  store %struct.TYPE_27__* %81, %struct.TYPE_27__** %83, align 8
  br label %84

84:                                               ; preds = %80, %76
  br label %101

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85, %22
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @WEBVTT_HEADER_REGION, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %86
  %91 = load %struct.parser_ctx*, %struct.parser_ctx** %9, align 8
  %92 = getelementptr inbounds %struct.parser_ctx, %struct.parser_ctx* %91, i32 0, i32 1
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %92, align 8
  %94 = icmp ne %struct.TYPE_27__* %93, null
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load %struct.parser_ctx*, %struct.parser_ctx** %9, align 8
  %97 = getelementptr inbounds %struct.parser_ctx, %struct.parser_ctx* %96, i32 0, i32 1
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %97, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @webvtt_region_Parse(%struct.TYPE_27__* %98, i8* %99)
  br label %101

101:                                              ; preds = %72, %84, %95, %90, %86
  ret void
}

declare dso_local i32 @webvtt_domnode_AppendLast(i32*, %struct.TYPE_27__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_25__*, i8*, i64) #1

declare dso_local i32 @webvtt_region_Delete(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_27__* @webvtt_region_New(...) #1

declare dso_local i32 @webvtt_region_Parse(%struct.TYPE_27__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

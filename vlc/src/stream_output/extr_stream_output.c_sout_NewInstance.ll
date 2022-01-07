; ModuleID = '/home/carl/AnghaBench/vlc/src/stream_output/extr_stream_output.c_sout_NewInstance.c'
source_filename = "/home/carl/AnghaBench/vlc/src/stream_output/extr_stream_output.c_sout_NewInstance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i8*, i32*, i64 }

@.str = private unnamed_addr constant [13 x i8] c"sout-display\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"stream output\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"using sout chain=`%s'\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"sout-mux-caching\00", align 1
@VLC_VAR_INTEGER = common dso_local global i32 0, align 4
@VLC_VAR_DOINHERIT = common dso_local global i32 0, align 4
@SOUT_STREAM_WANTS_SUBSTREAMS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"stream chain failed for `%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @sout_NewInstance(i32* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 35
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = call i8* @strdup(i8* %19)
  store i8* %20, i8** %7, align 8
  br label %26

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @var_InheritBool(i32* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @sout_stream_url_to_chain(i32 %23, i8* %24)
  store i8* %25, i8** %7, align 8
  br label %26

26:                                               ; preds = %21, %17
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %95

30:                                               ; preds = %26
  %31 = load i32*, i32** %4, align 8
  %32 = call %struct.TYPE_9__* @vlc_custom_create(i32* %31, i32 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %6, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = icmp eq %struct.TYPE_9__* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @free(i8* %36)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %95

38:                                               ; preds = %30
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @msg_Dbg(%struct.TYPE_9__* %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  %42 = load i8*, i8** %5, align 8
  %43 = call i8* @strdup(i8* %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 4
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = call i32 @vlc_mutex_init(i32* %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  store i32* null, i32** %54, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %57 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @var_Create(%struct.TYPE_9__* %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i32* @sout_StreamChainNew(%struct.TYPE_9__* %60, i8* %61, i32* null, i32* null)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  store i32* %62, i32** %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %38
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @free(i8* %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* @SOUT_STREAM_WANTS_SUBSTREAMS, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = call i32 @sout_StreamControl(i32* %74, i32 %75, i32* %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %79, %struct.TYPE_9__** %3, align 8
  br label %95

80:                                               ; preds = %38
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @msg_Err(%struct.TYPE_9__* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %82)
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @free(i8* %84)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @FREENULL(i8* %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = call i32 @vlc_mutex_destroy(i32* %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %94 = call i32 @vlc_object_delete(%struct.TYPE_9__* %93)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %95

95:                                               ; preds = %80, %69, %35, %29
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %96
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @sout_stream_url_to_chain(i32, i8*) #1

declare dso_local i32 @var_InheritBool(i32*, i8*) #1

declare dso_local %struct.TYPE_9__* @vlc_custom_create(i32*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i32 @var_Create(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32* @sout_StreamChainNew(%struct.TYPE_9__*, i8*, i32*, i32*) #1

declare dso_local i32 @sout_StreamControl(i32*, i32, i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i32 @FREENULL(i8*) #1

declare dso_local i32 @vlc_mutex_destroy(i32*) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

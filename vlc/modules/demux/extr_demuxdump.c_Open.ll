; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_demuxdump.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_demuxdump.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"demuxdump-access\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"sout-file-append\00", align 1
@VLC_VAR_BOOL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"demuxdump-append\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"sout-file-format\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"demuxdump-file\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"no dump file name given\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"cannot create output\00", align 1
@Demux = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %4, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %16, i32* %2, align 4
  br label %75

17:                                               ; preds = %1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = call i8* @var_InheritString(%struct.TYPE_10__* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %23, i32* %2, align 4
  br label %75

24:                                               ; preds = %17
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = load i32, i32* @VLC_VAR_BOOL, align 4
  %27 = call i32 @var_Create(%struct.TYPE_10__* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = call i64 @var_InheritBool(%struct.TYPE_10__* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = call i32 @var_SetBool(%struct.TYPE_10__* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %34

34:                                               ; preds = %31, %24
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = load i32, i32* @VLC_VAR_BOOL, align 4
  %37 = call i32 @var_Create(%struct.TYPE_10__* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = call i8* @var_InheritString(%struct.TYPE_10__* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = call i32 @msg_Err(%struct.TYPE_10__* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %47 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %47, i32* %2, align 4
  br label %75

48:                                               ; preds = %34
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32* @sout_AccessOutNew(%struct.TYPE_10__* %49, i8* %50, i8* %51)
  store i32* %52, i32** %7, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @free(i8* %55)
  %57 = load i32*, i32** %7, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = call i32 @msg_Err(%struct.TYPE_10__* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %62 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %62, i32* %2, align 4
  br label %75

63:                                               ; preds = %48
  %64 = load i32*, i32** %7, align 8
  %65 = bitcast i32* %64 to i8*
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* @Demux, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @Control, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %63, %59, %42, %22, %15
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i8* @var_InheritString(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @var_Create(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i64 @var_InheritBool(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @var_SetBool(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_10__*, i8*) #1

declare dso_local i32* @sout_AccessOutNew(%struct.TYPE_10__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

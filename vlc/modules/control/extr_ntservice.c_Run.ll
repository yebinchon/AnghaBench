; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/extr_ntservice.c_Run.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/extr_ntservice.c_Run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i32*, i32* }

@VLCSERVICENAME = common dso_local global i32 0, align 4
@ServiceDispatch = common dso_local global i32 0, align 4
@p_global_intf = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"ntservice-name\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ntservice-install\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ntservice-uninstall\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"StartServiceCtrlDispatcher failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @Run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca [2 x %struct.TYPE_14__], align 16
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %7, %struct.TYPE_13__** %4, align 8
  %8 = getelementptr inbounds [2 x %struct.TYPE_14__], [2 x %struct.TYPE_14__]* %5, i64 0, i64 0
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load i32, i32* @VLCSERVICENAME, align 4
  %11 = call i64 @TEXT(i32 %10)
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %9, align 16
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  store i32* @ServiceDispatch, i32** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i64 1
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  store i32* null, i32** %15, align 16
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** @p_global_intf, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = call i64 @var_InheritString(%struct.TYPE_13__* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  store i64 %19, i64* %23, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  br label %39

36:                                               ; preds = %1
  %37 = load i32, i32* @VLCSERVICENAME, align 4
  %38 = call i64 @strdup(i32 %37)
  br label %39

39:                                               ; preds = %36, %30
  %40 = phi i64 [ %35, %30 ], [ %38, %36 ]
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  store i64 %40, i64* %44, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = call i64 @var_InheritBool(%struct.TYPE_13__* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = call i32 @NTServiceInstall(%struct.TYPE_13__* %49)
  store i8* null, i8** %2, align 8
  br label %75

51:                                               ; preds = %39
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = call i64 @var_InheritBool(%struct.TYPE_13__* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = call i32 @NTServiceUninstall(%struct.TYPE_13__* %56)
  store i8* null, i8** %2, align 8
  br label %75

58:                                               ; preds = %51
  %59 = getelementptr inbounds [2 x %struct.TYPE_14__], [2 x %struct.TYPE_14__]* %5, i64 0, i64 0
  %60 = call i64 @StartServiceCtrlDispatcher(%struct.TYPE_14__* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = call i32 @msg_Err(%struct.TYPE_13__* %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %58
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @free(i64 %70)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %73 = call i32 @vlc_object_instance(%struct.TYPE_13__* %72)
  %74 = call i32 @libvlc_Quit(i32 %73)
  store i8* null, i8** %2, align 8
  br label %75

75:                                               ; preds = %65, %55, %48
  %76 = load i8*, i8** %2, align 8
  ret i8* %76
}

declare dso_local i64 @TEXT(i32) #1

declare dso_local i64 @var_InheritString(%struct.TYPE_13__*, i8*) #1

declare dso_local i64 @strdup(i32) #1

declare dso_local i64 @var_InheritBool(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @NTServiceInstall(%struct.TYPE_13__*) #1

declare dso_local i32 @NTServiceUninstall(%struct.TYPE_13__*) #1

declare dso_local i64 @StartServiceCtrlDispatcher(%struct.TYPE_14__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @free(i64) #1

declare dso_local i32 @libvlc_Quit(i32) #1

declare dso_local i32 @vlc_object_instance(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

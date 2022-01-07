; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_netbios.c_nbDispatch.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_netbios.c_nbDispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_24__, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 (i32, %struct.TYPE_25__*)* }
%struct.TYPE_25__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c": adapter %p, ncb %p\0A\00", align 1
@NRC_BRIDGE = common dso_local global i32 0, align 4
@NRC_INVADDRESS = common dso_local global i32 0, align 4
@NCBRESET = common dso_local global i32 0, align 4
@NRC_GOODRET = common dso_local global i32 0, align 4
@NRC_ILLCMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"(%p): command code 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"returning 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_25__*)* @nbDispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbDispatch(%struct.TYPE_26__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  %8 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %9 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %10 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.TYPE_26__* %8, %struct.TYPE_25__* %9)
  %11 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %12 = icmp ne %struct.TYPE_26__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @NRC_BRIDGE, align 4
  store i32 %14, i32* %3, align 4
  br label %104

15:                                               ; preds = %2
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %17 = icmp ne %struct.TYPE_25__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @NRC_INVADDRESS, align 4
  store i32 %19, i32* %3, align 4
  br label %104

20:                                               ; preds = %15
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 127
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @NCBRESET, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %31 = call i32 @nbReset(%struct.TYPE_26__* %29, %struct.TYPE_25__* %30)
  store i32 %31, i32* %6, align 4
  br label %100

32:                                               ; preds = %20
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %37 = call i32 @NBCmdQueueAdd(i32 %35, %struct.TYPE_25__* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @NRC_GOODRET, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %99

41:                                               ; preds = %32
  %42 = load i32, i32* %7, align 4
  switch i32 %42, label %85 [
    i32 135, label %43
    i32 129, label %47
    i32 128, label %47
    i32 134, label %47
    i32 133, label %47
    i32 130, label %51
    i32 131, label %55
    i32 136, label %59
    i32 132, label %63
  ]

43:                                               ; preds = %41
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %46 = call i32 @nbCall(%struct.TYPE_26__* %44, %struct.TYPE_25__* %45)
  store i32 %46, i32* %6, align 4
  br label %92

47:                                               ; preds = %41, %41, %41, %41
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %50 = call i32 @nbSend(%struct.TYPE_26__* %48, %struct.TYPE_25__* %49)
  store i32 %50, i32* %6, align 4
  br label %92

51:                                               ; preds = %41
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %54 = call i32 @nbRecv(%struct.TYPE_26__* %52, %struct.TYPE_25__* %53)
  store i32 %54, i32* %6, align 4
  br label %92

55:                                               ; preds = %41
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %58 = call i32 @nbHangup(%struct.TYPE_26__* %56, %struct.TYPE_25__* %57)
  store i32 %58, i32* %6, align 4
  br label %92

59:                                               ; preds = %41
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %62 = call i32 @nbAStat(%struct.TYPE_26__* %60, %struct.TYPE_25__* %61)
  store i32 %62, i32* %6, align 4
  br label %92

63:                                               ; preds = %41
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = load i32 (i32, %struct.TYPE_25__*)*, i32 (i32, %struct.TYPE_25__*)** %67, align 8
  %69 = icmp ne i32 (i32, %struct.TYPE_25__*)* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %63
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  %75 = load i32 (i32, %struct.TYPE_25__*)*, i32 (i32, %struct.TYPE_25__*)** %74, align 8
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %81 = call i32 %75(i32 %79, %struct.TYPE_25__* %80)
  store i32 %81, i32* %6, align 4
  br label %84

82:                                               ; preds = %63
  %83 = load i32, i32* @NRC_ILLCMD, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %82, %70
  br label %92

85:                                               ; preds = %41
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_25__* %86, i32 %89)
  %91 = load i32, i32* @NRC_ILLCMD, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %85, %84, %59, %55, %51, %47, %43
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @NBCmdQueueComplete(i32 %95, %struct.TYPE_25__* %96, i32 %97)
  br label %99

99:                                               ; preds = %92, %32
  br label %100

100:                                              ; preds = %99, %28
  %101 = load i32, i32* %6, align 4
  %102 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %100, %18, %13
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @nbReset(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local i32 @NBCmdQueueAdd(i32, %struct.TYPE_25__*) #1

declare dso_local i32 @nbCall(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local i32 @nbSend(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local i32 @nbRecv(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local i32 @nbHangup(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local i32 @nbAStat(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local i32 @FIXME(i8*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @NBCmdQueueComplete(i32, %struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_io.c_WaitForRemoteOutput.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_io.c_WaitForRemoteOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.timeval = type { i32, i64 }

@SELECT_TYPE_ARG234 = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"select\00", align 1
@SIGALRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @WaitForRemoteOutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WaitForRemoteOutput(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %98

18:                                               ; preds = %1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %98

25:                                               ; preds = %18
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %9, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %89, %25
  %32 = load i32, i32* %10, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %35, %36
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i1 [ true, %31 ], [ %37, %34 ]
  br i1 %39, label %40, label %92

40:                                               ; preds = %38
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %98

49:                                               ; preds = %45, %40
  %50 = call i32 @FD_ZERO(i32* %4)
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @FD_SET(i32 %51, i32* %4)
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %5, align 4
  %54 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* @SELECT_TYPE_ARG234, align 4
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @SELECT_TYPE_ARG234, align 4
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %61, %62
  %64 = call i32 @select(i32 %57, i32* null, i32 %60, i32 %63, %struct.timeval* %6)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %49
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  store i32 0, i32* %69, align 4
  store i32 1, i32* %2, align 4
  br label %98

70:                                               ; preds = %49
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load i64, i64* @errno, align 8
  %75 = load i64, i64* @EINTR, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  store i32 0, i32* %80, align 4
  store i32 1, i32* %2, align 4
  br label %98

81:                                               ; preds = %73
  br label %88

82:                                               ; preds = %70
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %82, %81
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %91 = call i32 @FTPUpdateIOTimer(%struct.TYPE_4__* %90)
  br label %31

92:                                               ; preds = %38
  %93 = call i32 (...) @getpid()
  %94 = load i32, i32* @SIGALRM, align 4
  %95 = call i32 @kill(i32 %93, i32 %94)
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 4
  store i32 1, i32* %97, align 4
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %92, %77, %67, %48, %24, %17
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32, i32, %struct.timeval*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @FTPUpdateIOTimer(%struct.TYPE_4__*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @getpid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

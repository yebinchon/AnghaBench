; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_file_seek.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_file_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.File_Transfers*, %struct.File_Transfers* }
%struct.File_Transfers = type { i64, i64, i64 }

@FRIEND_ONLINE = common dso_local global i64 0, align 8
@MAX_CONCURRENT_FILE_PIPES = common dso_local global i32 0, align 4
@FILESTATUS_NONE = common dso_local global i64 0, align 8
@FILESTATUS_NOT_ACCEPTED = common dso_local global i64 0, align 8
@FILECONTROL_SEEK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_seek(%struct.TYPE_7__* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.File_Transfers*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @friend_not_valid(%struct.TYPE_7__* %15, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %109

20:                                               ; preds = %4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FRIEND_ONLINE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 -2, i32* %5, align 4
  br label %109

31:                                               ; preds = %20
  %32 = load i32, i32* %8, align 4
  %33 = icmp sge i32 %32, 65536
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  store i32 1, i32* %11, align 4
  %35 = load i32, i32* %8, align 4
  %36 = ashr i32 %35, 16
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %39

38:                                               ; preds = %31
  store i32 -4, i32* %5, align 4
  br label %109

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @MAX_CONCURRENT_FILE_PIPES, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 -3, i32* %5, align 4
  br label %109

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load %struct.File_Transfers*, %struct.File_Transfers** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %55, i64 %57
  store %struct.File_Transfers* %58, %struct.File_Transfers** %13, align 8
  br label %70

59:                                               ; preds = %44
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load %struct.File_Transfers*, %struct.File_Transfers** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %66, i64 %68
  store %struct.File_Transfers* %69, %struct.File_Transfers** %13, align 8
  br label %70

70:                                               ; preds = %59, %48
  %71 = load %struct.File_Transfers*, %struct.File_Transfers** %13, align 8
  %72 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @FILESTATUS_NONE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 -3, i32* %5, align 4
  br label %109

77:                                               ; preds = %70
  %78 = load %struct.File_Transfers*, %struct.File_Transfers** %13, align 8
  %79 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @FILESTATUS_NOT_ACCEPTED, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 -5, i32* %5, align 4
  br label %109

84:                                               ; preds = %77
  %85 = load i64, i64* %9, align 8
  %86 = load %struct.File_Transfers*, %struct.File_Transfers** %13, align 8
  %87 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp sge i64 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 -6, i32* %5, align 4
  br label %109

91:                                               ; preds = %84
  %92 = load i64, i64* %9, align 8
  store i64 %92, i64* %14, align 8
  %93 = bitcast i64* %14 to i32*
  %94 = call i32 @host_to_net(i32* %93, i32 8)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @FILECONTROL_SEEK, align 4
  %100 = bitcast i64* %14 to i32*
  %101 = call i64 @send_file_control_packet(%struct.TYPE_7__* %95, i64 %96, i32 %97, i32 %98, i32 %99, i32* %100, i32 8)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %91
  %104 = load i64, i64* %9, align 8
  %105 = load %struct.File_Transfers*, %struct.File_Transfers** %13, align 8
  %106 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %105, i32 0, i32 2
  store i64 %104, i64* %106, align 8
  br label %108

107:                                              ; preds = %91
  store i32 -8, i32* %5, align 4
  br label %109

108:                                              ; preds = %103
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %108, %107, %90, %83, %76, %43, %38, %30, %19
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i64 @friend_not_valid(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @host_to_net(i32*, i32) #1

declare dso_local i64 @send_file_control_packet(%struct.TYPE_7__*, i64, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

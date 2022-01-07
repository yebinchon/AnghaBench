; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_vdr.c_SwitchFile.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_vdr.c_SwitchFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.stat = type { i32 }

@FILE_COUNT = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed to open %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s is not a regular file\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"opened %s\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"File reading failed\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"VLC could not open the file \22%s\22 (%s).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @SwitchFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SwitchFile(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %6, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %113

23:                                               ; preds = %16, %2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @vlc_close(i32 %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 4
  br label %35

35:                                               ; preds = %28, %23
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @FILE_COUNT, align 4
  %38 = icmp uge i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %113

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i8* @GetFilePath(%struct.TYPE_8__* %44, i32 %45)
  store i8* %46, i8** %7, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %113

50:                                               ; preds = %40
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* @O_RDONLY, align 4
  %53 = call i32 @vlc_open(i8* %51, i32 %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %66

60:                                               ; preds = %50
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* @errno, align 4
  %64 = call i32 @vlc_strerror_c(i32 %63)
  %65 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @msg_Err(%struct.TYPE_8__* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %62, i32 %64)
  br label %91

66:                                               ; preds = %50
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @fstat(i32 %69, %struct.stat* %8)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @S_ISREG(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72, %66
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @msg_Err(%struct.TYPE_8__* %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %79)
  br label %91

81:                                               ; preds = %72
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @OptimizeForRead(i32 %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @msg_Dbg(%struct.TYPE_8__* %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %87)
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @free(i8* %89)
  store i32 1, i32* %3, align 4
  br label %113

91:                                               ; preds = %77, %60
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %93 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %94 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* @errno, align 4
  %97 = call i32 @vlc_strerror(i32 %96)
  %98 = call i32 @vlc_dialog_display_error(%struct.TYPE_8__* %92, i32 %93, i32 %94, i8* %95, i32 %97)
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, -1
  br i1 %102, label %103, label %110

103:                                              ; preds = %91
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @vlc_close(i32 %106)
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  store i32 -1, i32* %109, align 4
  br label %110

110:                                              ; preds = %103, %91
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 @free(i8* %111)
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %110, %81, %49, %39, %22
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @vlc_close(i32) #1

declare dso_local i8* @GetFilePath(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @vlc_open(i8*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_8__*, i8*, i8*, ...) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @OptimizeForRead(i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_8__*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_dialog_display_error(%struct.TYPE_8__*, i32, i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @vlc_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_vdr.c_ImportNextFile.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_vdr.c_ImportNextFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.stat = type { i64, i32 }

@FILE_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"could not stat %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s is not a regular file\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s exists\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @ImportNextFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ImportNextFile(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = load i32, i32* @FILE_COUNT, align 4
  %12 = call i8* @GetFilePath(%struct.TYPE_6__* %10, i32 %11)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

16:                                               ; preds = %1
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @vlc_stat(i8* %17, %struct.stat* %6)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @vlc_strerror_c(i32 %23)
  %25 = call i32 (%struct.TYPE_6__*, i8*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %24)
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @free(i8* %26)
  store i32 0, i32* %2, align 4
  br label %59

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @S_ISREG(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 (%struct.TYPE_6__*, i8*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @free(i8* %37)
  store i32 0, i32* %2, align 4
  br label %59

39:                                               ; preds = %28
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 (%struct.TYPE_6__*, i8*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @ARRAY_APPEND(i32 %47, i64 %49)
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %52
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %54, align 4
  store i32 1, i32* %2, align 4
  br label %59

59:                                               ; preds = %39, %33, %20, %15
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i8* @GetFilePath(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @vlc_stat(i8*, %struct.stat*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_6__*, i8*, i8*, ...) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @ARRAY_APPEND(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

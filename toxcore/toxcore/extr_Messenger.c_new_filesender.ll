; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_new_filesender.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_new_filesender.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.File_Transfers* }
%struct.File_Transfers = type { i64, i32, i32, i64, i64, i64, i32 }

@MAX_FILENAME_LENGTH = common dso_local global i32 0, align 4
@MAX_CONCURRENT_FILE_PIPES = common dso_local global i64 0, align 8
@FILESTATUS_NONE = common dso_local global i64 0, align 8
@FILESTATUS_NOT_ACCEPTED = common dso_local global i64 0, align 8
@FILE_PAUSE_NOT = common dso_local global i32 0, align 4
@FILE_ID_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @new_filesender(%struct.TYPE_7__* %0, i64 %1, i64 %2, i32 %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.File_Transfers*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i64 @friend_not_valid(%struct.TYPE_7__* %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  store i64 -1, i64* %8, align 8
  br label %109

23:                                               ; preds = %7
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* @MAX_FILENAME_LENGTH, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i64 -2, i64* %8, align 8
  br label %109

28:                                               ; preds = %23
  store i64 0, i64* %16, align 8
  br label %29

29:                                               ; preds = %49, %28
  %30 = load i64, i64* %16, align 8
  %31 = load i64, i64* @MAX_CONCURRENT_FILE_PIPES, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.File_Transfers*, %struct.File_Transfers** %39, align 8
  %41 = load i64, i64* %16, align 8
  %42 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %40, i64 %41
  %43 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @FILESTATUS_NONE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  br label %52

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %16, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %16, align 8
  br label %29

52:                                               ; preds = %47, %29
  %53 = load i64, i64* %16, align 8
  %54 = load i64, i64* @MAX_CONCURRENT_FILE_PIPES, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i64 -3, i64* %8, align 8
  br label %109

57:                                               ; preds = %52
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %16, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load i32*, i32** %13, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i64 @file_sendrequest(%struct.TYPE_7__* %58, i64 %59, i64 %60, i64 %61, i32 %62, i32* %63, i32* %64, i32 %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  store i64 -4, i64* %8, align 8
  br label %109

69:                                               ; preds = %57
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load %struct.File_Transfers*, %struct.File_Transfers** %75, align 8
  %77 = load i64, i64* %16, align 8
  %78 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %76, i64 %77
  store %struct.File_Transfers* %78, %struct.File_Transfers** %17, align 8
  %79 = load i64, i64* @FILESTATUS_NOT_ACCEPTED, align 8
  %80 = load %struct.File_Transfers*, %struct.File_Transfers** %17, align 8
  %81 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.File_Transfers*, %struct.File_Transfers** %17, align 8
  %84 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 8
  %85 = load %struct.File_Transfers*, %struct.File_Transfers** %17, align 8
  %86 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %85, i32 0, i32 5
  store i64 0, i64* %86, align 8
  %87 = load %struct.File_Transfers*, %struct.File_Transfers** %17, align 8
  %88 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %87, i32 0, i32 4
  store i64 0, i64* %88, align 8
  %89 = load %struct.File_Transfers*, %struct.File_Transfers** %17, align 8
  %90 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %89, i32 0, i32 3
  store i64 0, i64* %90, align 8
  %91 = load i32, i32* @FILE_PAUSE_NOT, align 4
  %92 = load %struct.File_Transfers*, %struct.File_Transfers** %17, align 8
  %93 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load %struct.File_Transfers*, %struct.File_Transfers** %17, align 8
  %95 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32*, i32** %13, align 8
  %98 = load i32, i32* @FILE_ID_LENGTH, align 4
  %99 = call i32 @memcpy(i32 %96, i32* %97, i32 %98)
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load i64, i64* %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  %108 = load i64, i64* %16, align 8
  store i64 %108, i64* %8, align 8
  br label %109

109:                                              ; preds = %69, %68, %56, %27, %22
  %110 = load i64, i64* %8, align 8
  ret i64 %110
}

declare dso_local i64 @friend_not_valid(%struct.TYPE_7__*, i64) #1

declare dso_local i64 @file_sendrequest(%struct.TYPE_7__*, i64, i64, i64, i32, i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

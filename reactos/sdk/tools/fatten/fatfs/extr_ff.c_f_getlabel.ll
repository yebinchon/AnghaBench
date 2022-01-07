; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_getlabel.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_getlabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i64, i32*, i32 }

@FR_OK = common dso_local global i64 0, align 8
@FR_NO_FILE = common dso_local global i64 0, align 8
@FS_FAT32 = common dso_local global i64 0, align 8
@BS_VolID32 = common dso_local global i32 0, align 4
@BS_VolID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f_getlabel(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %13 = call i64 @find_volume(%struct.TYPE_8__** %12, i8** %5, i32 0)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @FR_OK, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %66

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = call i64 @dir_sdi(%struct.TYPE_7__* %9, i32 0)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @FR_OK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %65

26:                                               ; preds = %20
  %27 = call i64 @dir_read(%struct.TYPE_7__* %9, i32 1)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @FR_OK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = call i32 @mem_cpy(i8* %32, i32* %35, i32 11)
  store i32 11, i32* %11, align 4
  br label %37

37:                                               ; preds = %46, %31
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8 0, i8* %41, align 1
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %55

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 32
  br i1 %54, label %37, label %55

55:                                               ; preds = %46, %44
  br label %56

56:                                               ; preds = %55, %26
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @FR_NO_FILE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  store i8 0, i8* %62, align 1
  %63 = load i64, i64* @FR_OK, align 8
  store i64 %63, i64* %8, align 8
  br label %64

64:                                               ; preds = %60, %56
  br label %65

65:                                               ; preds = %64, %20
  br label %66

66:                                               ; preds = %65, %17, %3
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @FR_OK, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %107

70:                                               ; preds = %66
  %71 = load i32*, i32** %7, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %107

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @move_window(%struct.TYPE_8__* %75, i32 %79)
  store i64 %80, i64* %8, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* @FR_OK, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %106

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @FS_FAT32, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* @BS_VolID32, align 4
  br label %95

93:                                               ; preds = %84
  %94 = load i32, i32* @BS_VolID, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  store i32 %96, i32* %10, align 4
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = call i32 @LD_DWORD(i32* %103)
  %105 = load i32*, i32** %7, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %95, %73
  br label %107

107:                                              ; preds = %106, %70, %66
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load i64, i64* %8, align 8
  %111 = call i32 @LEAVE_FF(%struct.TYPE_8__* %109, i64 %110)
  %112 = load i64, i64* %4, align 8
  ret i64 %112
}

declare dso_local i64 @find_volume(%struct.TYPE_8__**, i8**, i32) #1

declare dso_local i64 @dir_sdi(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @dir_read(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @mem_cpy(i8*, i32*, i32) #1

declare dso_local i64 @move_window(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @LD_DWORD(i32*) #1

declare dso_local i32 @LEAVE_FF(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

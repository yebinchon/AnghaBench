; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_install.c_copy_files_callback.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_install.c_copy_files_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.files_callback_info = type { i32, i64, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i8*)* @copy_files_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_files_callback(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.files_callback_info*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.files_callback_info*
  store %struct.files_callback_info* %9, %struct.files_callback_info** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 64
  br i1 %14, label %15, label %40

15:                                               ; preds = %3
  %16 = load %struct.files_callback_info*, %struct.files_callback_info** %7, align 8
  %17 = getelementptr inbounds %struct.files_callback_info, %struct.files_callback_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.files_callback_info*, %struct.files_callback_info** %7, align 8
  %20 = getelementptr inbounds %struct.files_callback_info, %struct.files_callback_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load %struct.files_callback_info*, %struct.files_callback_info** %7, align 8
  %25 = getelementptr inbounds %struct.files_callback_info, %struct.files_callback_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  br label %29

27:                                               ; preds = %15
  %28 = load i64, i64* %4, align 8
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i64 [ %26, %23 ], [ %28, %27 ]
  %31 = load %struct.files_callback_info*, %struct.files_callback_info** %7, align 8
  %32 = getelementptr inbounds %struct.files_callback_info, %struct.files_callback_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load %struct.files_callback_info*, %struct.files_callback_info** %7, align 8
  %37 = getelementptr inbounds %struct.files_callback_info, %struct.files_callback_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @SetupQueueDefaultCopyW(i32 %18, i64 %30, i32 %33, i32* null, i8* %35, i32 %38)
  br label %65

40:                                               ; preds = %3
  %41 = load %struct.files_callback_info*, %struct.files_callback_info** %7, align 8
  %42 = getelementptr inbounds %struct.files_callback_info, %struct.files_callback_info* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.files_callback_info*, %struct.files_callback_info** %7, align 8
  %45 = getelementptr inbounds %struct.files_callback_info, %struct.files_callback_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.files_callback_info*, %struct.files_callback_info** %7, align 8
  %48 = getelementptr inbounds %struct.files_callback_info, %struct.files_callback_info* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %40
  %52 = load %struct.files_callback_info*, %struct.files_callback_info** %7, align 8
  %53 = getelementptr inbounds %struct.files_callback_info, %struct.files_callback_info* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  br label %57

55:                                               ; preds = %40
  %56 = load i64, i64* %4, align 8
  br label %57

57:                                               ; preds = %55, %51
  %58 = phi i64 [ %54, %51 ], [ %56, %55 ]
  %59 = load i64, i64* %4, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = load %struct.files_callback_info*, %struct.files_callback_info** %7, align 8
  %62 = getelementptr inbounds %struct.files_callback_info, %struct.files_callback_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @SetupQueueCopySectionW(i32 %43, i32 %46, i64 %58, i64 %59, i8* %60, i32 %63)
  br label %65

65:                                               ; preds = %57, %29
  %66 = load i32, i32* @TRUE, align 4
  ret i32 %66
}

declare dso_local i32 @SetupQueueDefaultCopyW(i32, i64, i32, i32*, i8*, i32) #1

declare dso_local i32 @SetupQueueCopySectionW(i32, i32, i64, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

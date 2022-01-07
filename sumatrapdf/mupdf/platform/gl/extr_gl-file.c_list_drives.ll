; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-file.c_list_drives.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-file.c_list_drives.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@list_drives.drive_list = internal global %struct.list zeroinitializer, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@common_dirs = common dso_local global %struct.TYPE_5__* null, align 8
@ui = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @list_drives to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_drives() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @PATH_MAX, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  %11 = load i32, i32* @PATH_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %3, align 8
  %14 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %4, align 8
  %15 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %15, i8** %5, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @common_dirs, align 8
  %17 = call i32 @nelem(%struct.TYPE_5__* %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @common_dirs, align 8
  %19 = call i32 @nelem(%struct.TYPE_5__* %18)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ui, i32 0, i32 0), align 4
  %21 = mul nsw i32 %19, %20
  %22 = add nsw i32 %21, 4
  %23 = call i32 @ui_list_begin(%struct.list* @list_drives.drive_list, i32 %17, i32 0, i32 %22)
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %48, %0
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @common_dirs, align 8
  %27 = call i32 @nelem(%struct.TYPE_5__* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %24
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @has_dir(i8* %30, i8* %31, i32 %32, i8* %10, i8* %13)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @common_dirs, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ui_list_item(%struct.list* @list_drives.drive_list, i32 %41, i8* %13, i32 0)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = call i32 @load_dir(i8* %10)
  br label %46

46:                                               ; preds = %44, %35
  br label %47

47:                                               ; preds = %46, %29
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %24

51:                                               ; preds = %24
  %52 = call i32 @ui_list_end(%struct.list* @list_drives.drive_list)
  %53 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %53)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @ui_list_begin(%struct.list*, i32, i32, i32) #2

declare dso_local i32 @nelem(%struct.TYPE_5__*) #2

declare dso_local i64 @has_dir(i8*, i8*, i32, i8*, i8*) #2

declare dso_local i64 @ui_list_item(%struct.list*, i32, i8*, i32) #2

declare dso_local i32 @load_dir(i8*) #2

declare dso_local i32 @ui_list_end(%struct.list*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

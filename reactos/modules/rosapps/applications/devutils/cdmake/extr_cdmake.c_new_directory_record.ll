; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/cdmake/extr_cdmake.c_new_directory_record.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/cdmake/extr_cdmake.c_new_directory_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.TYPE_7__*, i32, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.dirent = type { i8*, i64 }
%struct.stat = type { i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Insufficient memory\00", align 1
@root = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@HIDDEN_FLAG = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @new_directory_record(%struct.dirent* %0, %struct.stat* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca %struct.stat*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.dirent* %0, %struct.dirent** %4, align 8
  store %struct.stat* %1, %struct.stat** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %8 = call %struct.TYPE_7__* @calloc(i32 1, i32 48)
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %7, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %10 = icmp eq %struct.TYPE_7__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = call i32 @error_exit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @root, i32 0, i32 0), align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 7
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %16, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @root, i32 0, i32 0), align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 6
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %20, align 8
  %21 = load %struct.dirent*, %struct.dirent** %4, align 8
  %22 = getelementptr inbounds %struct.dirent, %struct.dirent* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = load %struct.stat*, %struct.stat** %5, align 8
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @S_ISDIR(i32 %27)
  %29 = call i32 @parse_filename_into_dirrecord(i8* %23, %struct.TYPE_7__* %24, i32 %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 5
  %32 = load %struct.stat*, %struct.stat** %5, align 8
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %32, i32 0, i32 1
  %34 = call i32 @convert_date_and_time(i32* %31, i32* %33)
  %35 = load %struct.dirent*, %struct.dirent** %4, align 8
  %36 = getelementptr inbounds %struct.dirent, %struct.dirent* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 46
  br i1 %41, label %42, label %44

42:                                               ; preds = %13
  %43 = load i32, i32* @HIDDEN_FLAG, align 4
  br label %45

44:                                               ; preds = %13
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.stat*, %struct.stat** %5, align 8
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  store i32 %53, i32* %57, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  store %struct.TYPE_7__* %60, %struct.TYPE_7__** %62, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %65, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  ret %struct.TYPE_7__* %66
}

declare dso_local %struct.TYPE_7__* @calloc(i32, i32) #1

declare dso_local i32 @error_exit(i8*) #1

declare dso_local i32 @parse_filename_into_dirrecord(i8*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @convert_date_and_time(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_launch_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_launch_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32, i64, i32, i32*, i32*, i32*, i32*, i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@ET_SHELL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SEE_MASK_IDLIST = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@Globals = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32)* @launch_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @launch_entry(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ET_SHELL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %60

22:                                               ; preds = %3
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %10, align 4
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i32 64, i32* %24, align 8
  %25 = load i32, i32* @SEE_MASK_IDLIST, align 4
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 8
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 7
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 6
  store i32* null, i32** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 5
  store i32* null, i32** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 4
  store i32* null, i32** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @get_to_absolute_pidl(%struct.TYPE_9__* %35, i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  store i64 %37, i64* %38, align 8
  %39 = call i32 @ShellExecuteExW(%struct.TYPE_8__* %11)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %22
  %42 = load i32, i32* %6, align 4
  %43 = call i32 (...) @GetLastError()
  %44 = call i32 @display_error(i32 %42, i32 %43)
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %41, %22
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Globals, i32 0, i32 0), align 4
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @IMalloc_Free(i32 %54, i64 %56)
  br label %58

58:                                               ; preds = %53, %46
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %66

60:                                               ; preds = %3
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = call i32 @get_path(%struct.TYPE_9__* %61, i32* %16)
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @launch_file(i32 %63, i32* %16, i32 %64)
  store i32 %65, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %66

66:                                               ; preds = %60, %58
  %67 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @get_to_absolute_pidl(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @ShellExecuteExW(%struct.TYPE_8__*) #2

declare dso_local i32 @display_error(i32, i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @IMalloc_Free(i32, i64) #2

declare dso_local i32 @get_path(%struct.TYPE_9__*, i32*) #2

declare dso_local i32 @launch_file(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

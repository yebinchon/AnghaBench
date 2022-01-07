; ModuleID = '/home/carl/AnghaBench/vlc/modules/gui/extr_ncurses.c_ReadDir.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/gui/extr_ncurses.c_ReadDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i32*, i32 }
%struct.dir_entry_t = type { i32*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"no current dir set\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot open directory `%s' (%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@comdir_entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @ReadDir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReadDir(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dir_entry_t*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %3, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = call i32 @msg_Dbg(%struct.TYPE_7__* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %114

23:                                               ; preds = %14
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = call i32* @vlc_opendir(i32* %26)
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %23
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @vlc_strerror_c(i32 %35)
  %37 = call i32 @msg_Warn(%struct.TYPE_7__* %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32* %34, i32 %36)
  br label %114

38:                                               ; preds = %23
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = call i32 @DirsDestroy(%struct.TYPE_8__* %39)
  br label %41

41:                                               ; preds = %90, %87, %67, %59, %38
  %42 = load i32*, i32** %4, align 8
  %43 = call i8* @vlc_readdir(i32* %42)
  store i8* %43, i8** %5, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %99

45:                                               ; preds = %41
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 46
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i8*, i8** %5, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %41

60:                                               ; preds = %55, %50, %45
  %61 = call %struct.dir_entry_t* @malloc(i32 16)
  store %struct.dir_entry_t* %61, %struct.dir_entry_t** %6, align 8
  %62 = load %struct.dir_entry_t*, %struct.dir_entry_t** %6, align 8
  %63 = icmp eq %struct.dir_entry_t* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %41

68:                                               ; preds = %60
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @IsFile(i32* %71, i8* %72)
  %74 = load %struct.dir_entry_t*, %struct.dir_entry_t** %6, align 8
  %75 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = call i32* @strdup(i8* %76)
  %78 = load %struct.dir_entry_t*, %struct.dir_entry_t** %6, align 8
  %79 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %78, i32 0, i32 0
  store i32* %77, i32** %79, align 8
  %80 = load %struct.dir_entry_t*, %struct.dir_entry_t** %6, align 8
  %81 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %68
  %88 = load %struct.dir_entry_t*, %struct.dir_entry_t** %6, align 8
  %89 = call i32 @free(%struct.dir_entry_t* %88)
  br label %41

90:                                               ; preds = %68
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.dir_entry_t*, %struct.dir_entry_t** %6, align 8
  %98 = call i32 @TAB_APPEND(i64 %93, i32 %96, %struct.dir_entry_t* %97)
  br label %41

99:                                               ; preds = %41
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @closedir(i32* %100)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %99
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @qsort(i32 %109, i64 %112, i32 8, i32* @comdir_entries)
  br label %114

114:                                              ; preds = %20, %30, %106, %99
  ret void
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_7__*, i8*) #1

declare dso_local i32* @vlc_opendir(i32*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_7__*, i8*, i32*, i32) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i32 @DirsDestroy(%struct.TYPE_8__*) #1

declare dso_local i8* @vlc_readdir(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.dir_entry_t* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IsFile(i32*, i8*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @free(%struct.dir_entry_t*) #1

declare dso_local i32 @TAB_APPEND(i64, i32, %struct.dir_entry_t*) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @qsort(i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

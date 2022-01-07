; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_icon.c_get_basedirs.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_icon.c_get_basedirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_9__ = type { i8** }

@.str = private unnamed_addr constant [13 x i8] c"$HOME/.icons\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"XDG_DATA_HOME\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"$XDG_DATA_HOME/icons\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"$HOME/.local/share/icons\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"/usr/share/pixmaps\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"XDG_DATA_DIRS\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"/usr/local/share:/usr/share\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%s/icons\00", align 1
@WRDE_UNDEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* ()* @get_basedirs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @get_basedirs() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = call %struct.TYPE_10__* (...) @create_list()
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %1, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %12 = call i8* @strdup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @list_add(%struct.TYPE_10__* %11, i8* %12)
  %14 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i8* %14, i8** %2, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %0
  %19 = load i8*, i8** %2, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %18, %0
  %24 = phi i1 [ false, %0 ], [ %22, %18 ]
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0)
  %27 = call i8* @strdup(i8* %26)
  %28 = call i32 @list_add(%struct.TYPE_10__* %15, i8* %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %30 = call i8* @strdup(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %31 = call i32 @list_add(%struct.TYPE_10__* %29, i8* %30)
  %32 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i8* %32, i8** %3, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %23
  %36 = load i8*, i8** %3, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35, %23
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %41

41:                                               ; preds = %40, %35
  %42 = load i8*, i8** %3, align 8
  %43 = call i8* @strdup(i8* %42)
  store i8* %43, i8** %3, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = call i8* @strtok(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i8* %45, i8** %4, align 8
  br label %46

46:                                               ; preds = %60, %41
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @snprintf(i8* null, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %47)
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i8* @malloc(i64 %51)
  store i8* %52, i8** %6, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @snprintf(i8* %53, i64 %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @list_add(%struct.TYPE_10__* %57, i8* %58)
  br label %60

60:                                               ; preds = %46
  %61 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i8* %61, i8** %4, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %46, label %63

63:                                               ; preds = %60
  %64 = load i8*, i8** %3, align 8
  %65 = call i32 @free(i8* %64)
  %66 = call %struct.TYPE_10__* (...) @create_list()
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %102, %63
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %105

73:                                               ; preds = %67
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @WRDE_UNDEF, align 4
  %82 = call i64 @wordexp(i32 %80, %struct.TYPE_9__* %9, i32 %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %86 = load i8**, i8*** %85, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @dir_exists(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %84
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %94 = load i8**, i8*** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i8* @strdup(i8* %96)
  %98 = call i32 @list_add(%struct.TYPE_10__* %92, i8* %97)
  br label %99

99:                                               ; preds = %91, %84
  %100 = call i32 @wordfree(%struct.TYPE_9__* %9)
  br label %101

101:                                              ; preds = %99, %73
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %67

105:                                              ; preds = %67
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %107 = call i32 @list_free_items_and_destroy(%struct.TYPE_10__* %106)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  ret %struct.TYPE_10__* %108
}

declare dso_local %struct.TYPE_10__* @create_list(...) #1

declare dso_local i32 @list_add(%struct.TYPE_10__*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @wordexp(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i64 @dir_exists(i8*) #1

declare dso_local i32 @wordfree(%struct.TYPE_9__*) #1

declare dso_local i32 @list_free_items_and_destroy(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

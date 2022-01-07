; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_seafile-session.c_load_system_proxy.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_seafile-session.c_load_system_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i8*, i32, i8*, i8* }
%struct.TYPE_6__ = type { i8* }

@seaf = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"system-proxy.txt\00", align 1
@G_FILE_TEST_EXISTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Can't load system proxy: file %s doesn't exist\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Failed to load system proxy information: %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to load system proxy information\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"Failed to load system proxy information: proxy type missing\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"socks\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"Failed to load system proxy information: invalid proxy type %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @load_system_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_system_proxy(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** @seaf, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @g_build_filename(i32 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %10, i8** %3, align 8
  store i32* null, i32** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* @G_FILE_TEST_EXISTS, align 4
  %13 = call i32 @g_file_test(i8* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  br label %86

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  %20 = call i32* @json_load_file(i8* %19, i32 0, %struct.TYPE_6__* %5)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  br label %34

32:                                               ; preds = %23
  %33 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %28
  br label %86

35:                                               ; preds = %18
  %36 = load i32*, i32** %4, align 8
  %37 = call i8* @json_object_get_string_member(i32* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %37, i8** %6, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0))
  br label %86

42:                                               ; preds = %35
  %43 = load i8*, i8** %6, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i64 0, i64 0), i8* %55)
  br label %86

57:                                               ; preds = %50, %46, %42
  %58 = load i8*, i8** %6, align 8
  %59 = call i64 @g_strcmp0(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %86

62:                                               ; preds = %57
  %63 = load i8*, i8** %6, align 8
  %64 = call i8* @g_strdup(i8* %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = call i8* @json_object_get_string_member(i32* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %69 = call i8* @g_strdup(i8* %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @json_object_get_int_member(i32* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = call i8* @json_object_get_string_member(i32* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %78 = call i8* @g_strdup(i8* %77)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = call i8* @json_object_get_string_member(i32* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %83 = call i8* @g_strdup(i8* %82)
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %62, %61, %54, %40, %34, %15
  %87 = load i8*, i8** %3, align 8
  %88 = call i32 @g_free(i8* %87)
  %89 = load i32*, i32** %4, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 @json_decref(i32* %92)
  br label %94

94:                                               ; preds = %91, %86
  ret void
}

declare dso_local i8* @g_build_filename(i32, i8*, i32*) #1

declare dso_local i32 @g_file_test(i8*, i32) #1

declare dso_local i32 @seaf_warning(i8*, ...) #1

declare dso_local i32* @json_load_file(i8*, i32, %struct.TYPE_6__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @json_object_get_string_member(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @g_strcmp0(i8*, i8*) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i32 @json_object_get_int_member(i32*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

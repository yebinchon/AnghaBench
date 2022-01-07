; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_commit-mgr.c_load_commit.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_commit-mgr.c_load_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Failed to load commit json object: %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_9__*, i8*, i32, i8*)* @load_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @load_commit(%struct.TYPE_9__* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_8__, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %12, align 8
  store i32* null, i32** %13, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = icmp ne i32 %19, 40
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %88

22:                                               ; preds = %17
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = call i64 @seaf_obj_store_read_obj(i32 %25, i8* %26, i32 %27, i8* %28, i8** %10, i32* %11)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %88

32:                                               ; preds = %22
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32* @json_loadb(i8* %33, i32 %34, i32 0, %struct.TYPE_8__* %14)
  store i32* %35, i32** %13, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %67, label %38

38:                                               ; preds = %32
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sub nsw i32 %49, 1
  %51 = call i32 @clean_utf8_data(i8* %48, i32 %50)
  br label %56

52:                                               ; preds = %38
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @clean_utf8_data(i8* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32* @json_loadb(i8* %57, i32 %58, i32 0, %struct.TYPE_8__* %14)
  store i32* %59, i32** %13, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @seaf_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %78

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %32
  %68 = load i8*, i8** %9, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = call %struct.TYPE_10__* @commit_from_json_object(i8* %68, i32* %69)
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %12, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %72 = icmp ne %struct.TYPE_10__* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %76, align 8
  br label %77

77:                                               ; preds = %73, %67
  br label %78

78:                                               ; preds = %77, %62
  %79 = load i32*, i32** %13, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32*, i32** %13, align 8
  %83 = call i32 @json_decref(i32* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @g_free(i8* %85)
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %87, %struct.TYPE_10__** %5, align 8
  br label %88

88:                                               ; preds = %84, %31, %21
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  ret %struct.TYPE_10__* %89
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @seaf_obj_store_read_obj(i32, i8*, i32, i8*, i8**, i32*) #1

declare dso_local i32* @json_loadb(i8*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @clean_utf8_data(i8*, i32) #1

declare dso_local i32 @seaf_warning(i8*, i32) #1

declare dso_local %struct.TYPE_10__* @commit_from_json_object(i8*, i32*) #1

declare dso_local i32 @json_decref(i32*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

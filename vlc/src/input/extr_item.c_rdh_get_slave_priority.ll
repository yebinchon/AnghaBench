; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_item.c_rdh_get_slave_priority.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_item.c_rdh_get_slave_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_6__ = type { i64 }

@SLAVE_PRIORITY_MATCH_NONE = common dso_local global i32 0, align 4
@SLAVE_PRIORITY_MATCH_ALL = common dso_local global i32 0, align 4
@SLAVE_TYPE_SPU = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"cdg\00", align 1
@SLAVE_PRIORITY_MATCH_RIGHT = common dso_local global i32 0, align 4
@SLAVE_PRIORITY_MATCH_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_6__*, i8*)* @rdh_get_slave_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdh_get_slave_priority(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i32, i32* @SLAVE_PRIORITY_MATCH_NONE, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @rdh_name_from_filename(i8* %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @rdh_name_from_filename(i8* %19)
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %3
  br label %84

27:                                               ; preds = %23
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @strlen(i8* %28)
  store i64 %29, i64* %10, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i64 @strlen(i8* %30)
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %27
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %10, align 8
  %38 = mul i64 2, %37
  %39 = icmp ugt i64 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %27
  br label %84

41:                                               ; preds = %35
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @strcmp(i8* %42, i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @SLAVE_PRIORITY_MATCH_ALL, align 4
  store i32 %47, i32* %7, align 4
  br label %84

48:                                               ; preds = %41
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SLAVE_TYPE_SPU, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %48
  %55 = load i8*, i8** %9, align 8
  %56 = call i8* @strrchr(i8* %55, i8 signext 46)
  store i8* %56, i8** %12, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %12, align 8
  %62 = call i64 @strcasecmp(i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %84

65:                                               ; preds = %59, %54
  br label %66

66:                                               ; preds = %65, %48
  %67 = load i8*, i8** %9, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = call i8* @strstr(i8* %67, i8* %68)
  store i8* %69, i8** %13, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  %73 = load i8*, i8** %13, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = call i64 @strlen(i8* %74)
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = call i64 @strlen(i8* %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @SLAVE_PRIORITY_MATCH_RIGHT, align 4
  store i32 %80, i32* %7, align 4
  br label %84

81:                                               ; preds = %72
  %82 = load i32, i32* @SLAVE_PRIORITY_MATCH_LEFT, align 4
  store i32 %82, i32* %7, align 4
  br label %84

83:                                               ; preds = %66
  br label %84

84:                                               ; preds = %83, %81, %79, %64, %46, %40, %26
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @free(i8* %85)
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @free(i8* %87)
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i8* @rdh_name_from_filename(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

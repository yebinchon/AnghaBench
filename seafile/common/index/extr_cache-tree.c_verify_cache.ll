; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_cache-tree.c_verify_cache.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_cache-tree.c_verify_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32, i8*, i32 }

@CE_INTENT_TO_ADD = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"...\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"You have both %s and %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_entry**, i32)* @verify_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_cache(%struct.cache_entry** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_entry**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cache_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.cache_entry** %0, %struct.cache_entry*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %39, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %12
  %17 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %17, i64 %19
  %21 = load %struct.cache_entry*, %struct.cache_entry** %20, align 8
  store %struct.cache_entry* %21, %struct.cache_entry** %8, align 8
  %22 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %23 = call i64 @ce_stage(%struct.cache_entry* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %16
  %26 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %27 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CE_INTENT_TO_ADD, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25, %16
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  %35 = icmp slt i32 10, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %42

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %25
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %12

42:                                               ; preds = %36, %12
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %108

46:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %100, %46
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = sub nsw i32 %49, 1
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %103

52:                                               ; preds = %47
  %53 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %53, i64 %55
  %57 = load %struct.cache_entry*, %struct.cache_entry** %56, align 8
  %58 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %9, align 8
  %60 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %60, i64 %63
  %65 = load %struct.cache_entry*, %struct.cache_entry** %64, align 8
  %66 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %10, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @strlen(i8* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %99

74:                                               ; preds = %52
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i64 @strncmp(i8* %75, i8* %76, i32 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %74
  %81 = load i8*, i8** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 47
  br i1 %87, label %88, label %99

88:                                               ; preds = %80
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  %91 = icmp slt i32 10, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* @stderr, align 4
  %94 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %103

95:                                               ; preds = %88
  %96 = load i8*, i8** %9, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = call i32 @seaf_warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %96, i8* %97)
  br label %99

99:                                               ; preds = %95, %80, %74, %52
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %47

103:                                              ; preds = %92, %47
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 -1, i32* %3, align 4
  br label %108

107:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %106, %45
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i64 @ce_stage(%struct.cache_entry*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @seaf_warning(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd.c_cmd_find.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd.c_cmd_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_entry = type { i8*, i8* }

@cmd_table = common dso_local global %struct.cmd_entry** null, align 8
@.str = private unnamed_addr constant [20 x i8] c"unknown command: %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ambiguous command: %s, could be: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_entry* (i8*, i8**)* @cmd_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_entry* @cmd_find(i8* %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_entry**, align 8
  %7 = alloca %struct.cmd_entry*, align 8
  %8 = alloca %struct.cmd_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [8192 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_entry* null, %struct.cmd_entry** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.cmd_entry**, %struct.cmd_entry*** @cmd_table, align 8
  store %struct.cmd_entry** %11, %struct.cmd_entry*** %6, align 8
  br label %12

12:                                               ; preds = %56, %2
  %13 = load %struct.cmd_entry**, %struct.cmd_entry*** %6, align 8
  %14 = load %struct.cmd_entry*, %struct.cmd_entry** %13, align 8
  %15 = icmp ne %struct.cmd_entry* %14, null
  br i1 %15, label %16, label %59

16:                                               ; preds = %12
  %17 = load %struct.cmd_entry**, %struct.cmd_entry*** %6, align 8
  %18 = load %struct.cmd_entry*, %struct.cmd_entry** %17, align 8
  store %struct.cmd_entry* %18, %struct.cmd_entry** %7, align 8
  %19 = load %struct.cmd_entry*, %struct.cmd_entry** %7, align 8
  %20 = getelementptr inbounds %struct.cmd_entry, %struct.cmd_entry* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load %struct.cmd_entry*, %struct.cmd_entry** %7, align 8
  %25 = getelementptr inbounds %struct.cmd_entry, %struct.cmd_entry* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @strcmp(i8* %26, i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  %31 = load %struct.cmd_entry*, %struct.cmd_entry** %7, align 8
  store %struct.cmd_entry* %31, %struct.cmd_entry** %8, align 8
  br label %59

32:                                               ; preds = %23, %16
  %33 = load %struct.cmd_entry*, %struct.cmd_entry** %7, align 8
  %34 = getelementptr inbounds %struct.cmd_entry, %struct.cmd_entry* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = call i64 @strncmp(i8* %35, i8* %36, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %56

42:                                               ; preds = %32
  %43 = load %struct.cmd_entry*, %struct.cmd_entry** %8, align 8
  %44 = icmp ne %struct.cmd_entry* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 1, i32* %9, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load %struct.cmd_entry*, %struct.cmd_entry** %7, align 8
  store %struct.cmd_entry* %47, %struct.cmd_entry** %8, align 8
  %48 = load %struct.cmd_entry*, %struct.cmd_entry** %7, align 8
  %49 = getelementptr inbounds %struct.cmd_entry, %struct.cmd_entry* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = call i64 @strcmp(i8* %50, i8* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %59

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %41
  %57 = load %struct.cmd_entry**, %struct.cmd_entry*** %6, align 8
  %58 = getelementptr inbounds %struct.cmd_entry*, %struct.cmd_entry** %57, i32 1
  store %struct.cmd_entry** %58, %struct.cmd_entry*** %6, align 8
  br label %12

59:                                               ; preds = %54, %30, %12
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %72

63:                                               ; preds = %59
  %64 = load %struct.cmd_entry*, %struct.cmd_entry** %8, align 8
  %65 = icmp eq %struct.cmd_entry* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i8**, i8*** %5, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 (i8**, i8*, i8*, ...) @xasprintf(i8** %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %68)
  store %struct.cmd_entry* null, %struct.cmd_entry** %3, align 8
  br label %120

70:                                               ; preds = %63
  %71 = load %struct.cmd_entry*, %struct.cmd_entry** %8, align 8
  store %struct.cmd_entry* %71, %struct.cmd_entry** %3, align 8
  br label %120

72:                                               ; preds = %62
  %73 = getelementptr inbounds [8192 x i8], [8192 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %73, align 16
  %74 = load %struct.cmd_entry**, %struct.cmd_entry*** @cmd_table, align 8
  store %struct.cmd_entry** %74, %struct.cmd_entry*** %6, align 8
  br label %75

75:                                               ; preds = %107, %72
  %76 = load %struct.cmd_entry**, %struct.cmd_entry*** %6, align 8
  %77 = load %struct.cmd_entry*, %struct.cmd_entry** %76, align 8
  %78 = icmp ne %struct.cmd_entry* %77, null
  br i1 %78, label %79, label %110

79:                                               ; preds = %75
  %80 = load %struct.cmd_entry**, %struct.cmd_entry*** %6, align 8
  %81 = load %struct.cmd_entry*, %struct.cmd_entry** %80, align 8
  store %struct.cmd_entry* %81, %struct.cmd_entry** %7, align 8
  %82 = load %struct.cmd_entry*, %struct.cmd_entry** %7, align 8
  %83 = getelementptr inbounds %struct.cmd_entry, %struct.cmd_entry* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @strlen(i8* %86)
  %88 = call i64 @strncmp(i8* %84, i8* %85, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %107

91:                                               ; preds = %79
  %92 = getelementptr inbounds [8192 x i8], [8192 x i8]* %10, i64 0, i64 0
  %93 = load %struct.cmd_entry*, %struct.cmd_entry** %7, align 8
  %94 = getelementptr inbounds %struct.cmd_entry, %struct.cmd_entry* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @strlcat(i8* %92, i8* %95, i32 8192)
  %97 = sext i32 %96 to i64
  %98 = icmp uge i64 %97, 8192
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %110

100:                                              ; preds = %91
  %101 = getelementptr inbounds [8192 x i8], [8192 x i8]* %10, i64 0, i64 0
  %102 = call i32 @strlcat(i8* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 8192)
  %103 = sext i32 %102 to i64
  %104 = icmp uge i64 %103, 8192
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %110

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %90
  %108 = load %struct.cmd_entry**, %struct.cmd_entry*** %6, align 8
  %109 = getelementptr inbounds %struct.cmd_entry*, %struct.cmd_entry** %108, i32 1
  store %struct.cmd_entry** %109, %struct.cmd_entry*** %6, align 8
  br label %75

110:                                              ; preds = %105, %99, %75
  %111 = getelementptr inbounds [8192 x i8], [8192 x i8]* %10, i64 0, i64 0
  %112 = call i32 @strlen(i8* %111)
  %113 = sub nsw i32 %112, 2
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [8192 x i8], [8192 x i8]* %10, i64 0, i64 %114
  store i8 0, i8* %115, align 1
  %116 = load i8**, i8*** %5, align 8
  %117 = load i8*, i8** %4, align 8
  %118 = getelementptr inbounds [8192 x i8], [8192 x i8]* %10, i64 0, i64 0
  %119 = call i32 (i8**, i8*, i8*, ...) @xasprintf(i8** %116, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %117, i8* %118)
  store %struct.cmd_entry* null, %struct.cmd_entry** %3, align 8
  br label %120

120:                                              ; preds = %110, %70, %66
  %121 = load %struct.cmd_entry*, %struct.cmd_entry** %3, align 8
  ret %struct.cmd_entry* %121
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @xasprintf(i8**, i8*, i8*, ...) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

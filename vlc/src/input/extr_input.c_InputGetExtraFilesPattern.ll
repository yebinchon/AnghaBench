; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_input.c_InputGetExtraFilesPattern.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_input.c_InputGetExtraFilesPattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Detected extra file `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8***, i8*, i8*, i8*, i32, i32)* @InputGetExtraFilesPattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InputGetExtraFilesPattern(i32* %0, i32* %1, i8*** %2, i8* %3, i8* %4, i8* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8***, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8**, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.stat, align 4
  %25 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8*** %2, i8**** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %26 = load i32, i32* %17, align 4
  %27 = load i8**, i8*** %18, align 8
  %28 = call i32 @TAB_INIT(i32 %26, i8** %27)
  %29 = load i8*, i8** %12, align 8
  %30 = call i8* @strdup(i8* %29)
  store i8* %30, i8** %19, align 8
  %31 = load i8*, i8** %19, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %8
  br label %107

34:                                               ; preds = %8
  %35 = load i8*, i8** %19, align 8
  %36 = load i8*, i8** %19, align 8
  %37 = call i64 @strlen(i8* %36)
  %38 = load i8*, i8** %13, align 8
  %39 = call i64 @strlen(i8* %38)
  %40 = sub i64 %37, %39
  %41 = getelementptr inbounds i8, i8* %35, i64 %40
  store i8* %41, i8** %20, align 8
  %42 = load i8*, i8** %20, align 8
  %43 = load i8*, i8** %19, align 8
  %44 = icmp uge i8* %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i8*, i8** %20, align 8
  store i8 0, i8* %47, align 1
  %48 = load i32, i32* %15, align 4
  store i32 %48, i32* %21, align 4
  br label %49

49:                                               ; preds = %101, %34
  %50 = load i32, i32* %21, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %53, label %104

53:                                               ; preds = %49
  %54 = load i8*, i8** %14, align 8
  %55 = load i8*, i8** %19, align 8
  %56 = load i32, i32* %21, align 4
  %57 = call i64 @asprintf(i8** %22, i8* %54, i8* %55, i32 %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %104

60:                                               ; preds = %53
  %61 = load i8*, i8** %22, align 8
  %62 = call i8* @get_path(i8* %61)
  store i8* %62, i8** %23, align 8
  %63 = load i8*, i8** %23, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %78, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %23, align 8
  %67 = call i64 @vlc_stat(i8* %66, %struct.stat* %24)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @S_ISREG(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %74, %69, %65, %60
  %79 = load i8*, i8** %23, align 8
  %80 = call i32 @free(i8* %79)
  %81 = load i8*, i8** %22, align 8
  %82 = call i32 @free(i8* %81)
  br label %104

83:                                               ; preds = %74
  %84 = load i32*, i32** %9, align 8
  %85 = load i8*, i8** %23, align 8
  %86 = call i32 @msg_Dbg(i32* %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %85)
  %87 = load i8*, i8** %23, align 8
  %88 = call i8* @vlc_path2uri(i8* %87, i32* null)
  store i8* %88, i8** %25, align 8
  %89 = load i8*, i8** %25, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = load i32, i32* %17, align 4
  %93 = load i8**, i8*** %18, align 8
  %94 = load i8*, i8** %25, align 8
  %95 = call i32 @TAB_APPEND(i32 %92, i8** %93, i8* %94)
  br label %96

96:                                               ; preds = %91, %83
  %97 = load i8*, i8** %23, align 8
  %98 = call i32 @free(i8* %97)
  %99 = load i8*, i8** %22, align 8
  %100 = call i32 @free(i8* %99)
  br label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %21, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %21, align 4
  br label %49

104:                                              ; preds = %78, %59, %49
  %105 = load i8*, i8** %19, align 8
  %106 = call i32 @free(i8* %105)
  br label %107

107:                                              ; preds = %104, %33
  %108 = load i32, i32* %17, align 4
  %109 = load i32*, i32** %10, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i8**, i8*** %18, align 8
  %111 = load i8***, i8**** %11, align 8
  store i8** %110, i8*** %111, align 8
  ret void
}

declare dso_local i32 @TAB_INIT(i32, i8**) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*, i32) #1

declare dso_local i8* @get_path(i8*) #1

declare dso_local i64 @vlc_stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*) #1

declare dso_local i8* @vlc_path2uri(i8*, i32*) #1

declare dso_local i32 @TAB_APPEND(i32, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

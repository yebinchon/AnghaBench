; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_check_dir_inclusiveness.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_check_dir_inclusiveness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @check_dir_inclusiveness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_dir_inclusiveness(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call i8* @g_strdup(i8* %10)
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @g_strdup(i8* %12)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @remove_trail_slash(i8* %14)
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @remove_trail_slash(i8* %16)
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %8, align 8
  br label %20

20:                                               ; preds = %85, %2
  %21 = load i8*, i8** %7, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i1 [ false, %20 ], [ %29, %25 ]
  br i1 %31, label %32, label %90

32:                                               ; preds = %30
  br label %33

33:                                               ; preds = %46, %32
  %34 = load i8*, i8** %7, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @is_separator(i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = call i64 @is_separator(i8 signext %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %38, %33
  %45 = phi i1 [ false, %33 ], [ %43, %38 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %7, align 8
  br label %33

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %63, %49
  %51 = load i8*, i8** %8, align 8
  %52 = load i8, i8* %51, align 1
  %53 = call i64 @is_separator(i8 signext %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = call i64 @is_separator(i8 signext %58)
  %60 = icmp ne i64 %59, 0
  br label %61

61:                                               ; preds = %55, %50
  %62 = phi i1 [ false, %50 ], [ %60, %55 ]
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %8, align 8
  br label %50

66:                                               ; preds = %61
  %67 = load i8*, i8** %7, align 8
  %68 = load i8, i8* %67, align 1
  %69 = call i64 @is_separator(i8 signext %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i8*, i8** %8, align 8
  %73 = load i8, i8* %72, align 1
  %74 = call i64 @is_separator(i8 signext %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %71, %66
  %77 = load i8*, i8** %7, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = load i8*, i8** %8, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %126

85:                                               ; preds = %76, %71
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %7, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %8, align 8
  br label %20

90:                                               ; preds = %30
  %91 = load i8*, i8** %7, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i8*, i8** %8, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 -1, i32* %9, align 4
  br label %125

101:                                              ; preds = %95, %90
  %102 = load i8*, i8** %7, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load i8*, i8** %7, align 8
  %108 = load i8, i8* %107, align 1
  %109 = call i64 @is_separator(i8 signext %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i32 1, i32* %9, align 4
  br label %124

112:                                              ; preds = %106, %101
  %113 = load i8*, i8** %8, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load i8*, i8** %8, align 8
  %119 = load i8, i8* %118, align 1
  %120 = call i64 @is_separator(i8 signext %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  store i32 -1, i32* %9, align 4
  br label %123

123:                                              ; preds = %122, %117, %112
  br label %124

124:                                              ; preds = %123, %111
  br label %125

125:                                              ; preds = %124, %100
  br label %126

126:                                              ; preds = %125, %84
  %127 = load i8*, i8** %5, align 8
  %128 = call i32 @g_free(i8* %127)
  %129 = load i8*, i8** %6, align 8
  %130 = call i32 @g_free(i8* %129)
  %131 = load i32, i32* %9, align 4
  ret i32 %131
}

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i32 @remove_trail_slash(i8*) #1

declare dso_local i64 @is_separator(i8 signext) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

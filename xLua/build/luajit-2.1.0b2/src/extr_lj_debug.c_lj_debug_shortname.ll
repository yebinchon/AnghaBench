; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_debug.c_lj_debug_shortname.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_debug.c_lj_debug_shortname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@LUA_IDSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"[builtin:\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"[string \22\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\22]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lj_debug_shortname(i8* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = call i8* @strdata(%struct.TYPE_4__* %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 61
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i32, i32* @LUA_IDSIZE, align 4
  %21 = sext i32 %20 to i64
  %22 = call i32 @strncpy(i8* %17, i8* %19, i64 %21)
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* @LUA_IDSIZE, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  store i8 0, i8* %27, align 1
  br label %134

28:                                               ; preds = %3
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 64
  br i1 %32, label %33, label %63

33:                                               ; preds = %28
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %8, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* @LUA_IDSIZE, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp uge i64 %41, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %33
  %46 = load i64, i64* %8, align 8
  %47 = load i32, i32* @LUA_IDSIZE, align 4
  %48 = sub nsw i32 %47, 4
  %49 = sext i32 %48 to i64
  %50 = sub i64 %46, %49
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 %50
  store i8* %52, i8** %7, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %4, align 8
  store i8 46, i8* %53, align 1
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %4, align 8
  store i8 46, i8* %55, align 1
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %4, align 8
  store i8 46, i8* %57, align 1
  br label %59

59:                                               ; preds = %45, %33
  %60 = load i8*, i8** %4, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @strcpy(i8* %60, i8* %61)
  br label %133

63:                                               ; preds = %28
  store i64 0, i64* %9, align 8
  br label %64

64:                                               ; preds = %79, %63
  %65 = load i64, i64* %9, align 8
  %66 = load i32, i32* @LUA_IDSIZE, align 4
  %67 = sub nsw i32 %66, 12
  %68 = sext i32 %67 to i64
  %69 = icmp ult i64 %65, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %64
  %71 = load i8*, i8** %7, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp slt i32 %75, 32
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %82

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %9, align 8
  br label %64

82:                                               ; preds = %77, %64
  %83 = load i8*, i8** %4, align 8
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %84, -1
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)
  %88 = call i32 @strcpy(i8* %83, i8* %87)
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 9
  store i8* %90, i8** %4, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = load i64, i64* %9, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %119

97:                                               ; preds = %82
  %98 = load i64, i64* %9, align 8
  %99 = load i32, i32* @LUA_IDSIZE, align 4
  %100 = sub nsw i32 %99, 15
  %101 = sext i32 %100 to i64
  %102 = icmp ugt i64 %98, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load i32, i32* @LUA_IDSIZE, align 4
  %105 = sub nsw i32 %104, 15
  %106 = sext i32 %105 to i64
  store i64 %106, i64* %9, align 8
  br label %107

107:                                              ; preds = %103, %97
  %108 = load i8*, i8** %4, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = load i64, i64* %9, align 8
  %111 = call i32 @strncpy(i8* %108, i8* %109, i64 %110)
  %112 = load i64, i64* %9, align 8
  %113 = load i8*, i8** %4, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 %112
  store i8* %114, i8** %4, align 8
  %115 = load i8*, i8** %4, align 8
  %116 = call i32 @strcpy(i8* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %117 = load i8*, i8** %4, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 3
  store i8* %118, i8** %4, align 8
  br label %126

119:                                              ; preds = %82
  %120 = load i8*, i8** %4, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = call i32 @strcpy(i8* %120, i8* %121)
  %123 = load i64, i64* %9, align 8
  %124 = load i8*, i8** %4, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 %123
  store i8* %125, i8** %4, align 8
  br label %126

126:                                              ; preds = %119, %107
  %127 = load i8*, i8** %4, align 8
  %128 = load i32, i32* %6, align 4
  %129 = icmp eq i32 %128, -1
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %132 = call i32 @strcpy(i8* %127, i8* %131)
  br label %133

133:                                              ; preds = %126, %59
  br label %134

134:                                              ; preds = %133, %16
  ret void
}

declare dso_local i8* @strdata(%struct.TYPE_4__*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

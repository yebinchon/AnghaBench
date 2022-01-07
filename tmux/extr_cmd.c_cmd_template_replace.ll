; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd.c_cmd_template_replace.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd.c_cmd_template_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.cmd_template_replace.quote = private unnamed_addr constant [5 x i8] c"\22\\$;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cmd_template_replace(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [5 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = bitcast [5 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.cmd_template_replace.quote, i32 0, i32 0), i64 5, i1 false)
  %17 = load i8*, i8** %5, align 8
  %18 = call i32* @strchr(i8* %17, i8 signext 37)
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* @xstrdup(i8* %21)
  store i8* %22, i8** %4, align 8
  br label %136

23:                                               ; preds = %3
  %24 = call i8* @xmalloc(i32 1)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  store i8 0, i8* %25, align 1
  store i64 0, i64* %15, align 8
  store i32 0, i32* %13, align 4
  %26 = load i8*, i8** %5, align 8
  store i8* %26, i8** %10, align 8
  br label %27

27:                                               ; preds = %121, %117, %23
  %28 = load i8*, i8** %10, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %134

32:                                               ; preds = %27
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %10, align 8
  %35 = load i8, i8* %33, align 1
  store i8 %35, i8* %8, align 1
  %36 = sext i8 %35 to i32
  switch i32 %36, label %121 [
    i32 37, label %37
  ]

37:                                               ; preds = %32
  %38 = load i8*, i8** %10, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp slt i32 %40, 49
  br i1 %41, label %54, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %10, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp sgt i32 %45, 57
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %10, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = sub nsw i32 %50, 48
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %47, %42, %37
  %55 = load i8*, i8** %10, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 37
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %54
  br label %121

63:                                               ; preds = %59
  store i32 1, i32* %13, align 4
  br label %64

64:                                               ; preds = %63, %47
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %10, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 37
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %10, align 8
  br label %77

77:                                               ; preds = %74, %64
  %78 = load i8*, i8** %9, align 8
  %79 = load i64, i64* %15, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @strlen(i8* %80)
  %82 = mul nsw i32 %81, 3
  %83 = sext i32 %82 to i64
  %84 = add i64 %79, %83
  %85 = add i64 %84, 1
  %86 = call i8* @xrealloc(i8* %78, i64 %85)
  store i8* %86, i8** %9, align 8
  %87 = load i8*, i8** %6, align 8
  store i8* %87, i8** %11, align 8
  br label %88

88:                                               ; preds = %114, %77
  %89 = load i8*, i8** %11, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %117

93:                                               ; preds = %88
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %98 = load i8*, i8** %11, align 8
  %99 = load i8, i8* %98, align 1
  %100 = call i32* @strchr(i8* %97, i8 signext %99)
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load i8*, i8** %9, align 8
  %104 = load i64, i64* %15, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %15, align 8
  %106 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8 92, i8* %106, align 1
  br label %107

107:                                              ; preds = %102, %96, %93
  %108 = load i8*, i8** %11, align 8
  %109 = load i8, i8* %108, align 1
  %110 = load i8*, i8** %9, align 8
  %111 = load i64, i64* %15, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %15, align 8
  %113 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8 %109, i8* %113, align 1
  br label %114

114:                                              ; preds = %107
  %115 = load i8*, i8** %11, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %11, align 8
  br label %88

117:                                              ; preds = %88
  %118 = load i8*, i8** %9, align 8
  %119 = load i64, i64* %15, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8 0, i8* %120, align 1
  br label %27

121:                                              ; preds = %32, %62
  %122 = load i8*, i8** %9, align 8
  %123 = load i64, i64* %15, align 8
  %124 = add i64 %123, 2
  %125 = call i8* @xrealloc(i8* %122, i64 %124)
  store i8* %125, i8** %9, align 8
  %126 = load i8, i8* %8, align 1
  %127 = load i8*, i8** %9, align 8
  %128 = load i64, i64* %15, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %15, align 8
  %130 = getelementptr inbounds i8, i8* %127, i64 %128
  store i8 %126, i8* %130, align 1
  %131 = load i8*, i8** %9, align 8
  %132 = load i64, i64* %15, align 8
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  store i8 0, i8* %133, align 1
  br label %27

134:                                              ; preds = %27
  %135 = load i8*, i8** %9, align 8
  store i8* %135, i8** %4, align 8
  br label %136

136:                                              ; preds = %134, %20
  %137 = load i8*, i8** %4, align 8
  ret i8* %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i8* @xmalloc(i32) #2

declare dso_local i8* @xrealloc(i8*, i64) #2

declare dso_local i32 @strlen(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

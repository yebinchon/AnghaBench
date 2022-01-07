; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_gl_yank.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_gl_yank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gl_killbuf = common dso_local global i64* null, align 8
@gl_overwrite = common dso_local global i64 0, align 8
@gl_cnt = common dso_local global i32 0, align 4
@GL_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"\0A*** Error: getline(): input buffer overflow\0A\00", align 1
@gl_pos = common dso_local global i32 0, align 4
@gl_buf = common dso_local global i64* null, align 8
@gl_prompt = common dso_local global i32 0, align 4
@gl_extent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gl_yank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_yank() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64*, i64** @gl_killbuf, align 8
  %4 = call i64 @strlen(i64* %3)
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %119

8:                                                ; preds = %0
  %9 = load i64, i64* @gl_overwrite, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %68

11:                                               ; preds = %8
  %12 = load i32, i32* @gl_cnt, align 4
  %13 = load i32, i32* %2, align 4
  %14 = add nsw i32 %12, %13
  %15 = load i32, i32* @GL_BUF_SIZE, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp sge i32 %14, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = call i32 @gl_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %11
  %21 = load i32, i32* @gl_cnt, align 4
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %38, %20
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @gl_pos, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = load i64*, i64** @gl_buf, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** @gl_buf, align 8
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %32, i64 %36
  store i64 %31, i64* %37, align 8
  br label %38

38:                                               ; preds = %26
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %1, align 4
  br label %22

41:                                               ; preds = %22
  store i32 0, i32* %1, align 4
  br label %42

42:                                               ; preds = %58, %41
  %43 = load i32, i32* %1, align 4
  %44 = load i32, i32* %2, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load i64*, i64** @gl_killbuf, align 8
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** @gl_buf, align 8
  %53 = load i32, i32* @gl_pos, align 4
  %54 = load i32, i32* %1, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %52, i64 %56
  store i64 %51, i64* %57, align 8
  br label %58

58:                                               ; preds = %46
  %59 = load i32, i32* %1, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %1, align 4
  br label %42

61:                                               ; preds = %42
  %62 = load i32, i32* @gl_prompt, align 4
  %63 = load i32, i32* @gl_pos, align 4
  %64 = load i32, i32* @gl_pos, align 4
  %65 = load i32, i32* %2, align 4
  %66 = add nsw i32 %64, %65
  %67 = call i32 @gl_fixup(i32 %62, i32 %63, i32 %66)
  br label %118

68:                                               ; preds = %8
  %69 = load i32, i32* @gl_pos, align 4
  %70 = load i32, i32* %2, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* @gl_cnt, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %68
  %75 = load i32, i32* @gl_pos, align 4
  %76 = load i32, i32* %2, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* @GL_BUF_SIZE, align 4
  %79 = sub nsw i32 %78, 1
  %80 = icmp sge i32 %77, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = call i32 @gl_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %74
  %84 = load i64*, i64** @gl_buf, align 8
  %85 = load i32, i32* @gl_pos, align 4
  %86 = load i32, i32* %2, align 4
  %87 = add nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %84, i64 %88
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %83, %68
  store i32 0, i32* %1, align 4
  br label %91

91:                                               ; preds = %107, %90
  %92 = load i32, i32* %1, align 4
  %93 = load i32, i32* %2, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %91
  %96 = load i64*, i64** @gl_killbuf, align 8
  %97 = load i32, i32* %1, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i64*, i64** @gl_buf, align 8
  %102 = load i32, i32* @gl_pos, align 4
  %103 = load i32, i32* %1, align 4
  %104 = add nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %101, i64 %105
  store i64 %100, i64* %106, align 8
  br label %107

107:                                              ; preds = %95
  %108 = load i32, i32* %1, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %1, align 4
  br label %91

110:                                              ; preds = %91
  %111 = load i32, i32* %2, align 4
  store i32 %111, i32* @gl_extent, align 4
  %112 = load i32, i32* @gl_prompt, align 4
  %113 = load i32, i32* @gl_pos, align 4
  %114 = load i32, i32* @gl_pos, align 4
  %115 = load i32, i32* %2, align 4
  %116 = add nsw i32 %114, %115
  %117 = call i32 @gl_fixup(i32 %112, i32 %113, i32 %116)
  br label %118

118:                                              ; preds = %110, %61
  br label %121

119:                                              ; preds = %0
  %120 = call i32 (...) @gl_beep()
  br label %121

121:                                              ; preds = %119, %118
  ret void
}

declare dso_local i64 @strlen(i64*) #1

declare dso_local i32 @gl_error(i8*) #1

declare dso_local i32 @gl_fixup(i32, i32, i32) #1

declare dso_local i32 @gl_beep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

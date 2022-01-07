; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_gl_addchar.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_gl_addchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gl_cnt = common dso_local global i32 0, align 4
@GL_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"\0A*** Error: getline(): input buffer overflow\0A\00", align 1
@gl_overwrite = common dso_local global i64 0, align 8
@gl_pos = common dso_local global i32 0, align 4
@gl_buf = common dso_local global i8* null, align 8
@gl_prompt = common dso_local global i32 0, align 4
@gl_extent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @gl_addchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_addchar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @gl_cnt, align 4
  %5 = load i32, i32* @GL_BUF_SIZE, align 4
  %6 = sub nsw i32 %5, 1
  %7 = icmp sge i32 %4, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @gl_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i64, i64* @gl_overwrite, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @gl_pos, align 4
  %15 = load i32, i32* @gl_cnt, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %13, %10
  %18 = load i32, i32* @gl_cnt, align 4
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %34, %17
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @gl_pos, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load i8*, i8** @gl_buf, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = load i8*, i8** @gl_buf, align 8
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  store i8 %28, i8* %33, align 1
  br label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %3, align 4
  br label %19

37:                                               ; preds = %19
  %38 = load i32, i32* %2, align 4
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** @gl_buf, align 8
  %41 = load i32, i32* @gl_pos, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 %39, i8* %43, align 1
  %44 = load i32, i32* @gl_prompt, align 4
  %45 = load i32, i32* @gl_pos, align 4
  %46 = load i32, i32* @gl_pos, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i32 @gl_fixup(i32 %44, i32 %45, i32 %47)
  br label %61

49:                                               ; preds = %13
  %50 = load i32, i32* %2, align 4
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** @gl_buf, align 8
  %53 = load i32, i32* @gl_pos, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8 %51, i8* %55, align 1
  store i32 1, i32* @gl_extent, align 4
  %56 = load i32, i32* @gl_prompt, align 4
  %57 = load i32, i32* @gl_pos, align 4
  %58 = load i32, i32* @gl_pos, align 4
  %59 = add nsw i32 %58, 1
  %60 = call i32 @gl_fixup(i32 %56, i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %49, %37
  ret void
}

declare dso_local i32 @gl_error(i8*) #1

declare dso_local i32 @gl_fixup(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

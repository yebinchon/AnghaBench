; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_gl_transpose.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_gl_transpose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gl_pos = common dso_local global i32 0, align 4
@gl_cnt = common dso_local global i32 0, align 4
@gl_buf = common dso_local global i32* null, align 8
@gl_extent = common dso_local global i32 0, align 4
@gl_prompt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gl_transpose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_transpose() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @gl_pos, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %37

4:                                                ; preds = %0
  %5 = load i32, i32* @gl_cnt, align 4
  %6 = load i32, i32* @gl_pos, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %37

8:                                                ; preds = %4
  %9 = load i32*, i32** @gl_buf, align 8
  %10 = load i32, i32* @gl_pos, align 4
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %1, align 4
  %15 = load i32*, i32** @gl_buf, align 8
  %16 = load i32, i32* @gl_pos, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** @gl_buf, align 8
  %21 = load i32, i32* @gl_pos, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32 %19, i32* %24, align 4
  %25 = load i32, i32* %1, align 4
  %26 = trunc i32 %25 to i8
  %27 = sext i8 %26 to i32
  %28 = load i32*, i32** @gl_buf, align 8
  %29 = load i32, i32* @gl_pos, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %27, i32* %31, align 4
  store i32 2, i32* @gl_extent, align 4
  %32 = load i32, i32* @gl_prompt, align 4
  %33 = load i32, i32* @gl_pos, align 4
  %34 = sub nsw i32 %33, 1
  %35 = load i32, i32* @gl_pos, align 4
  %36 = call i32 @gl_fixup(i32 %32, i32 %34, i32 %35)
  br label %39

37:                                               ; preds = %4, %0
  %38 = call i32 (...) @gl_beep()
  br label %39

39:                                               ; preds = %37, %8
  ret void
}

declare dso_local i32 @gl_fixup(i32, i32, i32) #1

declare dso_local i32 @gl_beep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
